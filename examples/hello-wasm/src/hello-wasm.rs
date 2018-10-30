#![no_main]

extern {
  fn print(index: *const u8, length: usize);
} 

#[no_mangle]
pub fn hello_wasm() {
  unsafe {
    print("Hello, world!".as_ptr(),13);
  }
}

#[no_mangle]
pub fn echo_string(s: String) {
  unsafe{
    print(s.as_ptr(),s.len());
  }
}