# 基于openresty的牛盾API网关核心
## 部署 Deployment
`http://openresty.org/cn/installation.html`  
使用官方网站介绍的方法，对openresty进行安装，在适当位置建立work目录。  
Follow the offical website guide and install openresty itself, make a work directory in the proper position.  
```
cd ~
git clone git@git.newdun.com:xinyizhou/openresty.git
cd openresty
```
配置php-fpm使之在nginx内部运行  
configure your php-fpm and make sure it running  
启动openresty  
Start your openresty  
```
PATH=/usr/local/openresty/nginx/sbin:$PATH
export PATH
nginx -p `pwd`/ -c conf/nginx.conf
```
尝试写一个PHP脚本  
try to write a test php file  
`vi /var/www/index.php`
```
<?php
echo "www.newdun.com";
```
访问运行中的openresty  
visit the running openresty  
`curl localhost:8080`
```
<!DOCTYPE html><html><head><meta http-equiv=Content-Type content="text/html; charset=utf-8"><meta name=description content=Newdun.com™专注于提供行业领先的互联网安全一站式服务，具备超强自主研发能力，已形成DNS、云服务、网络安全、融合通信、大数据、人工智能六大产品线，多位一体，助力创造透明、可信、安全的互联网生态。><meta name=author content=Newdun.com™>
·····················
```
