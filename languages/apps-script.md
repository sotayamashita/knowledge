# App Script

# 日本語

```javascript
// File > Project Properies > Script Properties
var scriptProp = PropertiesService.getScriptProperties().getProperties();
var TOKEN = scriptProp.TOKEN;
var SECRET = scriptProp.SECRET;
```

## HTTP

```javascript
UrlFetchApp.fetch(url, options);
```

Basic Authorization:

```javascript
var options = {
  "method": "get",
  "headers" : {
    "Authorization" : " Basic " + Utilities.base64Encode(username + ":" + password),
  },
};
```
