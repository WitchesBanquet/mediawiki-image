<?php

# 密钥
$wgSecretKey = getenv("MW_C_SECRET_KEY");

# 鉴权 Token 版本 (修改此项会导致所有用户登出)
$wgAuthenticationTokenVersion = getenv("MW_C_SECRET_AUTH_TOKEN_VERSION");

# 站点升级 Key
$wgUpgradeKey = getenv("MW_C_SECRET_UPGRADE_KEY");
