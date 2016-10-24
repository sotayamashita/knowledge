# One liner

* [English](#english)
* [日本語](#日本語)

# 日本語

> AWS での開発で使えるワンライナーのコード集です。いろいろなサイトから引用しているものも含まれます。また以下のワンライナーでは主に、[AWS CLI](https://aws.amazon.com/jp/cli/)、[jq](https://stedolan.github.io/jq/) や perl を使用しています。

#### 目次

* [ELB](#elb)

## ELB

**紐づいている InstanceId と status 取得**

```bash
$ aws --profile=${AWS profile} elb describe-instance-health --load-balancer-name ${ELBのLoad Balancer Name} | jq -r '.InstanceStates[]|{InstanceId, State}'
```

**IPアドレスリスト取得**

```bash
$ aws --profile=${AWS profile} ec2 describe-network-interfaces --filters "Name=description,Values=ELB ${ELBのLoad Balancer Name}" | jq -r '.NetworkInterfaces[] | .Association.PublicIp'
```
