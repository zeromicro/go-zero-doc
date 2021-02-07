# 常见错误处理
* 错误一:

  ```golang
  pb/xx.pb.go:220:7: undefined: grpc.ClientConnInterface
  pb/xx.pb.go:224:11: undefined: grpc.SupportPackageIsVersion6
  pb/xx.pb.go:234:5: undefined: grpc.ClientConnInterface
  pb/xx.pb.go:237:24: undefined: grpc.ClientConnInterface
  ```

  解决方法：请将`protoc-gen-go`版本降至v1.3.2及一下

* 错误二:

  ```golang

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

    ```golang
    replace google.golang.org/grpc => google.golang.org/grpc v1.29.1
    ```