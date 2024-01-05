GOROOT=${PWD}/go
GOFIB=${PWD}/gofib
ZKGO=$GOROOT/bin/zkgo
ZKWAM=${PWD}/zkWasm

# git submodule update --init

# cd $GOROOT/src
# ./all.bash
# mv $GOROOT/bin/go $GOROOT/bin/zkgo

# export GOROOT=${GOROOT}
# cd $GOFIB
# GO111MODULE=off GOOS=wasip1 GOARCH=wasm $ZKGO build -gcflags=all=-d=softfloat -o main.wasm main.go 

cd $ZKWAM
rm  *.json
# git submodule update --init --recursive

# cargo run  --release -- --function zkmain -k 22 -w ../gofib/main.wasm -o ./output setup
RUST_BACKTRACE=1 cargo run  --release -- --function zkmain -k 22 -w ../gofib/main.wasm -o ./output single-prove