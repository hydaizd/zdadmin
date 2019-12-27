package jwt

import (
	"errors"
	"github.com/dgrijalva/jwt-go"
	"github.com/gin-gonic/gin"
	"time"
)

type JWT struct {
	jwtSecret []byte
}

var (
	tokenExpired     = errors.New("Token is expired")
	tokenNotValidYet = errors.New("Token not active yet")
	tokenMalformed   = errors.New("That's not even a token")
	tokenInvalid     = errors.New("Couldn't handle this token:")
	signKey          = "yEDjFhUXMk7HzbdR4dmx"
)

// 自定义结构体参数
type CustomClaims struct {
	UserId   int    `json:"user_id"`
	Username string `json:"username"`
	jwt.StandardClaims
}

func NewJWT() *JWT {
	return &JWT{
		[]byte(getSignKey()),
	}
}

func SetSignKey(key string) string {
	signKey = key

	return signKey
}

func getSignKey() string {
	return signKey
}

// 解析token
func (j *JWT) ParseToken(tokenString string) (*CustomClaims, error) {
	tokenClaims, err := jwt.ParseWithClaims(tokenString, &CustomClaims{}, func(token *jwt.Token) (interface{}, error) {
		return j.jwtSecret, nil
	})
	if err != nil {
		if ve, ok := err.(*jwt.ValidationError); ok {
			if ve.Errors&jwt.ValidationErrorMalformed != 0 {
				return nil, tokenMalformed
			} else if ve.Errors&jwt.ValidationErrorExpired != 0 {
				return nil, tokenExpired
			} else if ve.Errors&jwt.ValidationErrorNotValidYet != 0 {
				return nil, tokenNotValidYet
			}
		}
		return nil, tokenInvalid
	}
	if claims, ok := tokenClaims.Claims.(*CustomClaims); ok && tokenClaims.Valid {
		return claims, nil
	}
	return nil, tokenInvalid
}

// 刷新token
func (j *JWT) RefreshToken(tokenString string) (string, error) {
	jwt.TimeFunc = func() time.Time {
		return time.Unix(0, 0)
	}
	tokenClaims, err := jwt.ParseWithClaims(tokenString, &CustomClaims{}, func(token *jwt.Token) (interface{}, error) {
		return j.jwtSecret, nil
	})
	if err != nil {
		return "", err
	}
	if claims, ok := tokenClaims.Claims.(*CustomClaims); ok && tokenClaims.Valid {
		jwt.TimeFunc = time.Now
		claims.StandardClaims.ExpiresAt = time.Now().Add(1 * time.Hour).Unix()
		return j.CreateToken(claims.UserId, claims.Username)
	}
	return "", tokenInvalid
}

// 创建token
func (j *JWT) CreateToken(userId int, username string) (string, error) {
	expireTime := time.Now().Add(24 * 7 * time.Hour) // 7Days
	claims := CustomClaims{
		userId,
		username,
		jwt.StandardClaims{
			ExpiresAt: expireTime.Unix(),
		},
	}
	tokenClaims := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return tokenClaims.SignedString(j.jwtSecret)
}

// 获取登录用户ID
func GetUserId(c *gin.Context) int {
	token := c.GetHeader("token")
	if token == "" {
		return 0
	}
	jwtObj := NewJWT()
	claims, _ := jwtObj.ParseToken(token)
	return claims.UserId
}
