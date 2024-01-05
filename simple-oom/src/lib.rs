use wasm_bindgen::prelude::*;

extern "C" {
    pub fn wasm_input(is_public: u32) -> u64;
    pub fn require(cond: bool);
}

#[wasm_bindgen]
pub fn zkmain() {
    unsafe {
        let _result = fibonacci(40<<20 as u32);
    }
}

pub fn fibonacci(n: u32) -> u64 {
    let mut f0 = 0u64;
    let mut f1 = 1u64;
    for _ in 0..n {
        let f2 = f0 + &f1;
        f0 = f1;
        f1 = f2;
    }
    f0
}