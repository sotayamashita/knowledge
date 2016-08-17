# Debug

## Find bottlenecks

```php
function debug_time(){

    $debug = current(debug_backtrace());

    static $start_time = 0;
    static $pre_debug = null;
    static $pre_time = 0;

    $time = microtime(true);
    if(!$start_time) $start_time = $time;

    if($pre_time){
        echo sprintf('<div>[%s(%d) - %s(%d)]: %d ms(ttl:%d ms)</div>', 
            basename($pre_debug['file']), $pre_debug['line'],
            basename($debug['file']), $debug['line'],
            ($time * 1000 - $pre_time * 1000),
            ($time * 1000 - $start_time * 1000)
        );
    }

    $pre_debug = $debug;
    $pre_time = $time;
}
```

