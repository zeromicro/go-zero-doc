# Error
> [!TIP]
> This document is machine-translated by Google. If you find grammatical and semantic errors, and the document description is not clear, please [PR](doc-contibute.md)

## grpc error
* Case 1:

  ```text
  pb/xx.pb.go:220:7: undefined: grpc.ClientConnInterface
  pb/xx.pb.go:224:11: undefined: grpc.SupportPackageIsVersion6
  pb/xx.pb.go:234:5: undefined: grpc.ClientConnInterface
  pb/xx.pb.go:237:24: undefined: grpc.ClientConnInterface
  ```

  Solution: Please reduce the version of `protoc-gen-go` to v1.3.2 and below

* Case 2:

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

  Solution：

    ```text
    replace google.golang.org/grpc => google.golang.org/grpc v1.29.1
    ```
  
* Case 3
  ```text
  protoc-gen-go: unable to determine Go import path for "greet.proto"
  
  Please specify either:
  • a "go_package" option in the .proto source file, or
  • a "M" argument on the command line.
  
  See https://developers.google.com/protocol-buffers/docs/reference/go-generated#package for more information.
  
  --go_out: protoc-gen-go: Plugin failed with status code 1.
  
  ```
  Solution：
   ```text
   go get -u github.com/golang/protobuf/protoc-gen-go@v1.3.2
   ```
  
## protoc-gen-go installation failed
```text
go get github.com/golang/protobuf/protoc-gen-go: module github.com/golang/protobuf/protoc-gen-go: Get "https://proxy.golang.org/github.com/golang/protobuf/protoc-gen-go/@v/list": dial tcp 216.58.200.49:443: i/o timeout
```

Please make sure `GOPROXY` has been set, see [Go Module Configuration](gomod-config.md) for GOPROXY setting

## api service failed to start
```text
error: config file etc/user-api.yaml, error: type mismatch for field xx
```

Please confirm whether the configuration items in the `user-api.yaml` configuration file have been configured. If there are values, check whether the yaml configuration file conforms to the yaml format.

## command not found: goctl
```
command not found: goctl
```
Please make sure that goctl has been installed or whether goctl has been added to the environment variable