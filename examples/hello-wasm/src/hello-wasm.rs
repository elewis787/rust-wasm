#![no_main]


extern {
  // external function that has access to exported memoery 
  // this means, given the pointer address ( index ) and the length
  // we can locate the string that is stored in memory and print it through 
  // a host/native function
  fn print(index: *const u8, length: u32); 

} 

#[no_mangle]
pub fn hello_wasm() {
  unsafe {
    print("Hello, world!".as_ptr(),13); // creates a data segment holding "Hello, world!"
  }
}

#[no_mangle]
pub fn echo_string(s: String) {
  unsafe{
    print(s.as_ptr(),s.capacity() as u32); 
  }
}

#[no_mangle]
pub fn array()  {
  // Creates a data segment holding "Hello, world! from array"
  let x = "Hello, world! from array".as_bytes();  
  let y = String::from_utf8_lossy(x).to_string();
  unsafe {
    print(x.as_ptr(),x.len() as u32);
    echo_string(y);
  }
}