# NoviaLand Wiki Image

## 环境变量

| 变量名                         | 默认值                  | 说明               |
| ------------------------------ | ----------------------- | ------------------ |
| MW_C_DB_TYPE                   | mysql                   | 数据库类型         |
| MW_C_DB_SERVER                 | database:3306           | 数据库 Host        |
| MW_C_DB_NAME                   | mediawiki               | 数据库名           |
| MW_C_DB_USER                   | mediawiki               | 数据库用户         |
| MW_C_DB_PASSWD                 | dbpassword              | 数据库密码         |
| MW_C_MEMCACHED_SERVER          | memcached:11211         | MemCached 服务器   |
| MW_C_EMAIL_EMERGENCY_CONTACT   | admin@example.com       | 紧急邮件联系人     |
| MW_C_EMAIL_SENDER              | admin@example.com       | 邮件发送者         |
| MW_C_SMTP_ENABLE_AUTH          | true                    | SMTP 开启鉴权      |
| MW_C_SMTP_HOST                 | smtp.example.com        | SMTP Host          |
| MW_C_SMTP_PORT                 | 25                      | SMTP 端口          |
| MW_C_SMTP_USERNAME             | admin@example.com       | SMTP 鉴权用户名    |
| MW_C_SMTP_PASSWORD             | password                | SMTP 鉴权密码      |
| MW_C_OIDC_PROVIDER_URL         | https://sso.example.com | OIDC WellKnown     |
| MW_C_OIDC_CLIENT_ID            | id                      | OIDC ClientID      |
| MW_C_OIDC_CLIENT_SECRET        | secret                  | OIDC ClientSecret  |
| MW_C_SECRET_KEY                |                         | 64 Bit 密钥        |
| MW_C_SECRET_UPGRADE_KEY        |                         | 16 Bit Upgrade Key |
| MW_C_SECRET_AUTH_TOKEN_VERSION | 1                       | 鉴权 Token 版本    |
