# AWS

## Elastic Load Balancing (ELB)

### Analyzing Log Files

Syntax:

```
timestamp elb client:port backend:port request_processing_time backend_processing_time response_processing_time elb_status_code backend_status_code received_bytes sent_bytes "request" "user_agent" ssl_cipher ssl_protocol
```

Example:

```
2015-05-13T23:39:43.945958Z my-loadbalancer 192.168.131.39:2817 10.0.0.1:80 0.000073 0.001048 0.000057 200 200 0 29 "GET http://www.example.com:80/ HTTP/1.1" "curl/7.38.0" - -
```

* [Access Logs for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html)
* [ELBがアクセスログを出力できるようになりました！](http://dev.classmethod.jp/cloud/aws/elb-featured-accesslog/)
