# 常见错误处理

## grpc引起错误
* 错误一:

  ```text
  pb/xx.pb.go:220:7: undefined: grpc.ClientConnInterface
  pb/xx.pb.go:224:11: undefined: grpc.SupportPackageIsVersion6
  pb/xx.pb.go:234:5: undefined: grpc.ClientConnInterface
  pb/xx.pb.go:237:24: undefined: grpc.ClientConnInterface
  ```

  解决方法：请将`protoc-gen-go`版本降至v1.3.2及一下

* 错误二:

  ```text

  # go.etcd.io/etcd/clientv3/balancer/picker
  ../../../go/pkg/mod/go.etcd.io/etcd@v0.0.0-20200402134248-51bdeb39e698/clientv3/balancer/picker/err.go:25:9: cannot use &errPicker literal (type *errPicker) as type Picker in return argument:*errPicker does not implement Picker (wrong type for Pick method)
    have Pick(context.Context, balancer.PickInfo) (balancer.SubConn, func(balancer.DoneInfo), error)
    want Pick(balancer.PickInfo) (balancer.PickResult, error)
    ../../../go/pkg/mod/go.etcd.io/etcd@v0.0.0-20200402134248-51bdeb39e698/clientv3/balancer/picker/roundrobin_balanced.go:33:9: cannot use &rrBalanced literal (type *rrBalanced) as type Picker in return argument:
    *rrBalanced does not implement Picker (wrong type for Pick method)
		have Pick(context.Context, balancer.PickInfo) (balancer.SubConn, func(balancer.DoneInfo), error)
    want Pick(balancer.PickInfo) (balancer.PickResult, error)
    #github.com/tal-tech/go-zero/zrpc/internal/balancer/p2c
    ../../../go/pkg/mod/github.com/tal-tech/go-zero@v1.0.12/zrpc/internal/balancer/p2c/p2c.go:41:32: not enough arguments in call to base.NewBalancerBuilder
	have (string, *p2cPickerBuilder)
  want (string, base.PickerBuilder, base.Config)
  ../../../go/pkg/mod/github.com/tal-tech/go-zero@v1.0.12/zrpc/internal/balancer/p2c/p2c.go:58:9: cannot use &p2cPicker literal (type *p2cPicker) as type balancer.Picker in return argument:
	*p2cPicker does not implement balancer.Picker (wrong type for Pick method)
		have Pick(context.Context, balancer.PickInfo) (balancer.SubConn, func(balancer.DoneInfo), error)
		want Pick(balancer.PickInfo) (balancer.PickResult, error)
  ```

  解决方法：

    ```text
    replace google.golang.org/grpc => google.golang.org/grpc v1.29.1
    ```
  
* 错误三
  ```text
  protoc-gen-go: unable to determine Go import path for "greet.proto"
  
  Please specify either:
  • a "go_package" option in the .proto source file, or
  • a "M" argument on the command line.
  
  See https://developers.google.com/protocol-buffers/docs/reference/go-generated#package for more information.
  
  --go_out: protoc-gen-go: Plugin failed with status code 1.
  
  ```
   解决方法：
   ```text
   go get -u github.com/golang/protobuf/protoc-gen-go@v1.3.2
   ```
  
## protoc-gen-go安装失败
```text
go get github.com/golang/protobuf/protoc-gen-go: module github.com/golang/protobuf/protoc-gen-go: Get "https://proxy.golang.org/github.com/golang/protobuf/protoc-gen-go/@v/list": dial tcp 216.58.200.49:443: i/o timeout
```

请确认`GOPROXY`已经设置,GOPROXY设置见[go module配置](gomod-config.md)

## api服务启动失败
```text
error: config file etc/user-api.yaml, error: type mismatch for field xx
```

请确认`user-api.yaml`配置文件中配置项是否已经配置，如果有值，检查一下yaml配置文件是否符合yaml格式。

## goctl找不到
```
command not found: goctl
```
请确保goctl已经安装或者goctl是否已经添加到环境变量