#!/bin/bash

# 检测tcpdump、dig是否安装

# 配置网络，生成IP组合

if [ -z "$1" ]; then
  echo "Please given a folder name."
  exit 1
fi

base_dir="./bind9/config/"
folder_name=$1
folder_name="${base_dir}${folder_name}"
mkdir -p "$folder_name/db"
touch "$folder_name/named.conf.zones"
touch "$folder_name/named.conf.options"
# 判断域名服务器的类型
# ln -s /path/to/source/named.conf.options "$folder_name/named.conf.options"

# 1. 创建一个新的权威服务器，类型名 + 编号
# 创建named.conf.zones文件
# 创建db文件夹


# 2. 创建多个权威服务器，多个递归解析器

  
# 3. 启动/关闭bind9/powerdns/unbound/monitor


# 4. 同时向单/多个解析器dig，随机选一个


# 5. 抓包tcpdump


# 6. zones的conf文件生成

