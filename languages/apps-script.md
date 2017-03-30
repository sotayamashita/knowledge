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

## Add updated date

```
function insertLastUpdated() {
  var sheet = SpreadsheetApp.getActiveSheet();
  var currentRow = sheet.getActiveCell().getRow();
  if(currentRow>1){
    sheet.getRange('G' + currentRow).setValue('最終更新: ' + Utilities.formatDate(new Date(), 'JST', 'yyyy年MM月dd日HH時mm分ss秒') + ' by ' + Session.getActiveUser().getEmail());
  }
}
```
