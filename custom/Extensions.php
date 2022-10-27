<?php

# TemplateWizard
wfLoadExtension('TemplateWizard');

# OpenIDConnect
wfLoadExtension('OpenIDConnect');

# PluggableAuth
wfLoadExtension('PluggableAuth');
$wgPluggableAuth_EnableLocalLogin = true;
$wgPluggableAuth_Config[] = [
    'plugin' => 'OpenIDConnect',
    'buttonLabelMessage' => 'Alisa Lab',
    'data' => [
        'providerURL' => getenv("MW_C_OIDC_PROVIDER_URL"),
        'clientID' => getenv("MW_C_OIDC_CLIENT_ID"),
        'clientsecret' => getenv("MW_C_OIDC_CLIENT_SECRET"),
        'scope' => [
          'openid', 'profile', 'email'
        ],
        'preferred_username' => 'preferred_username'
    ]
];

# EasyTimeline
wfLoadExtension('timeline');
putenv("GDFONTPATH=/usr/share/fonts/truetype/freefont");

# Capiunto
wfLoadExtension('Capiunto');

# DynamicPageList3
wfLoadExtension('DynamicPageList3');

# SubPageList3
wfLoadExtension('SubPageList3');

# LabeledSectionTransclusion
wfLoadExtension('LabeledSectionTransclusion');
