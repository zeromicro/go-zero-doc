# 单体服务

## 前言
由于go-zero集成了web/rpc于一体，社区有部分小伙伴会问我，go-zero的定位是否是一款微服务框架，
答案是否定的，go-zero虽然集众多功能于一身，但你可以将其中任何一个功能独立出来去单独使用，也可以开发单体服务，
不是说每个服务上来就一定要采用微服务的架构的设计，这点大家可以看看作者(kevin)的第四期[开源说](https://www.bilibili.com/video/BV1Jy4y127Xu) ，其中对此有详细的讲解。

## 创建greet服务
```shell
$ goctl api new greet
```
```text
Done.
```

查看一下`greet`服务的结构
```shell
$ cd greet
$ tree
```
```text
.
├── etc
│   └── greet-api.yaml
├── go.mod
├── greet.api
├── greet.go
└── internal
    ├── config
    │   └── config.go
    ├── handler
    │   ├── greethandler.go
    │   └── routes.go
    ├── logic
    │   └── greetlogic.go
    ├── svc
    │   └── servicecontext.go
    └── types
        └── types.go
```
由以上目录结构可以观察到，`greet`服务虽小，但"五脏俱全"。接下来我们就可以再`greetlogic.go`中编写业务代码了。

# 猜你想看
* [goctl使用说明](goctl.md)
* [api目录结构介绍](api-dir.md)
* [api语法](api-grammar.md)
* [api配置文件介绍](api-config.md)
* [api中间件使用](middleware.md)



