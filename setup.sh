#!/bin/bash

# 更新 APT 源
apt update

# 安装必要包
apt install -y zip unzip ploticus fonts-freefont-ttf

# 安装 Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 获取插件
cd /var/www/html/extensions

git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/TemplateWizard --branch REL1_38 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/PluggableAuth --branch REL1_38 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/OpenIDConnect --branch REL1_38 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/timeline --branch REL1_38 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/Capiunto --branch REL1_38 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/LabeledSectionTransclusion --branch REL1_38 --single-branch
git clone https://gerrit.wikimedia.org:29418/mediawiki/extensions/SubPageList3 --branch REL1_38 --single-branch
git clone https://github.com/Universal-Omega/DynamicPageList3 --branch REL1_38 --single-branch

# EasyTimeline 文件夹
mkdir /var/www/html/images/timeline
chown www-data /var/www/html/images/timeline

# 移除不必要的 APT 资源
apt purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
rm -rf /var/lib/apt/lists/*

# 更新 PHP 包
cd /var/www/html
composer update
