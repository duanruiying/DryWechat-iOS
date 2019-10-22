# DryWechat-iOS
iOS: 微信功能简化(登录、支付、分享、打开小程序)
[微信开放平台](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=1417694084&token=&lang=zh_CN)

## Prerequisites
* iOS 10.0+
* ObjC

## Installation
* pod 'DryWechat-iOS'
* Targets => Info => URL Types添加scheme( identifier:"weixin"、URL Schemes:"wx+AppID" )
* info.plist文件属性LSApplicationQueriesSchemes中增加weixin、wechat、weixinULAPI字段

## Features
1. 注册客户端
2. 获取授权(登录)
3. 获取用户信息
4. 支付
5. 分享文本
6. 打开小程序
