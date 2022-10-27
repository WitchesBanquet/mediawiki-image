<?php

# 开启邮件 系统/用户
$wgEnableEmail = true;
$wgEnableUserEmail = false;

# 允许 HTML 邮件
$wgAllowHTMLEmail = true;

# 紧急联系人
$wgEmergencyContact = getenv("MW_C_EMAIL_EMERGENCY_CONTACT");

# 用户邮件通知
$wgEnotifUserTalk = false;
$wgEnotifWatchlist = false;

# 邮件发送者
$wgPasswordSender = getenv("MW_C_EMAIL_SENDER");

# 邮件鉴权
$wgEmailAuthentication = true;

$c_smtp_auth = getenv("MW_C_SMTP_ENABLE_AUTH") == "true";

# 邮件服务器
$wgSMTP = [
    'host'     => getenv("MW_C_SMTP_HOST"),
    'port'     => getenv("MW_C_SMTP_PORT") + 0,
    'auth'     => $c_smtp_auth,
    'username' => $c_smtp_auth ? getenv("MW_C_SMTP_USERNAME") : "",
    'password' => $c_smtp_auth ? getenv("MW_C_SMTP_PASSWORD") : ""
];
