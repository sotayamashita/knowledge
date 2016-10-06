# Ready and Load

```javascript
(function() {
  //
}());
```

```javascript
$(function() {
  //
});
```

```javascript
$(document).ready(function() {
  //
})
```

```javascript
$(window).load(function() {
  //
})
```

```javascript
var everythingLoaded = setInterval(function() {
  if (/loaded|complete/.test(document.readyState)) {
    clearInterval(everythingLoaded);
    //
  }
}, 10);
```
