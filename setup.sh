#!/bin/bash

# 更新 APT 源
apt update

# 安装必要包
apt install -y zip unzip ploticus fonts-freefont-ttf

# 安装 Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 获取插件
cd /var/www/html/extensions

git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/UploadWizard --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/TemplateWizard --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/PluggableAuth --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/LDAPProvider --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/LDAPAuthentication2 --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/LDAPAuthorization --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/LDAPUserInfo --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/LDAPGroups --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/timeline --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/Capiunto --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/LabeledSectionTransclusion --branch REL1_39 --single-branch
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/SubPageList3 --branch REL1_39 --single-branch
git clone https://github.com/edwardspec/mediawiki-aws-s3 --branch master --single-branch AWS

# EasyTimeline 文件夹
mkdir /var/www/html/images/timeline
chown www-data /var/www/html/images/timeline

# 更新 PHP 包
cd /var/www/html
composer update

# 更改权限
chown -R www-data:www-data /var/www/html/extensions
