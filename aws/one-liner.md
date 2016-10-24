# One liner

* [English](#english)
* [日本語](#日本語)

# 日本語

> AWS での開発で使えるワンライナーのコード集です。いろいろなサイトから引用しているものも含まれます。また以下のワンライナーでは主に、[AWS CLI](https://aws.amazon.com/jp/cli/)、[jq](https://stedolan.github.io/jq/) や perl を使用しています。

#### 目次

* [ELB](#elb)

## ELB

**紐づいている InstanceId と State 取得**

```bash
$ aws --profile=${AWS profile} elb describe-instance-health --load-balancer-name ${ELBのLoad Balancer Name} | jq -r '.InstanceStates[]|{InstanceId, State}'
```

**IPアドレスリスト取得**

```bash
$ aws --profile=${AWS profile} ec2 describe-network-interfaces --filters "Name=description,Values=ELB ${ELBのLoad Balancer Name}" | jq -r '.NetworkInterfaces[] | .Association.PublicIp'
```


- http://qiita.com/takachan/items/421928dc61c51af97fb1
- https://cloudonaut.io/6-tips-and-tricks-for-aws-command-line-ninjas/
- http://cloudacademy.com/blog/aws-cli-10-useful-commands/
- http://qiita.com/toshiro3/items/37821bdcc50c8b6d06dc
