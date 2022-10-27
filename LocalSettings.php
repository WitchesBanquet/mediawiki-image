<?php
if (!defined('MEDIAWIKI')) {
    exit;
}

# Telemetry
$wgPingback = false;

# Shell UTF-8 Locale
$wgShellLocale = "C.UTF-8";

# 站点语言
$wgLanguageCode = "zh-cn";

# GNU diff3
$wgDiff3 = "/usr/bin/diff3";

# 邮件
require_once("./config/Email.php");

# 图片
require_once("./config/Image.php");

# 数据库
require_once("./config/Database.php");

# 密钥
require_once("./config/Secret.php");

# 缓存
require_once("./config/Cache.php");

# 默认插件
require_once("./config/DefaultExtensions.php");

# 自定义
require_once("./custom/Customization.php");
require_once("./custom/Permission.php");
require_once("./custom/Extensions.php");
require_once("./custom/Skins.php");
