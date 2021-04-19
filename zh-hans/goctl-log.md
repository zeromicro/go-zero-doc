# goctl开发日志

## v1.1.4（2021-01-18）
* 使用g4替代传统api语法解析
* 优化解析报错line，column准确定位
* bug修复

## v1.1.0（2020-12-09）
* 增加api插件(`goctl api plugin`)支持
* 增加`goctl kube deploy`命令支持

## v1.0.29（2020-11-28）
* model增加interface生成，便于mock
* 优化文件命名参数`--style`命令

## v1.0.28（2020-11-19）
* 支持全局错误自定义`httpx.Error(...)`
* api语法中`struct`关键字可选
* `goctl rpc proto`增加`--style`命令
* `goctl` bug修复

## v1.0.27（2020-11-14）
* 优化api解析
* api语法增加单行注释(`//`)支持
* api支持import

## v1.0.26（2020-11-08）
* 增加`dockerfile`生成命令`goctl docker`支持
* 优化`goctl`


> [!TIP]
> 本节仅更新2020-11-08后的开发日志，对于比较陈旧的开发日志相见go-zero的[release](https://github.com/tal-tech/go-zero/releases)