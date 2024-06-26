module 0x9c564002970ce40370b0c1a8328d2e91924dab43ca2cb483af67aaf0f7cbe44e::u64 {
  
  use 0x9c564002970ce40370b0c1a8328d2e91924dab43ca2cb483af67aaf0f7cbe44e::u128;
  
  const U64_MAX: u128 = 18446744073709551615u128;
  
  const DIVIDE_BY_ZERO: u64 = 0;
  const OVER_FLOW: u64 = 1;
  
  public fun mul_div(a: u64, b: u64, c: u64): u64 {
    let a = (a as u128);
    let b = (b as u128);
    let c = (c as u128);
    let res = u128::mul_div(a, b, c);
    assert!(res <= U64_MAX, OVER_FLOW);
    (res as u64)
  }
}
