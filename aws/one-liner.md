# One liner

* [English](#english)
* [日本語](#日本語)

# 日本語

> AWS での開発で使えるワンライナーのコード集です。いろいろなサイトから引用しているものも含まれます。また以下のワンライナーでは主に、[AWS CLI](https://aws.amazon.com/jp/cli/)、[jq](https://stedolan.github.io/jq/) や perl を使用しています。

#### 目次

* [ELB](#elb)

## ELB

```bash
$ aws ec2 describe-network-interfaces --filters "Name=description,Values=<ELB ${ELBのLoad Balancer Name}>" | jq -r '.NetworkInterfaces[] | .Association.PublicIp' | sort
```
