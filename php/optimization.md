# Optimize performance and memory usage

* Use `array_*` instead of `loop` as far as possible. 


## Find bottlenecks

```php
$baseMemoryUsage = memory_get_usage();
$baseTime = microtime(true);

// procedure

$maxMemoryUsage = (memory_get_peak_usage() - $baseMemoryUsage) / (1024 * 1024);
$processTime = microtime(true) - $baseTime;

printf("Max Memory Usage : %.3f [MB]\n", $maxMemoryUsage);
printf("Process Time : %.2f [s]\n", $processTime);
```

```php
function debug_time(){

    $debug = current(debug_backtrace());

    static $start_time = 0;
    static $pre_debug = null;
    static $pre_time = 0;

    $time = microtime(true);
    if(!$start_time) {
        $start_time = $time;
    }

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

## References

* [The PHP Benchmark](http://www.phpbench.com/)
* http://we-love-php.blogspot.jp/2012/06/php-memory-consumption-with-arrays.html
* http://qiita.com/kkam0907/items/836c8977776453746455
