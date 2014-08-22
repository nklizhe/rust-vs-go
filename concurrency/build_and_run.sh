#!/bin/sh -e

# Build
mkdir -p bin
go build -o bin/hello1_go go/hello1/main.go
go build -o bin/hello2_go go/hello2/main.go
rustc -o bin/hello1_rust rust/hello1.rs
rustc -o bin/hello2_rust rust/hello2.rs

# Run

echo
echo "## Go"
echo "###   hello1:"
time bin/hello1_go > /tmp/hello1_go.out

echo
echo "###   hello2:"
time bin/hello2_go > /tmp/hello2_go.out

echo
echo "## Rust"
echo "###   hello1"
time bin/hello1_rust > /tmp/hello1_rust.out

echo
echo "###   hello2"
time bin/hello2_rust > /tmp/hello2_rust.out

echo
echo "## Ruby"
echo "###   hello1"
time ruby ruby/hello1.rb > /tmp/hello1_ruby.out

echo
echo "###   hello2"
time ruby ruby/hello2.rb > /tmp/hello2_ruby.out

