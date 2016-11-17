# Tomcat

```
Server version: Apache Tomcat/7.0.68
```

Tomcat はサーブレットコンテナ

## ログローテート

設定ファイルバリデーション：

```
logrotate -d /etc/logrotate.d/tomcat7
...
```

クーロン確認：

```
sudo /etc/init.d/crond status
crond (pid  xxxx) is running...
```

## ログの種類

- catalina.log メインログ
- catalina.out サーバ起動・停止、サービスの開始・停止ログ
- localhost.log hostに限定したログ
- host-manager.log   Tomcat host manager web app関係

http://tomcat.apache.org/tomcat-7.0-doc/logging.html
