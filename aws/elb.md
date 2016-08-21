# ELB (Elastic Load Balancing)

## 日本語

### アクセスログの解析

**考えられるエラー**

* HTTP 400: BAD_REQUEST
* HTTP 405: METHOD_NOT_ALLOWED
* HTTP 408: Request Timeout
* HTTP 502: Bad Gateway
* HTTP 503: Service Unavailable
* HTTP 504: Gateway Timeout

**アクセスログの場所**

構文：

```
bucket[/prefix]/AWSLogs/aws-account-id/elasticloadbalancing/region/yyyy/mm/dd/aws-account-id_elasticloadbalancing_region_load-balancer-name_end-time_ip-address_random-string.log
```

**アクセスログ**

構文：

```
timestamp elb client:port backend:port request_processing_time backend_processing_time response_processing_time elb_status_code backend_status_code received_bytes sent_bytes "request" "user_agent" ssl_cipher ssl_protocol
```
