ZKWAM=${PWD}/zkWasm
# git submodule update --init

cd simple-oom
# wasm-pack build --release

cd $ZKWAM
git checkout 4720809
rm -rf *.json
# git submodule update --init --recursive

# cargo run --release -- --function zkmain -k 22  -w ../simple-oom/pkg/simple_bg.wasm -o ./output setup
cargo run --release -- --function zkmain -k 22 -w ../simple-oom/pkg/simple_bg.wasm -o ./output single-prove