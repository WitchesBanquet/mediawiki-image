<?php

# 站点名称
$wgSitename = "诺维娅大陆";

# 服务器 URL
$wgServer = "https://wiki.karena.moe";

# Logo URL
$wgLogos = [
  '1x' => "$wgResourceBasePath/resources/assets/wiki.png"
];

# CC 许可证
$wgRightsPage = ""; # 许可证页面标题
$wgRightsUrl = "https://creativecommons.org/licenses/by-nc-sa/4.0/";
$wgRightsText = "知识共享署名-非商业性使用-相同方式共享";
$wgRightsIcon = "$wgResourceBasePath/resources/assets/licenses/cc-by-nc-sa.png";

# 文件上传
$wgFileExtensions = array(
    'png', 'gif', 'jpg', 'jpeg',
    'tiff', 'bmp', 'svg',
    'docx', 'xlsx', 'pptx', 'pdf',
    'odt', 'ods', 'odp', 'odg',
    'ogg', 'oga', 'ogv'
);
