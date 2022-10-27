<?php

# 数据库设置
$wgDBtype = getenv("MW_C_DB_TYPE");
$wgDBserver = getenv("MW_C_DB_SERVER");
$wgDBname = getenv("MW_C_DB_NAME");
$wgDBuser = getenv("MW_C_DB_USER");
$wgDBpassword = getenv("MW_C_DB_PASSWD");

# [MySQL] 数据库前缀
$wgDBprefix = "";

# [MySQL] 表选项
$wgDBTableOptions = "ENGINE=InnoDB, DEFAULT CHARSET=binary";
