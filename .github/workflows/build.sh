#!/bin/bash
ACCESSTOKEN=$1
REPO="https://${ACCESSTOKEN}@github.com:zeromicro/go-zero.git"

# git 配置
echo "git基础配置"
git config --local user.name "anqiansong"
git config --local user.email "anqiansong@tal.com"

# 安装gitbook
echo "gitbook installing..."
npm install gitbook-cli -g
gitbook --version
gitbook install

# build
echo "gitbook building..."
gitbook build

# clone&push

mkdir ./doc
cd ./doc
echo $PWD
echo "document clone..."
git clone ${REPO}
cd go-zero
rm -rf ./*
cp -rf ../../_book/* .
git add ./*
git commit -m 'update document'
echo "document push..."
git push -f