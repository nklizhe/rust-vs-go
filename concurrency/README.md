# Concurrency

This tests compares Rust and Go on concurrent code.

# Run Test
```
./build-and-run.sh
```

1. hello1 creates 10 concurrent rountines and print hello to the stdout
2. hello2 creates 1000 concurrent routines and print hello to the stdout

# Testing Result
|  # | Go  |  Rust | Ruby  |
|---|---|---|---|
|  10 | 0.23s  | 0.14s  | 0.170s   |
|  1000 | 0.21s  | 0.97s  | 14.895s  |

* Testing platform: Macbook Air (Late 2010). Processor: 2.13 GHz Intel Core 2 Duo, Memory: 4 GB 1067 MHz DDR3

# Conclusion

The result clearly shows that Go's `goroutine` is more lightweight and faster than Rust's `spawn` or Ruby's Thread.