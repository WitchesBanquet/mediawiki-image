<?php

# 缓存设置
$wgMainCacheType = CACHE_MEMCACHED;
$wgMemCachedServers = [
  getenv("MW_C_MEMCACHED_SERVER")
];
