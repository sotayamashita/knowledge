# ELB (Elastic Load Balancing)

* [日本語](#日本語)

## 日本語
> ELB について説明したものです。本家のドキュメントでも十分に情報があるので量が多くて場所がバラバラなので

#### 目次

- ELB とは
- ELB アーキテクチャ
- ELB エラー対応方法



### アクセスログの解析

#### 考えられるエラー

* HTTP 400: BAD_REQUEST
* HTTP 405: METHOD_NOT_ALLOWED
* HTTP 408: Request Timeout
* HTTP 502: Bad Gateway
* HTTP 503: Service Unavailable
* HTTP 504: Gateway Timeout

#### アクセスログの場所

構文：

```
bucket[/prefix]/AWSLogs/aws-account-id/elasticloadbalancing/region/yyyy/mm/dd/aws-account-id_elasticloadbalancing_region_load-balancer-name_end-time_ip-address_random-string.log
```

### アクセスログ

構文：

```
timestamp elb client:port backend:port request_processing_time backend_processing_time response_processing_time elb_status_code backend_status_code received_bytes sent_bytes "request" "user_agent" ssl_cipher ssl_protocol
```

#### 検索方法

ウェブ上：

<kbd>⌘F</kbd> ... ページ内検索 ` 504 `


* [Classic ロードバランサーのトラブルシューティングを行う: HTTP エラー](http://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/classic/ts-elb-error-message.html#ts-elb-errorcodes-http502)
* [Classic ロードバランサーのアクセスログ](http://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/classic/access-log-collection.html)
* https://aws.amazon.com/jp/premiumsupport/knowledge-center/elb-latency-troubleshooting/
* http://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/classic/ts-elb-healthcheck.html
* https://aws.amazon.com/jp/premiumsupport/knowledge-center/elb-connectivity-troubleshooting/
* http://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/userguide/what-is-load-balancing.html
* http://dev.classmethod.jp/cloud/aws/elb-and-cloudwatch-metrics-in-depth/
* http://qiita.com/iron-breaker/items/54bf469a4c17d4350f3b
* https://liginc.co.jp/189709
* https://www.kerstner.at/2014/08/503-error-back-end-server-capacity-amazon-web-services-elastic-load-balancer/
