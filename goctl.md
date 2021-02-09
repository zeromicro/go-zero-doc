# Goctl
goctl是go-zero微服务框架下的代码生成工具，其可以快速提升开发效率，让开发人员将时间重点放在业务coding上，其具体功能如下：
• api服务生成
• rpc服务生成
• model代码生成
• 模板管理
本节将包含一下小节
* [命令大全](goctl-commands.md)
* [api命令](goctl-api.md)
* [rpc命令](goctl-rpc.md)
* [model命令](goctl-model.md)
* [plugin命令](goctl-plugin.md)
* [其他命令](goctl-other.md)

## go C-T-L?
很多人会把goctl读作go-C-T-L,这种是错误的念法，正确念做go-control

## 版本查看
```shell
$  goctl -v
```

如果安装了goctl则会输出一下格式的文本信息
```text
goctl version ${version} ${os}/${arch}
```

输出示例
```text
goctl version xxxxxx darwin/amd64
```

版本号说明
* version：goctl 版本号
* os：当前操作系统名称
* arch： 当前系统架构名称

## goctl安装
### 方式一（go get）
```shell
$ GO111MODULE=on GOPROXY=https://goproxy.cn/,direct go get -u github.com/tal-tech/go-zero/tools/goctl
```

通过此命令可以将goctl工具安装到$GOPATH/bin目录下

### 方式二 （fork and build）
从go-zero拉取一份go-zero源码git@github.com:tal-tech/go-zero.git，进入goctl（tools/goctl/）目录下编译一下goctl文件，然后将其添加到环境变量中。
校验
安装完成后执行goctl -v如果输出版本信息则代表安装成功

```shell
$ goctl -v
```
```text
goctl version 1.1.4 darwin/amd64
```

## 常见问题
```
command not found: goctl
```
请确保goctl已经安装或者goctl是否已经添加到环境变量