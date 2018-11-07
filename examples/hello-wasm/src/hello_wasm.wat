(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "print" (func $print (type 0)))
  (func $__wasm_call_ctors (type 3))
  (func $hello_wasm (type 3)
    i32.const 1048576
    i32.const 13
    call $print)
  (func $echo_string (type 4) (param i32)
    (local i32)
    get_local 0
    i32.load
    tee_local 1
    get_local 0
    i32.const 4
    i32.add
    i32.load
    tee_local 0
    call $print
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      get_local 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $array (type 3)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 0
    set_global 0
    get_local 0
    i32.const 16
    i32.add
    i32.const 1048589
    i32.const 24
    call $alloc::string::String::from_utf8_lossy::h1c494a6ee8944829
    get_local 0
    get_local 0
    i32.load offset=20
    tee_local 1
    get_local 0
    i32.const 28
    i32.add
    i32.load
    get_local 0
    i32.const 24
    i32.add
    i32.load
    tee_local 2
    get_local 0
    i32.load offset=16
    tee_local 3
    i32.const 1
    i32.eq
    select
    call $alloc::str::_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$::to_owned::hc3cb9985c37e49aa
    block  ;; label = @1
      get_local 3
      i32.eqz
      br_if 0 (;@1;)
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      get_local 2
      i32.const 1
      call $__rust_dealloc
    end
    i32.const 1048589
    i32.const 24
    call $print
    get_local 0
    i32.load
    tee_local 3
    get_local 0
    i32.load offset=4
    tee_local 2
    call $print
    block  ;; label = @1
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 3
      get_local 2
      i32.const 1
      call $__rust_dealloc
    end
    get_local 0
    i32.const 32
    i32.add
    set_global 0)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $__rdl_alloc)
  (func $__rust_dealloc (type 5) (param i32 i32 i32)
    get_local 0
    get_local 1
    get_local 2
    call $__rdl_dealloc)
  (func $__rust_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    get_local 0
    get_local 1
    get_local 2
    get_local 3
    call $__rdl_realloc)
  (func $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::hfda03084d8dc0097__.llvm.980972024877358260_ (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 2
    set_local 4
    block  ;; label = @1
      get_local 0
      i32.load offset=4
      tee_local 5
      get_local 1
      i32.sub
      get_local 2
      i32.ge_u
      br_if 0 (;@1;)
      get_local 1
      get_local 2
      i32.add
      tee_local 2
      get_local 1
      i32.lt_u
      set_local 1
      block  ;; label = @2
        block  ;; label = @3
          get_local 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 4
          get_local 1
          br_if 2 (;@1;)
          get_local 5
          i32.const 1
          i32.shl
          tee_local 1
          get_local 2
          get_local 2
          get_local 1
          i32.lt_u
          select
          set_local 2
          br 1 (;@2;)
        end
        i32.const 0
        set_local 4
        get_local 1
        br_if 1 (;@1;)
      end
      i32.const 0
      set_local 4
      get_local 2
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 5
            i32.eqz
            br_if 0 (;@4;)
            get_local 0
            i32.load
            get_local 5
            i32.const 1
            get_local 2
            call $__rust_realloc
            tee_local 1
            i32.eqz
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          get_local 2
          i32.const 1
          call $__rust_alloc
          tee_local 1
          br_if 1 (;@2;)
        end
        get_local 2
        i32.const 1
        call $alloc::alloc::handle_alloc_error::hf00ae3c1f4b3ee29
        unreachable
      end
      get_local 0
      get_local 1
      i32.store
      get_local 0
      i32.const 4
      i32.add
      get_local 2
      i32.store
      i32.const 2
      set_local 4
    end
    get_local 4)
  (func $_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Debug$GT$::fmt::h1bcf1c3aefe3001c (type 2) (param i32 i32) (result i32)
    get_local 0
    i32.load
    set_local 0
    block  ;; label = @1
      get_local 1
      call $core::fmt::Formatter::debug_lower_hex::h8b36d437500bba99
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      call $core::fmt::num::_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$::fmt::h7b11fb9738467ec7
      return
    end
    block  ;; label = @1
      get_local 1
      call $core::fmt::Formatter::debug_upper_hex::he6cf234ec515ef11
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      call $core::fmt::num::_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$::fmt::hfdee81851d360dd9
      return
    end
    get_local 0
    get_local 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::hf62674be60b18fce)
  (func $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_char::hb627c71dfb6f8f88 (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 0
    i32.load
    set_local 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 1
                i32.const 128
                i32.ge_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  get_local 0
                  i32.load offset=8
                  tee_local 3
                  get_local 0
                  i32.load offset=4
                  i32.ne
                  br_if 0 (;@7;)
                  get_local 0
                  get_local 3
                  i32.const 1
                  i32.const 1
                  call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::hfda03084d8dc0097__.llvm.980972024877358260_
                  tee_local 3
                  i32.const 255
                  i32.and
                  i32.const 2
                  i32.ne
                  br_if 4 (;@3;)
                  get_local 0
                  i32.const 8
                  i32.add
                  i32.load
                  set_local 3
                end
                get_local 0
                i32.load
                get_local 3
                i32.add
                get_local 1
                i32.store8
                get_local 0
                i32.const 8
                i32.add
                tee_local 0
                get_local 0
                i32.load
                i32.const 1
                i32.add
                i32.store
                br 1 (;@5;)
              end
              get_local 2
              i32.const 0
              i32.store offset=12
              block  ;; label = @6
                block  ;; label = @7
                  get_local 1
                  i32.const 2048
                  i32.ge_u
                  br_if 0 (;@7;)
                  get_local 2
                  get_local 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  get_local 2
                  get_local 1
                  i32.const 6
                  i32.shr_u
                  i32.const 31
                  i32.and
                  i32.const 192
                  i32.or
                  i32.store8 offset=12
                  i32.const 2
                  set_local 1
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  get_local 1
                  i32.const 65535
                  i32.gt_u
                  br_if 0 (;@7;)
                  get_local 2
                  get_local 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  get_local 2
                  get_local 1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  get_local 2
                  get_local 1
                  i32.const 12
                  i32.shr_u
                  i32.const 15
                  i32.and
                  i32.const 224
                  i32.or
                  i32.store8 offset=12
                  i32.const 3
                  set_local 1
                  br 1 (;@6;)
                end
                get_local 2
                get_local 1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=12
                get_local 2
                get_local 1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=15
                get_local 2
                get_local 1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                get_local 2
                get_local 1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                i32.const 4
                set_local 1
              end
              get_local 0
              get_local 0
              i32.load offset=8
              get_local 1
              i32.const 1
              call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::hfda03084d8dc0097__.llvm.980972024877358260_
              tee_local 3
              i32.const 255
              i32.and
              i32.const 2
              i32.ne
              br_if 1 (;@4;)
              get_local 0
              i32.const 8
              i32.add
              tee_local 3
              get_local 3
              i32.load
              tee_local 3
              get_local 1
              i32.add
              i32.store
              get_local 3
              get_local 0
              i32.load
              i32.add
              get_local 1
              get_local 2
              i32.const 12
              i32.add
              get_local 1
              call $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h26f6782ca1a2c7f3
            end
            get_local 2
            i32.const 16
            i32.add
            set_global 0
            i32.const 0
            return
          end
          get_local 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          i32.const 1050384
          call $core::panicking::panic::haa57ffd51eb03b56
          unreachable
        end
        get_local 3
        i32.const 1
        i32.and
        br_if 1 (;@1;)
      end
      call $alloc::raw_vec::capacity_overflow::hae8ddae25c90ff9b
      unreachable
    end
    i32.const 1050384
    call $core::panicking::panic::haa57ffd51eb03b56
    unreachable)
  (func $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_fmt::h6dabbad18f4ed5e4 (type 2) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.load
    i32.store offset=4
    get_local 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    get_local 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    get_local 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    get_local 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    get_local 2
    get_local 1
    i64.load align=4
    i64.store offset=8
    get_local 2
    i32.const 4
    i32.add
    i32.const 1050408
    get_local 2
    i32.const 8
    i32.add
    call $core::fmt::write::h37a139dd53a36e04
    set_local 1
    get_local 2
    i32.const 32
    i32.add
    set_global 0
    get_local 1)
  (func $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_str::he1c6da0daa0f2a81 (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      i32.load
      tee_local 0
      get_local 0
      i32.load offset=8
      get_local 2
      i32.const 1
      call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::hfda03084d8dc0097__.llvm.980972024877358260_
      tee_local 3
      i32.const 255
      i32.and
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      get_local 0
      i32.const 8
      i32.add
      tee_local 3
      get_local 3
      i32.load
      tee_local 3
      get_local 2
      i32.add
      i32.store
      get_local 3
      get_local 0
      i32.load
      i32.add
      get_local 2
      get_local 1
      get_local 2
      call $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h26f6782ca1a2c7f3
      i32.const 0
      return
    end
    block  ;; label = @1
      get_local 3
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      call $alloc::raw_vec::capacity_overflow::hae8ddae25c90ff9b
      unreachable
    end
    i32.const 1050384
    call $core::panicking::panic::haa57ffd51eb03b56
    unreachable)
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h700b35d358872894 (type 7) (param i32) (result i64)
    i64.const 1023085410210596629)
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::he47910d926a5adc5 (type 7) (param i32) (result i64)
    i64.const 6658476391691125149)
  (func $core::ptr::drop_in_place::h174443354822c2ad (type 4) (param i32))
  (func $std::sys_common::util::dumb_print::h69676caef7afc7df (type 4) (param i32))
  (func $std::sys_common::util::abort::h9d095c1c8815e13c (type 4) (param i32)
    unreachable
    unreachable)
  (func $std::alloc::default_alloc_error_hook::ha3646665f0b9ddcd (type 0) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    get_local 2
    i32.const 28
    i32.add
    i32.const 1
    i32.store
    get_local 2
    get_local 0
    i32.store offset=44
    get_local 2
    i32.const 5
    i32.store offset=36
    get_local 2
    i32.const 1050432
    i32.store offset=8
    get_local 2
    i32.const 2
    i32.store offset=12
    get_local 2
    i32.const 1048672
    i32.store offset=16
    get_local 2
    get_local 2
    i32.const 44
    i32.add
    i32.store offset=32
    get_local 2
    get_local 2
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 2
    i32.const 8
    i32.add
    call $std::sys_common::util::dumb_print::h69676caef7afc7df
    get_local 2
    i32.const 48
    i32.add
    set_global 0)
  (func $rust_oom (type 0) (param i32 i32)
    (local i32)
    get_local 0
    get_local 1
    i32.const 0
    i32.load offset=1050856
    tee_local 2
    i32.const 6
    get_local 2
    select
    call_indirect (type 0)
    unreachable
    unreachable)
  (func $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h26f6782ca1a2c7f3 (type 8) (param i32 i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 96
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    get_local 3
    i32.store offset=12
    get_local 4
    get_local 4
    i32.const 8
    i32.add
    i32.store offset=16
    get_local 4
    get_local 4
    i32.const 12
    i32.add
    i32.store offset=20
    block  ;; label = @1
      get_local 1
      get_local 3
      i32.ne
      br_if 0 (;@1;)
      get_local 0
      get_local 2
      get_local 1
      call $memcpy
      drop
      get_local 4
      i32.const 96
      i32.add
      set_global 0
      return
    end
    get_local 4
    i32.const 72
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    get_local 4
    i32.const 48
    i32.add
    i32.const 12
    i32.add
    i32.const 7
    i32.store
    get_local 4
    i32.const 48
    i32.add
    i32.const 20
    i32.add
    i32.const 8
    i32.store
    get_local 4
    i32.const 24
    i32.add
    i32.const 12
    i32.add
    i32.const 3
    i32.store
    get_local 4
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    get_local 4
    i32.const 1050472
    i32.store offset=72
    get_local 4
    i64.const 1
    i64.store offset=76 align=4
    get_local 4
    i32.const 1048856
    i32.store offset=88
    get_local 4
    i32.const 7
    i32.store offset=52
    get_local 4
    i32.const 1050448
    i32.store offset=24
    get_local 4
    i32.const 3
    i32.store offset=28
    get_local 4
    i32.const 1048856
    i32.store offset=32
    get_local 4
    get_local 4
    i32.const 16
    i32.add
    i32.store offset=48
    get_local 4
    get_local 4
    i32.const 20
    i32.add
    i32.store offset=56
    get_local 4
    get_local 4
    i32.const 72
    i32.add
    i32.store offset=64
    get_local 4
    get_local 4
    i32.const 48
    i32.add
    i32.store offset=40
    get_local 4
    i32.const 24
    i32.add
    i32.const 1050480
    call $core::panicking::panic_fmt::h429a06507aba9228
    unreachable)
  (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      i32.const 1050880
      call $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::hc47eca4e441ca70c
      get_local 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1050880
      get_local 1
      get_local 0
      call $dlmalloc::dlmalloc::Dlmalloc::memalign::hdd2b339282aae11e
      return
    end
    i32.const 1050880
    get_local 0
    call $dlmalloc::dlmalloc::Dlmalloc::malloc::h51a7b039c3ad23bd)
  (func $__rdl_dealloc (type 5) (param i32 i32 i32)
    i32.const 1050880
    get_local 0
    call $dlmalloc::dlmalloc::Dlmalloc::free::hfb7302cc170c9b73)
  (func $__rdl_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1050880
            call $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::hc47eca4e441ca70c
            get_local 2
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 1050880
            call $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::hc47eca4e441ca70c
            get_local 2
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1050880
            get_local 2
            get_local 3
            call $dlmalloc::dlmalloc::Dlmalloc::memalign::hdd2b339282aae11e
            tee_local 2
            i32.eqz
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          i32.const 1050880
          get_local 0
          get_local 3
          call $dlmalloc::dlmalloc::Dlmalloc::realloc::h1d777c0be367b298
          return
        end
        i32.const 1050880
        get_local 3
        call $dlmalloc::dlmalloc::Dlmalloc::malloc::h51a7b039c3ad23bd
        tee_local 2
        br_if 1 (;@1;)
      end
      i32.const 0
      return
    end
    get_local 2
    get_local 0
    get_local 3
    get_local 1
    get_local 1
    get_local 3
    i32.gt_u
    select
    call $memcpy
    set_local 2
    i32.const 1050880
    get_local 0
    call $dlmalloc::dlmalloc::Dlmalloc::free::hfb7302cc170c9b73
    get_local 2)
  (func $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h3f94cb1b67d36337 (type 9) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      return
    end
    i32.const 1050496
    call $core::panicking::panic::haa57ffd51eb03b56
    unreachable)
  (func $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::hd0977ad8b4ebcaa8 (type 9) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      return
    end
    i32.const 1050496
    call $core::panicking::panic::haa57ffd51eb03b56
    unreachable)
  (func $core::ptr::drop_in_place::h05a6a18275722bec (type 4) (param i32))
  (func $core::ptr::drop_in_place::h152f40762e3a81d5 (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      i32.load offset=4
      tee_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.load
      get_local 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $core::ptr::drop_in_place::h851034af61f8b925 (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      i32.load offset=4
      tee_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 8
      i32.add
      i32.load
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      get_local 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $rust_begin_unwind (type 4) (param i32)
    get_local 0
    call $std::panicking::continue_panic_fmt::hcf5e48e7409ad0d6
    unreachable)
  (func $std::panicking::continue_panic_fmt::hcf5e48e7409ad0d6 (type 4) (param i32)
    (local i32 i32 i32 i64 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    call $core::panic::PanicInfo::location::hf28dc93a5a71b13e
    call $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h3f94cb1b67d36337
    set_local 2
    get_local 0
    call $core::panic::PanicInfo::message::h6f351d05d7a173b4
    call $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::hd0977ad8b4ebcaa8
    set_local 3
    get_local 1
    i32.const 8
    i32.add
    get_local 2
    call $core::panic::Location::file::hc4165a2fe44893fc
    get_local 1
    i64.load offset=8
    set_local 4
    get_local 2
    call $core::panic::Location::line::h4b252c4dfda31dc1
    set_local 5
    get_local 2
    call $core::panic::Location::column::h67b695fdc1ea1dee
    set_local 2
    get_local 1
    get_local 4
    i64.store offset=16
    get_local 1
    get_local 5
    i32.store offset=24
    get_local 1
    get_local 2
    i32.store offset=28
    get_local 1
    i32.const 0
    i32.store offset=36
    get_local 1
    get_local 3
    i32.store offset=32
    get_local 1
    i32.const 32
    i32.add
    i32.const 1050536
    get_local 0
    call $core::panic::PanicInfo::message::h6f351d05d7a173b4
    get_local 1
    i32.const 16
    i32.add
    call $std::panicking::rust_panic_with_hook::h440f5a95c4e695e3
    unreachable)
  (func $std::panicking::rust_panic_with_hook::h440f5a95c4e695e3 (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 4
    set_global 0
    i32.const 1
    set_local 5
    get_local 3
    i32.load offset=12
    set_local 6
    get_local 3
    i32.load offset=8
    set_local 7
    get_local 3
    i32.load offset=4
    set_local 8
    get_local 3
    i32.load
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1050872
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.load offset=1050876
        i32.const 1
        i32.add
        tee_local 5
        i32.store offset=1050876
        get_local 5
        i32.const 3
        i32.lt_u
        br_if 1 (;@1;)
        get_local 4
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        get_local 4
        i32.const 1050572
        i32.store offset=8
        get_local 4
        i64.const 1
        i64.store offset=12 align=4
        get_local 4
        i32.const 1049044
        i32.store offset=24
        get_local 4
        i32.const 8
        i32.add
        call $std::sys_common::util::dumb_print::h69676caef7afc7df
        unreachable
        unreachable
      end
      i32.const 0
      i64.const 4294967297
      i64.store offset=1050872
    end
    get_local 4
    i32.const 40
    i32.add
    get_local 3
    get_local 8
    get_local 7
    get_local 6
    call $core::panic::Location::internal_constructor::h41519bfe32dfcd66
    get_local 4
    i32.const 8
    i32.add
    i32.const 20
    i32.add
    get_local 4
    i32.const 48
    i32.add
    i64.load
    i64.store align=4
    get_local 4
    i32.const 1050520
    i32.store offset=12
    get_local 4
    i32.const 1049044
    i32.store offset=8
    get_local 4
    get_local 2
    i32.store offset=16
    get_local 4
    get_local 4
    i64.load offset=40
    i64.store offset=20 align=4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1050860
        tee_local 3
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        get_local 3
        i32.const 1
        i32.add
        tee_local 3
        i32.store offset=1050860
        block  ;; label = @3
          i32.const 0
          i32.load offset=1050868
          tee_local 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1050864
          set_local 3
          get_local 4
          get_local 0
          get_local 1
          i32.load offset=16
          call_indirect (type 0)
          get_local 4
          get_local 4
          i64.load
          i64.store offset=8
          get_local 3
          get_local 4
          i32.const 8
          i32.add
          get_local 2
          i32.load offset=12
          call_indirect (type 0)
          i32.const 0
          i32.load offset=1050860
          set_local 3
        end
        i32.const 0
        get_local 3
        i32.const -1
        i32.add
        i32.store offset=1050860
        get_local 5
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
        get_local 4
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        get_local 4
        i32.const 1050580
        i32.store offset=8
        get_local 4
        i64.const 1
        i64.store offset=12 align=4
        get_local 4
        i32.const 1049044
        i32.store offset=24
        get_local 4
        i32.const 8
        i32.add
        call $std::sys_common::util::dumb_print::h69676caef7afc7df
        unreachable
        unreachable
      end
      get_local 4
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      get_local 4
      i32.const 1050596
      i32.store offset=40
      get_local 4
      i64.const 1
      i64.store offset=44 align=4
      get_local 4
      i32.const 1049044
      i32.store offset=56
      get_local 4
      i32.const 40
      i32.add
      call $std::sys_common::util::abort::h9d095c1c8815e13c
      unreachable
    end
    get_local 0
    get_local 1
    call $rust_panic.llvm.8046044044007303119
    unreachable)
  (func $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::box_me_up::h771635a471c65984 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    block  ;; label = @1
      get_local 1
      i32.load offset=4
      tee_local 3
      br_if 0 (;@1;)
      get_local 1
      i32.load
      set_local 3
      get_local 2
      i32.const 0
      i32.store offset=16
      get_local 2
      i64.const 1
      i64.store offset=8
      get_local 2
      get_local 2
      i32.const 8
      i32.add
      i32.store offset=20
      get_local 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      get_local 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      get_local 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      tee_local 4
      get_local 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      get_local 2
      get_local 3
      i64.load align=4
      i64.store offset=24
      get_local 2
      i32.const 20
      i32.add
      i32.const 1050408
      get_local 2
      i32.const 24
      i32.add
      call $core::fmt::write::h37a139dd53a36e04
      drop
      get_local 4
      get_local 2
      i32.load offset=16
      i32.store
      get_local 2
      get_local 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        get_local 1
        i32.const 4
        i32.add
        tee_local 3
        i32.load
        tee_local 5
        i32.eqz
        br_if 0 (;@2;)
        get_local 1
        i32.const 8
        i32.add
        i32.load
        tee_local 6
        i32.eqz
        br_if 0 (;@2;)
        get_local 5
        get_local 6
        i32.const 1
        call $__rust_dealloc
      end
      get_local 3
      get_local 2
      i64.load offset=24
      i64.store align=4
      get_local 3
      i32.const 8
      i32.add
      get_local 4
      i32.load
      i32.store
      get_local 3
      i32.load
      set_local 3
    end
    get_local 1
    i32.const 1
    i32.store offset=4
    get_local 1
    i32.const 12
    i32.add
    i32.load
    set_local 4
    get_local 1
    i32.const 8
    i32.add
    tee_local 1
    i32.load
    set_local 5
    get_local 1
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      tee_local 1
      i32.eqz
      br_if 0 (;@1;)
      get_local 1
      get_local 4
      i32.store offset=8
      get_local 1
      get_local 5
      i32.store offset=4
      get_local 1
      get_local 3
      i32.store
      get_local 0
      i32.const 1050556
      i32.store offset=4
      get_local 0
      get_local 1
      i32.store
      get_local 2
      i32.const 48
      i32.add
      set_global 0
      return
    end
    i32.const 12
    i32.const 4
    call $alloc::alloc::handle_alloc_error::hf00ae3c1f4b3ee29
    unreachable)
  (func $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::get::hdc47736a6857b22b (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 1
    i32.const 4
    i32.add
    set_local 3
    block  ;; label = @1
      get_local 1
      i32.load offset=4
      br_if 0 (;@1;)
      get_local 1
      i32.load
      set_local 4
      get_local 2
      i32.const 0
      i32.store offset=16
      get_local 2
      i64.const 1
      i64.store offset=8
      get_local 2
      get_local 2
      i32.const 8
      i32.add
      i32.store offset=20
      get_local 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      get_local 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      get_local 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      tee_local 5
      get_local 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      get_local 2
      get_local 4
      i64.load align=4
      i64.store offset=24
      get_local 2
      i32.const 20
      i32.add
      i32.const 1050408
      get_local 2
      i32.const 24
      i32.add
      call $core::fmt::write::h37a139dd53a36e04
      drop
      get_local 5
      get_local 2
      i32.load offset=16
      i32.store
      get_local 2
      get_local 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        get_local 3
        i32.load
        tee_local 4
        i32.eqz
        br_if 0 (;@2;)
        get_local 1
        i32.const 8
        i32.add
        i32.load
        tee_local 1
        i32.eqz
        br_if 0 (;@2;)
        get_local 4
        get_local 1
        i32.const 1
        call $__rust_dealloc
      end
      get_local 3
      get_local 2
      i64.load offset=24
      i64.store align=4
      get_local 3
      i32.const 8
      i32.add
      get_local 5
      i32.load
      i32.store
    end
    get_local 0
    i32.const 1050556
    i32.store offset=4
    get_local 0
    get_local 3
    i32.store
    get_local 2
    i32.const 48
    i32.add
    set_global 0)
  (func $rust_panic.llvm.8046044044007303119 (type 0) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    get_local 2
    call $__rust_start_panic
    i32.store offset=12
    get_local 2
    i32.const 28
    i32.add
    i32.const 1
    i32.store
    get_local 2
    i32.const 36
    i32.add
    i32.const 1
    i32.store
    get_local 2
    i32.const 9
    i32.store offset=44
    get_local 2
    i32.const 1050588
    i32.store offset=16
    get_local 2
    i32.const 1
    i32.store offset=20
    get_local 2
    i32.const 1049172
    i32.store offset=24
    get_local 2
    get_local 2
    i32.const 12
    i32.add
    i32.store offset=40
    get_local 2
    get_local 2
    i32.const 40
    i32.add
    i32.store offset=32
    get_local 2
    i32.const 16
    i32.add
    call $std::sys_common::util::abort::h9d095c1c8815e13c
    unreachable)
  (func $__rust_start_panic (type 9) (param i32) (result i32)
    unreachable
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc_alignment::hc47eca4e441ca70c (type 9) (param i32) (result i32)
    i32.const 8)
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc::h51a7b039c3ad23bd (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              get_local 1
                                                                              i32.const 244
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              get_local 0
                                                                              i32.load
                                                                              tee_local 2
                                                                              i32.const 16
                                                                              get_local 1
                                                                              i32.const 11
                                                                              i32.add
                                                                              i32.const -8
                                                                              i32.and
                                                                              get_local 1
                                                                              i32.const 11
                                                                              i32.lt_u
                                                                              select
                                                                              tee_local 3
                                                                              i32.const 3
                                                                              i32.shr_u
                                                                              tee_local 4
                                                                              i32.const 31
                                                                              i32.and
                                                                              tee_local 5
                                                                              i32.shr_u
                                                                              tee_local 1
                                                                              i32.const 3
                                                                              i32.and
                                                                              i32.eqz
                                                                              br_if 1 (;@36;)
                                                                              get_local 0
                                                                              get_local 1
                                                                              i32.const -1
                                                                              i32.xor
                                                                              i32.const 1
                                                                              i32.and
                                                                              get_local 4
                                                                              i32.add
                                                                              tee_local 3
                                                                              i32.const 3
                                                                              i32.shl
                                                                              i32.add
                                                                              tee_local 5
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local 1
                                                                              i32.const 8
                                                                              i32.add
                                                                              set_local 6
                                                                              get_local 1
                                                                              i32.load offset=8
                                                                              tee_local 4
                                                                              get_local 5
                                                                              i32.const 8
                                                                              i32.add
                                                                              tee_local 5
                                                                              i32.eq
                                                                              br_if 2 (;@35;)
                                                                              get_local 4
                                                                              get_local 5
                                                                              i32.store offset=12
                                                                              get_local 5
                                                                              i32.const 8
                                                                              i32.add
                                                                              get_local 4
                                                                              i32.store
                                                                              br 3 (;@34;)
                                                                            end
                                                                            i32.const 0
                                                                            set_local 2
                                                                            get_local 1
                                                                            i32.const -64
                                                                            i32.ge_u
                                                                            br_if 28 (;@8;)
                                                                            get_local 1
                                                                            i32.const 11
                                                                            i32.add
                                                                            tee_local 1
                                                                            i32.const -8
                                                                            i32.and
                                                                            set_local 3
                                                                            get_local 0
                                                                            i32.load offset=4
                                                                            tee_local 7
                                                                            i32.eqz
                                                                            br_if 9 (;@27;)
                                                                            i32.const 0
                                                                            set_local 8
                                                                            block  ;; label = @37
                                                                              get_local 1
                                                                              i32.const 8
                                                                              i32.shr_u
                                                                              tee_local 1
                                                                              i32.eqz
                                                                              br_if 0 (;@37;)
                                                                              i32.const 31
                                                                              set_local 8
                                                                              get_local 3
                                                                              i32.const 16777215
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              get_local 3
                                                                              i32.const 38
                                                                              get_local 1
                                                                              i32.clz
                                                                              tee_local 1
                                                                              i32.sub
                                                                              i32.const 31
                                                                              i32.and
                                                                              i32.shr_u
                                                                              i32.const 1
                                                                              i32.and
                                                                              i32.const 31
                                                                              get_local 1
                                                                              i32.sub
                                                                              i32.const 1
                                                                              i32.shl
                                                                              i32.or
                                                                              set_local 8
                                                                            end
                                                                            i32.const 0
                                                                            get_local 3
                                                                            i32.sub
                                                                            set_local 4
                                                                            get_local 0
                                                                            get_local 8
                                                                            i32.const 2
                                                                            i32.shl
                                                                            i32.add
                                                                            i32.const 272
                                                                            i32.add
                                                                            i32.load
                                                                            tee_local 1
                                                                            i32.eqz
                                                                            br_if 6 (;@30;)
                                                                            i32.const 0
                                                                            set_local 5
                                                                            get_local 3
                                                                            i32.const 0
                                                                            i32.const 25
                                                                            get_local 8
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.sub
                                                                            i32.const 31
                                                                            i32.and
                                                                            get_local 8
                                                                            i32.const 31
                                                                            i32.eq
                                                                            select
                                                                            i32.shl
                                                                            set_local 2
                                                                            i32.const 0
                                                                            set_local 6
                                                                            loop  ;; label = @37
                                                                              block  ;; label = @38
                                                                                get_local 1
                                                                                i32.load offset=4
                                                                                i32.const -8
                                                                                i32.and
                                                                                tee_local 9
                                                                                get_local 3
                                                                                i32.lt_u
                                                                                br_if 0 (;@38;)
                                                                                get_local 9
                                                                                get_local 3
                                                                                i32.sub
                                                                                tee_local 9
                                                                                get_local 4
                                                                                i32.ge_u
                                                                                br_if 0 (;@38;)
                                                                                get_local 9
                                                                                set_local 4
                                                                                get_local 1
                                                                                set_local 6
                                                                                get_local 9
                                                                                i32.eqz
                                                                                br_if 6 (;@32;)
                                                                              end
                                                                              get_local 1
                                                                              i32.const 20
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local 9
                                                                              get_local 5
                                                                              get_local 9
                                                                              get_local 1
                                                                              get_local 2
                                                                              i32.const 29
                                                                              i32.shr_u
                                                                              i32.const 4
                                                                              i32.and
                                                                              i32.add
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local 1
                                                                              i32.ne
                                                                              select
                                                                              get_local 5
                                                                              get_local 9
                                                                              select
                                                                              set_local 5
                                                                              get_local 2
                                                                              i32.const 1
                                                                              i32.shl
                                                                              set_local 2
                                                                              get_local 1
                                                                              br_if 0 (;@37;)
                                                                            end
                                                                            get_local 5
                                                                            i32.eqz
                                                                            br_if 5 (;@31;)
                                                                            get_local 5
                                                                            set_local 1
                                                                            br 7 (;@29;)
                                                                          end
                                                                          get_local 3
                                                                          get_local 0
                                                                          i32.load offset=400
                                                                          i32.le_u
                                                                          br_if 8 (;@27;)
                                                                          get_local 1
                                                                          i32.eqz
                                                                          br_if 2 (;@33;)
                                                                          get_local 0
                                                                          get_local 1
                                                                          get_local 5
                                                                          i32.shl
                                                                          i32.const 2
                                                                          get_local 5
                                                                          i32.shl
                                                                          tee_local 1
                                                                          i32.const 0
                                                                          get_local 1
                                                                          i32.sub
                                                                          i32.or
                                                                          i32.and
                                                                          tee_local 1
                                                                          i32.const 0
                                                                          get_local 1
                                                                          i32.sub
                                                                          i32.and
                                                                          i32.ctz
                                                                          tee_local 4
                                                                          i32.const 3
                                                                          i32.shl
                                                                          i32.add
                                                                          tee_local 6
                                                                          i32.const 16
                                                                          i32.add
                                                                          i32.load
                                                                          tee_local 1
                                                                          i32.load offset=8
                                                                          tee_local 5
                                                                          get_local 6
                                                                          i32.const 8
                                                                          i32.add
                                                                          tee_local 6
                                                                          i32.eq
                                                                          br_if 10 (;@25;)
                                                                          get_local 5
                                                                          get_local 6
                                                                          i32.store offset=12
                                                                          get_local 6
                                                                          i32.const 8
                                                                          i32.add
                                                                          get_local 5
                                                                          i32.store
                                                                          br 11 (;@24;)
                                                                        end
                                                                        get_local 0
                                                                        get_local 2
                                                                        i32.const -2
                                                                        get_local 3
                                                                        i32.rotl
                                                                        i32.and
                                                                        i32.store
                                                                      end
                                                                      get_local 1
                                                                      get_local 3
                                                                      i32.const 3
                                                                      i32.shl
                                                                      tee_local 3
                                                                      i32.const 3
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      get_local 1
                                                                      get_local 3
                                                                      i32.add
                                                                      tee_local 1
                                                                      get_local 1
                                                                      i32.load offset=4
                                                                      i32.const 1
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      get_local 6
                                                                      return
                                                                    end
                                                                    get_local 0
                                                                    i32.load offset=4
                                                                    tee_local 1
                                                                    i32.eqz
                                                                    br_if 5 (;@27;)
                                                                    get_local 0
                                                                    get_local 1
                                                                    i32.const 0
                                                                    get_local 1
                                                                    i32.sub
                                                                    i32.and
                                                                    i32.ctz
                                                                    i32.const 2
                                                                    i32.shl
                                                                    i32.add
                                                                    i32.const 272
                                                                    i32.add
                                                                    i32.load
                                                                    tee_local 2
                                                                    i32.load offset=4
                                                                    i32.const -8
                                                                    i32.and
                                                                    get_local 3
                                                                    i32.sub
                                                                    set_local 4
                                                                    get_local 2
                                                                    set_local 5
                                                                    get_local 2
                                                                    i32.load offset=16
                                                                    tee_local 1
                                                                    i32.eqz
                                                                    br_if 20 (;@12;)
                                                                    i32.const 0
                                                                    set_local 10
                                                                    br 21 (;@11;)
                                                                  end
                                                                  i32.const 0
                                                                  set_local 4
                                                                  get_local 1
                                                                  set_local 6
                                                                  br 2 (;@29;)
                                                                end
                                                                get_local 6
                                                                br_if 2 (;@28;)
                                                              end
                                                              i32.const 0
                                                              set_local 6
                                                              i32.const 2
                                                              get_local 8
                                                              i32.const 31
                                                              i32.and
                                                              i32.shl
                                                              tee_local 1
                                                              i32.const 0
                                                              get_local 1
                                                              i32.sub
                                                              i32.or
                                                              get_local 7
                                                              i32.and
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                              get_local 0
                                                              get_local 1
                                                              i32.const 0
                                                              get_local 1
                                                              i32.sub
                                                              i32.and
                                                              i32.ctz
                                                              i32.const 2
                                                              i32.shl
                                                              i32.add
                                                              i32.const 272
                                                              i32.add
                                                              i32.load
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                            end
                                                            loop  ;; label = @29
                                                              get_local 1
                                                              i32.load offset=4
                                                              i32.const -8
                                                              i32.and
                                                              tee_local 5
                                                              get_local 3
                                                              i32.ge_u
                                                              get_local 5
                                                              get_local 3
                                                              i32.sub
                                                              tee_local 9
                                                              get_local 4
                                                              i32.lt_u
                                                              i32.and
                                                              set_local 2
                                                              block  ;; label = @30
                                                                get_local 1
                                                                i32.load offset=16
                                                                tee_local 5
                                                                br_if 0 (;@30;)
                                                                get_local 1
                                                                i32.const 20
                                                                i32.add
                                                                i32.load
                                                                set_local 5
                                                              end
                                                              get_local 1
                                                              get_local 6
                                                              get_local 2
                                                              select
                                                              set_local 6
                                                              get_local 9
                                                              get_local 4
                                                              get_local 2
                                                              select
                                                              set_local 4
                                                              get_local 5
                                                              set_local 1
                                                              get_local 5
                                                              br_if 0 (;@29;)
                                                            end
                                                            get_local 6
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                          end
                                                          get_local 0
                                                          i32.load offset=400
                                                          tee_local 1
                                                          get_local 3
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                          get_local 4
                                                          get_local 1
                                                          get_local 3
                                                          i32.sub
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                        end
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                get_local 0
                                                                i32.load offset=400
                                                                tee_local 4
                                                                get_local 3
                                                                i32.ge_u
                                                                br_if 0 (;@30;)
                                                                get_local 0
                                                                i32.load offset=404
                                                                tee_local 1
                                                                get_local 3
                                                                i32.le_u
                                                                br_if 1 (;@29;)
                                                                get_local 0
                                                                i32.const 404
                                                                i32.add
                                                                get_local 1
                                                                get_local 3
                                                                i32.sub
                                                                tee_local 4
                                                                i32.store
                                                                get_local 0
                                                                get_local 0
                                                                i32.load offset=412
                                                                tee_local 1
                                                                get_local 3
                                                                i32.add
                                                                tee_local 5
                                                                i32.store offset=412
                                                                get_local 5
                                                                get_local 4
                                                                i32.const 1
                                                                i32.or
                                                                i32.store offset=4
                                                                get_local 1
                                                                get_local 3
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                get_local 1
                                                                i32.const 8
                                                                i32.add
                                                                return
                                                              end
                                                              get_local 0
                                                              i32.load offset=408
                                                              set_local 1
                                                              get_local 4
                                                              get_local 3
                                                              i32.sub
                                                              tee_local 5
                                                              i32.const 16
                                                              i32.ge_u
                                                              br_if 1 (;@28;)
                                                              get_local 0
                                                              i32.const 408
                                                              i32.add
                                                              i32.const 0
                                                              i32.store
                                                              get_local 0
                                                              i32.const 400
                                                              i32.add
                                                              i32.const 0
                                                              i32.store
                                                              get_local 1
                                                              get_local 4
                                                              i32.const 3
                                                              i32.or
                                                              i32.store offset=4
                                                              get_local 1
                                                              get_local 4
                                                              i32.add
                                                              tee_local 4
                                                              i32.const 4
                                                              i32.add
                                                              set_local 3
                                                              get_local 4
                                                              i32.load offset=4
                                                              i32.const 1
                                                              i32.or
                                                              set_local 4
                                                              br 2 (;@27;)
                                                            end
                                                            i32.const 0
                                                            set_local 2
                                                            get_local 3
                                                            i32.const 65583
                                                            i32.add
                                                            tee_local 4
                                                            i32.const 16
                                                            i32.shr_u
                                                            memory.grow
                                                            tee_local 1
                                                            i32.const -1
                                                            i32.eq
                                                            br_if 20 (;@8;)
                                                            get_local 1
                                                            i32.const 16
                                                            i32.shl
                                                            tee_local 6
                                                            i32.eqz
                                                            br_if 20 (;@8;)
                                                            get_local 0
                                                            get_local 0
                                                            i32.load offset=416
                                                            get_local 4
                                                            i32.const -65536
                                                            i32.and
                                                            tee_local 8
                                                            i32.add
                                                            tee_local 1
                                                            i32.store offset=416
                                                            get_local 0
                                                            get_local 0
                                                            i32.load offset=420
                                                            tee_local 4
                                                            get_local 1
                                                            get_local 1
                                                            get_local 4
                                                            i32.lt_u
                                                            select
                                                            i32.store offset=420
                                                            get_local 0
                                                            i32.load offset=412
                                                            tee_local 4
                                                            i32.eqz
                                                            br_if 9 (;@19;)
                                                            get_local 0
                                                            i32.const 424
                                                            i32.add
                                                            tee_local 7
                                                            set_local 1
                                                            loop  ;; label = @29
                                                              get_local 1
                                                              i32.load
                                                              tee_local 5
                                                              get_local 1
                                                              i32.load offset=4
                                                              tee_local 9
                                                              i32.add
                                                              get_local 6
                                                              i32.eq
                                                              br_if 11 (;@18;)
                                                              get_local 1
                                                              i32.load offset=8
                                                              tee_local 1
                                                              br_if 0 (;@29;)
                                                              br 19 (;@10;)
                                                            end
                                                          end
                                                          get_local 0
                                                          i32.const 400
                                                          i32.add
                                                          get_local 5
                                                          i32.store
                                                          get_local 0
                                                          i32.const 408
                                                          i32.add
                                                          get_local 1
                                                          get_local 3
                                                          i32.add
                                                          tee_local 2
                                                          i32.store
                                                          get_local 2
                                                          get_local 5
                                                          i32.const 1
                                                          i32.or
                                                          i32.store offset=4
                                                          get_local 1
                                                          get_local 4
                                                          i32.add
                                                          get_local 5
                                                          i32.store
                                                          get_local 3
                                                          i32.const 3
                                                          i32.or
                                                          set_local 4
                                                          get_local 1
                                                          i32.const 4
                                                          i32.add
                                                          set_local 3
                                                        end
                                                        get_local 3
                                                        get_local 4
                                                        i32.store
                                                        get_local 1
                                                        i32.const 8
                                                        i32.add
                                                        return
                                                      end
                                                      get_local 0
                                                      get_local 6
                                                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
                                                      get_local 4
                                                      i32.const 15
                                                      i32.gt_u
                                                      br_if 2 (;@23;)
                                                      get_local 6
                                                      get_local 4
                                                      get_local 3
                                                      i32.add
                                                      tee_local 1
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      get_local 6
                                                      get_local 1
                                                      i32.add
                                                      tee_local 1
                                                      get_local 1
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br 12 (;@13;)
                                                    end
                                                    get_local 0
                                                    get_local 2
                                                    i32.const -2
                                                    get_local 4
                                                    i32.rotl
                                                    i32.and
                                                    i32.store
                                                  end
                                                  get_local 1
                                                  i32.const 8
                                                  i32.add
                                                  set_local 5
                                                  get_local 1
                                                  get_local 3
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  get_local 1
                                                  get_local 3
                                                  i32.add
                                                  tee_local 2
                                                  get_local 4
                                                  i32.const 3
                                                  i32.shl
                                                  tee_local 4
                                                  get_local 3
                                                  i32.sub
                                                  tee_local 3
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  get_local 1
                                                  get_local 4
                                                  i32.add
                                                  get_local 3
                                                  i32.store
                                                  get_local 0
                                                  i32.const 400
                                                  i32.add
                                                  tee_local 6
                                                  i32.load
                                                  tee_local 1
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  get_local 0
                                                  get_local 1
                                                  i32.const 3
                                                  i32.shr_u
                                                  tee_local 9
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  set_local 4
                                                  get_local 0
                                                  i32.const 408
                                                  i32.add
                                                  i32.load
                                                  set_local 1
                                                  get_local 0
                                                  i32.load
                                                  tee_local 8
                                                  i32.const 1
                                                  get_local 9
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  tee_local 9
                                                  i32.and
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                  get_local 4
                                                  i32.load offset=8
                                                  set_local 9
                                                  br 2 (;@21;)
                                                end
                                                get_local 6
                                                get_local 3
                                                i32.const 3
                                                i32.or
                                                i32.store offset=4
                                                get_local 6
                                                get_local 3
                                                i32.add
                                                tee_local 1
                                                get_local 4
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                get_local 1
                                                get_local 4
                                                i32.add
                                                get_local 4
                                                i32.store
                                                get_local 4
                                                i32.const 255
                                                i32.gt_u
                                                br_if 5 (;@17;)
                                                get_local 0
                                                get_local 4
                                                i32.const 3
                                                i32.shr_u
                                                tee_local 4
                                                i32.const 3
                                                i32.shl
                                                i32.add
                                                i32.const 8
                                                i32.add
                                                set_local 3
                                                get_local 0
                                                i32.load
                                                tee_local 5
                                                i32.const 1
                                                get_local 4
                                                i32.const 31
                                                i32.and
                                                i32.shl
                                                tee_local 4
                                                i32.and
                                                i32.eqz
                                                br_if 7 (;@15;)
                                                get_local 3
                                                i32.const 8
                                                i32.add
                                                set_local 5
                                                get_local 3
                                                i32.load offset=8
                                                set_local 4
                                                br 8 (;@14;)
                                              end
                                              get_local 0
                                              get_local 8
                                              get_local 9
                                              i32.or
                                              i32.store
                                              get_local 4
                                              set_local 9
                                            end
                                            get_local 4
                                            i32.const 8
                                            i32.add
                                            get_local 1
                                            i32.store
                                            get_local 9
                                            get_local 1
                                            i32.store offset=12
                                            get_local 1
                                            get_local 4
                                            i32.store offset=12
                                            get_local 1
                                            get_local 9
                                            i32.store offset=8
                                          end
                                          get_local 0
                                          i32.const 408
                                          i32.add
                                          get_local 2
                                          i32.store
                                          get_local 6
                                          get_local 3
                                          i32.store
                                          get_local 5
                                          return
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            get_local 0
                                            i32.load offset=444
                                            tee_local 1
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            get_local 1
                                            get_local 6
                                            i32.le_u
                                            br_if 1 (;@19;)
                                          end
                                          get_local 0
                                          i32.const 444
                                          i32.add
                                          get_local 6
                                          i32.store
                                        end
                                        get_local 0
                                        get_local 6
                                        i32.store offset=424
                                        get_local 0
                                        i32.const 4095
                                        i32.store offset=448
                                        get_local 0
                                        i32.const 428
                                        i32.add
                                        get_local 8
                                        i32.store
                                        i32.const 0
                                        set_local 1
                                        get_local 0
                                        i32.const 436
                                        i32.add
                                        i32.const 0
                                        i32.store
                                        loop  ;; label = @19
                                          get_local 0
                                          get_local 1
                                          i32.add
                                          tee_local 4
                                          i32.const 16
                                          i32.add
                                          get_local 4
                                          i32.const 8
                                          i32.add
                                          tee_local 5
                                          i32.store
                                          get_local 4
                                          i32.const 20
                                          i32.add
                                          get_local 5
                                          i32.store
                                          get_local 1
                                          i32.const 8
                                          i32.add
                                          tee_local 1
                                          i32.const 256
                                          i32.ne
                                          br_if 0 (;@19;)
                                        end
                                        get_local 0
                                        i32.const 404
                                        i32.add
                                        get_local 8
                                        i32.const -40
                                        i32.add
                                        tee_local 1
                                        i32.store
                                        get_local 0
                                        i32.const 412
                                        i32.add
                                        get_local 6
                                        i32.store
                                        get_local 6
                                        get_local 1
                                        i32.const 1
                                        i32.or
                                        i32.store offset=4
                                        get_local 6
                                        get_local 1
                                        i32.add
                                        i32.const 40
                                        i32.store offset=4
                                        get_local 0
                                        i32.const 2097152
                                        i32.store offset=440
                                        br 9 (;@9;)
                                      end
                                      get_local 1
                                      i32.load offset=12
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      br 7 (;@10;)
                                    end
                                    get_local 0
                                    get_local 1
                                    get_local 4
                                    call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hc7f422364de19275
                                    br 3 (;@13;)
                                  end
                                  get_local 6
                                  get_local 4
                                  i32.le_u
                                  br_if 5 (;@10;)
                                  get_local 5
                                  get_local 4
                                  i32.gt_u
                                  br_if 5 (;@10;)
                                  get_local 1
                                  i32.const 4
                                  i32.add
                                  get_local 9
                                  get_local 8
                                  i32.add
                                  i32.store
                                  get_local 0
                                  i32.const 412
                                  i32.add
                                  tee_local 1
                                  get_local 1
                                  i32.load
                                  tee_local 1
                                  i32.const 15
                                  i32.add
                                  i32.const -8
                                  i32.and
                                  tee_local 4
                                  i32.const -8
                                  i32.add
                                  tee_local 5
                                  i32.store
                                  get_local 0
                                  i32.const 404
                                  i32.add
                                  tee_local 6
                                  get_local 6
                                  i32.load
                                  get_local 8
                                  i32.add
                                  tee_local 6
                                  get_local 1
                                  i32.const 8
                                  i32.add
                                  get_local 4
                                  i32.sub
                                  i32.add
                                  tee_local 4
                                  i32.store
                                  get_local 5
                                  get_local 4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  get_local 1
                                  get_local 6
                                  i32.add
                                  i32.const 40
                                  i32.store offset=4
                                  get_local 0
                                  i32.const 2097152
                                  i32.store offset=440
                                  br 6 (;@9;)
                                end
                                get_local 0
                                get_local 5
                                get_local 4
                                i32.or
                                i32.store
                                get_local 3
                                i32.const 8
                                i32.add
                                set_local 5
                                get_local 3
                                set_local 4
                              end
                              get_local 5
                              get_local 1
                              i32.store
                              get_local 4
                              get_local 1
                              i32.store offset=12
                              get_local 1
                              get_local 3
                              i32.store offset=12
                              get_local 1
                              get_local 4
                              i32.store offset=8
                            end
                            get_local 6
                            i32.const 8
                            i32.add
                            set_local 2
                            br 4 (;@8;)
                          end
                          i32.const 1
                          set_local 10
                        end
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              get_local 10
                                                              br_table 0 (;@29;) 1 (;@28;) 2 (;@27;) 4 (;@25;) 5 (;@24;) 6 (;@23;) 8 (;@21;) 9 (;@20;) 10 (;@19;) 7 (;@22;) 3 (;@26;) 3 (;@26;)
                                                            end
                                                            get_local 1
                                                            i32.load offset=4
                                                            i32.const -8
                                                            i32.and
                                                            get_local 3
                                                            i32.sub
                                                            tee_local 2
                                                            get_local 4
                                                            get_local 2
                                                            get_local 4
                                                            i32.lt_u
                                                            tee_local 2
                                                            select
                                                            set_local 4
                                                            get_local 1
                                                            get_local 5
                                                            get_local 2
                                                            select
                                                            set_local 5
                                                            get_local 1
                                                            tee_local 2
                                                            i32.load offset=16
                                                            tee_local 1
                                                            br_if 10 (;@18;)
                                                            i32.const 1
                                                            set_local 10
                                                            br 17 (;@11;)
                                                          end
                                                          get_local 2
                                                          i32.const 20
                                                          i32.add
                                                          i32.load
                                                          tee_local 1
                                                          br_if 10 (;@17;)
                                                          i32.const 2
                                                          set_local 10
                                                          br 16 (;@11;)
                                                        end
                                                        get_local 0
                                                        get_local 5
                                                        call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
                                                        get_local 4
                                                        i32.const 16
                                                        i32.ge_u
                                                        br_if 10 (;@16;)
                                                        i32.const 10
                                                        set_local 10
                                                        br 15 (;@11;)
                                                      end
                                                      get_local 5
                                                      get_local 4
                                                      get_local 3
                                                      i32.add
                                                      tee_local 1
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      get_local 5
                                                      get_local 1
                                                      i32.add
                                                      tee_local 1
                                                      get_local 1
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br 13 (;@12;)
                                                    end
                                                    get_local 5
                                                    get_local 3
                                                    i32.const 3
                                                    i32.or
                                                    i32.store offset=4
                                                    get_local 5
                                                    get_local 3
                                                    i32.add
                                                    tee_local 3
                                                    get_local 4
                                                    i32.const 1
                                                    i32.or
                                                    i32.store offset=4
                                                    get_local 3
                                                    get_local 4
                                                    i32.add
                                                    get_local 4
                                                    i32.store
                                                    get_local 0
                                                    i32.const 400
                                                    i32.add
                                                    tee_local 6
                                                    i32.load
                                                    tee_local 1
                                                    i32.eqz
                                                    br_if 9 (;@15;)
                                                    i32.const 4
                                                    set_local 10
                                                    br 13 (;@11;)
                                                  end
                                                  get_local 0
                                                  get_local 1
                                                  i32.const 3
                                                  i32.shr_u
                                                  tee_local 9
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  set_local 2
                                                  get_local 0
                                                  i32.const 408
                                                  i32.add
                                                  i32.load
                                                  set_local 1
                                                  get_local 0
                                                  i32.load
                                                  tee_local 8
                                                  i32.const 1
                                                  get_local 9
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  tee_local 9
                                                  i32.and
                                                  i32.eqz
                                                  br_if 9 (;@14;)
                                                  i32.const 5
                                                  set_local 10
                                                  br 12 (;@11;)
                                                end
                                                get_local 2
                                                i32.load offset=8
                                                set_local 9
                                                br 9 (;@13;)
                                              end
                                              get_local 0
                                              get_local 8
                                              get_local 9
                                              i32.or
                                              i32.store
                                              get_local 2
                                              set_local 9
                                              i32.const 6
                                              set_local 10
                                              br 10 (;@11;)
                                            end
                                            get_local 2
                                            i32.const 8
                                            i32.add
                                            get_local 1
                                            i32.store
                                            get_local 9
                                            get_local 1
                                            i32.store offset=12
                                            get_local 1
                                            get_local 2
                                            i32.store offset=12
                                            get_local 1
                                            get_local 9
                                            i32.store offset=8
                                            i32.const 7
                                            set_local 10
                                            br 9 (;@11;)
                                          end
                                          get_local 0
                                          i32.const 408
                                          i32.add
                                          get_local 3
                                          i32.store
                                          get_local 6
                                          get_local 4
                                          i32.store
                                          i32.const 8
                                          set_local 10
                                          br 8 (;@11;)
                                        end
                                        get_local 5
                                        i32.const 8
                                        i32.add
                                        return
                                      end
                                      i32.const 0
                                      set_local 10
                                      br 6 (;@11;)
                                    end
                                    i32.const 0
                                    set_local 10
                                    br 5 (;@11;)
                                  end
                                  i32.const 3
                                  set_local 10
                                  br 4 (;@11;)
                                end
                                i32.const 7
                                set_local 10
                                br 3 (;@11;)
                              end
                              i32.const 9
                              set_local 10
                              br 2 (;@11;)
                            end
                            i32.const 6
                            set_local 10
                            br 1 (;@11;)
                          end
                          i32.const 8
                          set_local 10
                          br 0 (;@11;)
                        end
                      end
                      get_local 0
                      get_local 0
                      i32.load offset=444
                      tee_local 1
                      get_local 6
                      get_local 1
                      get_local 6
                      i32.lt_u
                      select
                      i32.store offset=444
                      get_local 6
                      get_local 8
                      i32.add
                      set_local 5
                      get_local 7
                      set_local 1
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                loop  ;; label = @15
                                  get_local 1
                                  i32.load
                                  get_local 5
                                  i32.eq
                                  br_if 1 (;@14;)
                                  get_local 1
                                  i32.load offset=8
                                  tee_local 1
                                  br_if 0 (;@15;)
                                  br 2 (;@13;)
                                end
                              end
                              get_local 1
                              i32.load offset=12
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            get_local 7
                            set_local 1
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  get_local 1
                                  i32.load
                                  tee_local 5
                                  get_local 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  get_local 5
                                  get_local 1
                                  i32.load offset=4
                                  i32.add
                                  tee_local 5
                                  get_local 4
                                  i32.gt_u
                                  br_if 2 (;@13;)
                                end
                                get_local 1
                                i32.load offset=8
                                set_local 1
                                br 0 (;@14;)
                              end
                            end
                            get_local 0
                            i32.const 404
                            i32.add
                            get_local 8
                            i32.const -40
                            i32.add
                            tee_local 1
                            i32.store
                            get_local 0
                            i32.const 412
                            i32.add
                            get_local 6
                            i32.store
                            get_local 6
                            get_local 1
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            get_local 6
                            get_local 1
                            i32.add
                            i32.const 40
                            i32.store offset=4
                            get_local 0
                            i32.const 2097152
                            i32.store offset=440
                            get_local 4
                            get_local 5
                            i32.const -32
                            i32.add
                            i32.const -8
                            i32.and
                            i32.const -8
                            i32.add
                            tee_local 1
                            get_local 1
                            get_local 4
                            i32.const 16
                            i32.add
                            i32.lt_u
                            select
                            tee_local 9
                            i32.const 27
                            i32.store offset=4
                            get_local 7
                            i64.load align=4
                            set_local 11
                            get_local 9
                            i32.const 16
                            i32.add
                            get_local 7
                            i32.const 8
                            i32.add
                            i64.load align=4
                            i64.store align=4
                            get_local 9
                            get_local 11
                            i64.store offset=8 align=4
                            get_local 0
                            i32.const 428
                            i32.add
                            get_local 8
                            i32.store
                            get_local 0
                            i32.const 424
                            i32.add
                            get_local 6
                            i32.store
                            get_local 0
                            i32.const 436
                            i32.add
                            i32.const 0
                            i32.store
                            get_local 0
                            i32.const 432
                            i32.add
                            get_local 9
                            i32.const 8
                            i32.add
                            i32.store
                            get_local 9
                            i32.const 28
                            i32.add
                            set_local 1
                            loop  ;; label = @13
                              get_local 1
                              i32.const 7
                              i32.store
                              get_local 5
                              get_local 1
                              i32.const 4
                              i32.add
                              tee_local 1
                              i32.gt_u
                              br_if 0 (;@13;)
                            end
                            get_local 9
                            get_local 4
                            i32.eq
                            br_if 3 (;@9;)
                            get_local 9
                            get_local 9
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                            get_local 4
                            get_local 9
                            get_local 4
                            i32.sub
                            tee_local 1
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            get_local 9
                            get_local 1
                            i32.store
                            block  ;; label = @13
                              get_local 1
                              i32.const 255
                              i32.gt_u
                              br_if 0 (;@13;)
                              get_local 0
                              get_local 1
                              i32.const 3
                              i32.shr_u
                              tee_local 5
                              i32.const 3
                              i32.shl
                              i32.add
                              i32.const 8
                              i32.add
                              set_local 1
                              get_local 0
                              i32.load
                              tee_local 6
                              i32.const 1
                              get_local 5
                              i32.const 31
                              i32.and
                              i32.shl
                              tee_local 5
                              i32.and
                              i32.eqz
                              br_if 2 (;@11;)
                              get_local 1
                              i32.load offset=8
                              set_local 5
                              br 3 (;@10;)
                            end
                            get_local 0
                            get_local 4
                            get_local 1
                            call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hc7f422364de19275
                            br 3 (;@9;)
                          end
                          get_local 1
                          get_local 6
                          i32.store
                          get_local 1
                          get_local 1
                          i32.load offset=4
                          get_local 8
                          i32.add
                          i32.store offset=4
                          get_local 6
                          get_local 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          get_local 6
                          get_local 3
                          i32.add
                          set_local 1
                          get_local 5
                          get_local 6
                          i32.sub
                          get_local 3
                          i32.sub
                          set_local 3
                          get_local 0
                          i32.const 412
                          i32.add
                          tee_local 4
                          i32.load
                          get_local 5
                          i32.eq
                          br_if 4 (;@7;)
                          get_local 0
                          i32.load offset=408
                          get_local 5
                          i32.eq
                          br_if 5 (;@6;)
                          get_local 5
                          i32.load offset=4
                          tee_local 4
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 9 (;@2;)
                          get_local 4
                          i32.const -8
                          i32.and
                          tee_local 2
                          i32.const 255
                          i32.gt_u
                          br_if 6 (;@5;)
                          get_local 5
                          i32.load offset=12
                          tee_local 9
                          get_local 5
                          i32.load offset=8
                          tee_local 8
                          i32.eq
                          br_if 7 (;@4;)
                          get_local 8
                          get_local 9
                          i32.store offset=12
                          get_local 9
                          get_local 8
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        get_local 0
                        get_local 6
                        get_local 5
                        i32.or
                        i32.store
                        get_local 1
                        set_local 5
                      end
                      get_local 1
                      i32.const 8
                      i32.add
                      get_local 4
                      i32.store
                      get_local 5
                      get_local 4
                      i32.store offset=12
                      get_local 4
                      get_local 1
                      i32.store offset=12
                      get_local 4
                      get_local 5
                      i32.store offset=8
                    end
                    get_local 0
                    i32.const 404
                    i32.add
                    tee_local 1
                    i32.load
                    tee_local 4
                    get_local 3
                    i32.le_u
                    br_if 0 (;@8;)
                    get_local 1
                    get_local 4
                    get_local 3
                    i32.sub
                    tee_local 4
                    i32.store
                    get_local 0
                    i32.const 412
                    i32.add
                    tee_local 1
                    get_local 1
                    i32.load
                    tee_local 1
                    get_local 3
                    i32.add
                    tee_local 5
                    i32.store
                    get_local 5
                    get_local 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local 1
                    get_local 3
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    get_local 1
                    i32.const 8
                    i32.add
                    return
                  end
                  get_local 2
                  return
                end
                get_local 4
                get_local 1
                i32.store
                get_local 0
                i32.const 404
                i32.add
                tee_local 4
                get_local 4
                i32.load
                get_local 3
                i32.add
                tee_local 3
                i32.store
                get_local 1
                get_local 3
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              get_local 0
              i32.const 408
              i32.add
              get_local 1
              i32.store
              get_local 0
              i32.const 400
              i32.add
              tee_local 4
              get_local 4
              i32.load
              get_local 3
              i32.add
              tee_local 3
              i32.store
              get_local 1
              get_local 3
              i32.const 1
              i32.or
              i32.store offset=4
              get_local 1
              get_local 3
              i32.add
              get_local 3
              i32.store
              br 4 (;@1;)
            end
            get_local 0
            get_local 5
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
            br 1 (;@3;)
          end
          get_local 0
          get_local 0
          i32.load
          i32.const -2
          get_local 4
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        get_local 2
        get_local 3
        i32.add
        set_local 3
        get_local 5
        get_local 2
        i32.add
        set_local 5
      end
      get_local 5
      get_local 5
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
      get_local 1
      get_local 3
      i32.const 1
      i32.or
      i32.store offset=4
      get_local 1
      get_local 3
      i32.add
      get_local 3
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            get_local 0
            get_local 3
            i32.const 3
            i32.shr_u
            tee_local 4
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            set_local 3
            get_local 0
            i32.load
            tee_local 5
            i32.const 1
            get_local 4
            i32.const 31
            i32.and
            i32.shl
            tee_local 4
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            get_local 3
            i32.const 8
            i32.add
            set_local 5
            get_local 3
            i32.load offset=8
            set_local 4
            br 2 (;@2;)
          end
          get_local 0
          get_local 1
          get_local 3
          call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hc7f422364de19275
          br 2 (;@1;)
        end
        get_local 0
        get_local 5
        get_local 4
        i32.or
        i32.store
        get_local 3
        i32.const 8
        i32.add
        set_local 5
        get_local 3
        set_local 4
      end
      get_local 5
      get_local 1
      i32.store
      get_local 4
      get_local 1
      i32.store offset=12
      get_local 1
      get_local 3
      i32.store offset=12
      get_local 1
      get_local 4
      i32.store offset=8
    end
    get_local 6
    i32.const 8
    i32.add)
  (func $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    get_local 1
    i32.load offset=24
    set_local 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 1
            i32.load offset=12
            tee_local 3
            get_local 1
            i32.eq
            br_if 0 (;@4;)
            get_local 1
            i32.load offset=8
            tee_local 4
            get_local 3
            i32.store offset=12
            get_local 3
            get_local 4
            i32.store offset=8
            get_local 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            get_local 1
            i32.const 20
            i32.const 16
            get_local 1
            i32.const 20
            i32.add
            tee_local 3
            i32.load
            tee_local 5
            select
            i32.add
            i32.load
            tee_local 4
            i32.eqz
            br_if 0 (;@4;)
            get_local 3
            get_local 1
            i32.const 16
            i32.add
            get_local 5
            select
            set_local 5
            block  ;; label = @5
              loop  ;; label = @6
                get_local 5
                set_local 6
                block  ;; label = @7
                  get_local 4
                  tee_local 3
                  i32.const 20
                  i32.add
                  tee_local 5
                  i32.load
                  tee_local 4
                  i32.eqz
                  br_if 0 (;@7;)
                  get_local 4
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                get_local 3
                i32.const 16
                i32.add
                set_local 5
                get_local 3
                i32.load offset=16
                tee_local 4
                br_if 0 (;@6;)
              end
            end
            get_local 6
            i32.const 0
            i32.store
            get_local 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          set_local 3
          get_local 2
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            get_local 0
            get_local 1
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            tee_local 4
            i32.load
            get_local 1
            i32.eq
            br_if 0 (;@4;)
            get_local 2
            i32.const 16
            i32.const 20
            get_local 2
            i32.load offset=16
            get_local 1
            i32.eq
            select
            i32.add
            get_local 3
            i32.store
            get_local 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          get_local 4
          get_local 3
          i32.store
          get_local 3
          i32.eqz
          br_if 2 (;@1;)
        end
        get_local 3
        get_local 2
        i32.store offset=24
        block  ;; label = @3
          get_local 1
          i32.load offset=16
          tee_local 4
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          get_local 4
          i32.store offset=16
          get_local 4
          get_local 3
          i32.store offset=24
        end
        get_local 1
        i32.const 20
        i32.add
        i32.load
        tee_local 4
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.const 20
        i32.add
        get_local 4
        i32.store
        get_local 4
        get_local 3
        i32.store offset=24
      end
      return
    end
    get_local 0
    get_local 0
    i32.load offset=4
    i32.const -2
    get_local 1
    i32.const 28
    i32.add
    i32.load
    i32.rotl
    i32.and
    i32.store offset=4)
  (func $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hc7f422364de19275 (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.const 8
        i32.shr_u
        tee_local 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        set_local 4
        get_local 2
        i32.const 16777215
        i32.gt_u
        br_if 1 (;@1;)
        get_local 2
        i32.const 38
        get_local 3
        i32.clz
        tee_local 4
        i32.sub
        i32.const 31
        i32.and
        i32.shr_u
        i32.const 1
        i32.and
        i32.const 31
        get_local 4
        i32.sub
        i32.const 1
        i32.shl
        i32.or
        set_local 4
        br 1 (;@1;)
      end
      i32.const 0
      set_local 4
    end
    get_local 1
    get_local 4
    i32.store offset=28
    get_local 1
    i64.const 0
    i64.store offset=16 align=4
    get_local 0
    get_local 4
    i32.const 2
    i32.shl
    i32.add
    i32.const 272
    i32.add
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              get_local 0
              i32.load offset=4
              tee_local 5
              i32.const 1
              get_local 4
              i32.const 31
              i32.and
              i32.shl
              tee_local 6
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              get_local 3
              i32.load
              tee_local 3
              i32.load offset=4
              i32.const -8
              i32.and
              get_local 2
              i32.ne
              br_if 1 (;@4;)
              get_local 3
              set_local 4
              br 2 (;@3;)
            end
            get_local 0
            i32.const 4
            i32.add
            get_local 5
            get_local 6
            i32.or
            i32.store
            get_local 3
            get_local 1
            i32.store
            get_local 1
            get_local 3
            i32.store offset=24
            br 3 (;@1;)
          end
          get_local 2
          i32.const 0
          i32.const 25
          get_local 4
          i32.const 1
          i32.shr_u
          i32.sub
          i32.const 31
          i32.and
          get_local 4
          i32.const 31
          i32.eq
          select
          i32.shl
          set_local 0
          loop  ;; label = @4
            get_local 3
            get_local 0
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            tee_local 5
            i32.load
            tee_local 4
            i32.eqz
            br_if 2 (;@2;)
            get_local 0
            i32.const 1
            i32.shl
            set_local 0
            get_local 4
            set_local 3
            get_local 4
            i32.load offset=4
            i32.const -8
            i32.and
            get_local 2
            i32.ne
            br_if 0 (;@4;)
          end
        end
        get_local 4
        i32.load offset=8
        tee_local 0
        get_local 1
        i32.store offset=12
        get_local 4
        get_local 1
        i32.store offset=8
        get_local 1
        get_local 4
        i32.store offset=12
        get_local 1
        get_local 0
        i32.store offset=8
        get_local 1
        i32.const 0
        i32.store offset=24
        return
      end
      get_local 5
      get_local 1
      i32.store
      get_local 1
      get_local 3
      i32.store offset=24
    end
    get_local 1
    get_local 1
    i32.store offset=12
    get_local 1
    get_local 1
    i32.store offset=8)
  (func $dlmalloc::dlmalloc::Dlmalloc::realloc::h1d777c0be367b298 (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    set_local 3
    block  ;; label = @1
      get_local 2
      i32.const -65
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 16
      get_local 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      get_local 2
      i32.const 11
      i32.lt_u
      select
      set_local 4
      get_local 1
      i32.const -4
      i32.add
      tee_local 5
      i32.load
      tee_local 6
      i32.const -8
      i32.and
      set_local 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 6
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          get_local 1
                          i32.const -8
                          i32.add
                          tee_local 8
                          get_local 7
                          i32.add
                          set_local 9
                          get_local 7
                          get_local 4
                          i32.ge_u
                          br_if 1 (;@10;)
                          get_local 0
                          i32.load offset=412
                          get_local 9
                          i32.eq
                          br_if 2 (;@9;)
                          get_local 0
                          i32.load offset=408
                          get_local 9
                          i32.eq
                          br_if 3 (;@8;)
                          get_local 9
                          i32.load offset=4
                          tee_local 6
                          i32.const 2
                          i32.and
                          br_if 4 (;@7;)
                          get_local 6
                          i32.const -8
                          i32.and
                          tee_local 10
                          get_local 7
                          i32.add
                          tee_local 7
                          get_local 4
                          i32.lt_u
                          br_if 4 (;@7;)
                          get_local 7
                          get_local 4
                          i32.sub
                          set_local 2
                          get_local 10
                          i32.const 255
                          i32.gt_u
                          br_if 6 (;@5;)
                          get_local 9
                          i32.load offset=12
                          tee_local 3
                          get_local 9
                          i32.load offset=8
                          tee_local 9
                          i32.eq
                          br_if 7 (;@4;)
                          get_local 9
                          get_local 3
                          i32.store offset=12
                          get_local 3
                          get_local 9
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        get_local 4
                        i32.const 256
                        i32.lt_u
                        br_if 3 (;@7;)
                        get_local 7
                        get_local 4
                        i32.const 4
                        i32.or
                        i32.lt_u
                        br_if 3 (;@7;)
                        get_local 7
                        get_local 4
                        i32.sub
                        i32.const 131073
                        i32.lt_u
                        br_if 8 (;@2;)
                        br 3 (;@7;)
                      end
                      get_local 7
                      get_local 4
                      i32.sub
                      tee_local 2
                      i32.const 16
                      i32.lt_u
                      br_if 7 (;@2;)
                      get_local 5
                      get_local 4
                      get_local 6
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 2
                      i32.or
                      i32.store
                      get_local 8
                      get_local 4
                      i32.add
                      tee_local 3
                      get_local 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      get_local 9
                      get_local 9
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local 0
                      get_local 3
                      get_local 2
                      call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::h5cf8effe188ad50a
                      br 7 (;@2;)
                    end
                    get_local 0
                    i32.load offset=404
                    get_local 7
                    i32.add
                    tee_local 7
                    get_local 4
                    i32.le_u
                    br_if 1 (;@7;)
                    get_local 5
                    get_local 4
                    get_local 6
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    get_local 8
                    get_local 4
                    i32.add
                    tee_local 2
                    get_local 7
                    get_local 4
                    i32.sub
                    tee_local 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local 0
                    i32.const 404
                    i32.add
                    get_local 3
                    i32.store
                    get_local 0
                    i32.const 412
                    i32.add
                    get_local 2
                    i32.store
                    br 6 (;@2;)
                  end
                  get_local 0
                  i32.load offset=400
                  get_local 7
                  i32.add
                  tee_local 7
                  get_local 4
                  i32.ge_u
                  br_if 1 (;@6;)
                end
                get_local 0
                get_local 2
                call $dlmalloc::dlmalloc::Dlmalloc::malloc::h51a7b039c3ad23bd
                tee_local 4
                i32.eqz
                br_if 5 (;@1;)
                get_local 4
                get_local 1
                get_local 2
                get_local 5
                i32.load
                tee_local 3
                i32.const -8
                i32.and
                i32.const 4
                i32.const 8
                get_local 3
                i32.const 3
                i32.and
                select
                i32.sub
                tee_local 3
                get_local 3
                get_local 2
                i32.gt_u
                select
                call $memcpy
                set_local 2
                get_local 0
                get_local 1
                call $dlmalloc::dlmalloc::Dlmalloc::free::hfb7302cc170c9b73
                get_local 2
                return
              end
              block  ;; label = @6
                block  ;; label = @7
                  get_local 7
                  get_local 4
                  i32.sub
                  tee_local 2
                  i32.const 16
                  i32.ge_u
                  br_if 0 (;@7;)
                  get_local 5
                  get_local 6
                  i32.const 1
                  i32.and
                  get_local 7
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  get_local 8
                  get_local 7
                  i32.add
                  tee_local 2
                  get_local 2
                  i32.load offset=4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  set_local 2
                  i32.const 0
                  set_local 3
                  br 1 (;@6;)
                end
                get_local 5
                get_local 4
                get_local 6
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                get_local 8
                get_local 4
                i32.add
                tee_local 3
                get_local 2
                i32.const 1
                i32.or
                i32.store offset=4
                get_local 8
                get_local 7
                i32.add
                tee_local 4
                get_local 2
                i32.store
                get_local 4
                get_local 4
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
              end
              get_local 0
              i32.const 408
              i32.add
              get_local 3
              i32.store
              get_local 0
              i32.const 400
              i32.add
              get_local 2
              i32.store
              br 3 (;@2;)
            end
            get_local 0
            get_local 9
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
            br 1 (;@3;)
          end
          get_local 0
          get_local 0
          i32.load
          i32.const -2
          get_local 6
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        block  ;; label = @3
          get_local 2
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          get_local 5
          get_local 7
          get_local 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          get_local 8
          get_local 7
          i32.add
          tee_local 2
          get_local 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        get_local 5
        get_local 4
        get_local 5
        i32.load
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        get_local 8
        get_local 4
        i32.add
        tee_local 3
        get_local 2
        i32.const 3
        i32.or
        i32.store offset=4
        get_local 8
        get_local 7
        i32.add
        tee_local 4
        get_local 4
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        get_local 0
        get_local 3
        get_local 2
        call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::h5cf8effe188ad50a
      end
      get_local 1
      set_local 3
    end
    get_local 3)
  (func $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::h5cf8effe188ad50a (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    get_local 1
    get_local 2
    i32.add
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    get_local 1
                    i32.load offset=4
                    tee_local 4
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    get_local 4
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    get_local 1
                    i32.load
                    tee_local 4
                    get_local 2
                    i32.add
                    set_local 2
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 0
                          i32.load offset=408
                          get_local 1
                          get_local 4
                          i32.sub
                          tee_local 1
                          i32.eq
                          br_if 0 (;@11;)
                          get_local 4
                          i32.const 255
                          i32.gt_u
                          br_if 1 (;@10;)
                          get_local 1
                          i32.load offset=12
                          tee_local 5
                          get_local 1
                          i32.load offset=8
                          tee_local 6
                          i32.eq
                          br_if 2 (;@9;)
                          get_local 6
                          get_local 5
                          i32.store offset=12
                          get_local 5
                          get_local 6
                          i32.store offset=8
                          br 3 (;@8;)
                        end
                        get_local 3
                        i32.load offset=4
                        i32.const 3
                        i32.and
                        i32.const 3
                        i32.ne
                        br_if 2 (;@8;)
                        get_local 0
                        get_local 2
                        i32.store offset=400
                        get_local 3
                        i32.const 4
                        i32.add
                        tee_local 0
                        get_local 0
                        i32.load
                        i32.const -2
                        i32.and
                        i32.store
                        get_local 1
                        get_local 2
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        get_local 3
                        get_local 2
                        i32.store
                        return
                      end
                      get_local 0
                      get_local 1
                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
                      br 1 (;@8;)
                    end
                    get_local 0
                    get_local 0
                    i32.load
                    i32.const -2
                    get_local 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 3
                      i32.load offset=4
                      tee_local 4
                      i32.const 2
                      i32.and
                      br_if 0 (;@9;)
                      get_local 0
                      i32.load offset=412
                      get_local 3
                      i32.eq
                      br_if 1 (;@8;)
                      get_local 0
                      i32.load offset=408
                      get_local 3
                      i32.eq
                      br_if 3 (;@6;)
                      get_local 4
                      i32.const -8
                      i32.and
                      tee_local 5
                      get_local 2
                      i32.add
                      set_local 2
                      get_local 5
                      i32.const 255
                      i32.gt_u
                      br_if 4 (;@5;)
                      get_local 3
                      i32.load offset=12
                      tee_local 5
                      get_local 3
                      i32.load offset=8
                      tee_local 3
                      i32.eq
                      br_if 6 (;@3;)
                      get_local 3
                      get_local 5
                      i32.store offset=12
                      get_local 5
                      get_local 3
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    get_local 3
                    i32.const 4
                    i32.add
                    get_local 4
                    i32.const -2
                    i32.and
                    i32.store
                    get_local 1
                    get_local 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local 1
                    get_local 2
                    i32.add
                    get_local 2
                    i32.store
                    br 7 (;@1;)
                  end
                  get_local 0
                  i32.const 412
                  i32.add
                  get_local 1
                  i32.store
                  get_local 0
                  get_local 0
                  i32.load offset=404
                  get_local 2
                  i32.add
                  tee_local 2
                  i32.store offset=404
                  get_local 1
                  get_local 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local 1
                  get_local 0
                  i32.load offset=408
                  i32.eq
                  br_if 3 (;@4;)
                end
                return
              end
              get_local 0
              i32.const 408
              i32.add
              get_local 1
              i32.store
              get_local 0
              get_local 0
              i32.load offset=400
              get_local 2
              i32.add
              tee_local 2
              i32.store offset=400
              get_local 1
              get_local 2
              i32.const 1
              i32.or
              i32.store offset=4
              get_local 1
              get_local 2
              i32.add
              get_local 2
              i32.store
              return
            end
            get_local 0
            get_local 3
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
            br 2 (;@2;)
          end
          get_local 0
          i32.const 0
          i32.store offset=400
          get_local 0
          i32.const 408
          i32.add
          i32.const 0
          i32.store
          return
        end
        get_local 0
        get_local 0
        i32.load
        i32.const -2
        get_local 4
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      get_local 1
      get_local 2
      i32.const 1
      i32.or
      i32.store offset=4
      get_local 1
      get_local 2
      i32.add
      get_local 2
      i32.store
      get_local 1
      get_local 0
      i32.const 408
      i32.add
      i32.load
      i32.ne
      br_if 0 (;@1;)
      get_local 0
      get_local 2
      i32.store offset=400
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
          get_local 0
          get_local 2
          i32.const 3
          i32.shr_u
          tee_local 3
          i32.const 3
          i32.shl
          i32.add
          i32.const 8
          i32.add
          set_local 2
          get_local 0
          i32.load
          tee_local 4
          i32.const 1
          get_local 3
          i32.const 31
          i32.and
          i32.shl
          tee_local 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          get_local 2
          i32.load offset=8
          set_local 0
          br 2 (;@1;)
        end
        get_local 0
        get_local 1
        get_local 2
        call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hc7f422364de19275
        return
      end
      get_local 0
      get_local 4
      get_local 3
      i32.or
      i32.store
      get_local 2
      set_local 0
    end
    get_local 2
    i32.const 8
    i32.add
    get_local 1
    i32.store
    get_local 0
    get_local 1
    i32.store offset=12
    get_local 1
    get_local 2
    i32.store offset=12
    get_local 1
    get_local 0
    i32.store offset=8)
  (func $dlmalloc::dlmalloc::Dlmalloc::free::hfb7302cc170c9b73 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    get_local 1
    i32.const -8
    i32.add
    tee_local 2
    get_local 1
    i32.const -4
    i32.add
    i32.load
    tee_local 3
    i32.const -8
    i32.and
    tee_local 1
    i32.add
    set_local 4
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        get_local 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        get_local 2
        i32.load
        tee_local 3
        get_local 1
        i32.add
        set_local 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              get_local 0
              i32.load offset=408
              get_local 2
              get_local 3
              i32.sub
              tee_local 2
              i32.eq
              br_if 0 (;@5;)
              get_local 3
              i32.const 255
              i32.gt_u
              br_if 1 (;@4;)
              get_local 2
              i32.load offset=12
              tee_local 5
              get_local 2
              i32.load offset=8
              tee_local 6
              i32.eq
              br_if 2 (;@3;)
              get_local 6
              get_local 5
              i32.store offset=12
              get_local 5
              get_local 6
              i32.store offset=8
              br 3 (;@2;)
            end
            get_local 4
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            get_local 0
            get_local 1
            i32.store offset=400
            get_local 4
            i32.const 4
            i32.add
            tee_local 0
            get_local 0
            i32.load
            i32.const -2
            i32.and
            i32.store
            get_local 2
            get_local 1
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 2
            get_local 1
            i32.add
            get_local 1
            i32.store
            return
          end
          get_local 0
          get_local 2
          call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
          br 1 (;@2;)
        end
        get_local 0
        get_local 0
        i32.load
        i32.const -2
        get_local 3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 4
                        i32.load offset=4
                        tee_local 3
                        i32.const 2
                        i32.and
                        br_if 0 (;@10;)
                        get_local 0
                        i32.load offset=412
                        get_local 4
                        i32.eq
                        br_if 1 (;@9;)
                        get_local 0
                        i32.load offset=408
                        get_local 4
                        i32.eq
                        br_if 2 (;@8;)
                        get_local 3
                        i32.const -8
                        i32.and
                        tee_local 5
                        get_local 1
                        i32.add
                        set_local 1
                        get_local 5
                        i32.const 255
                        i32.gt_u
                        br_if 3 (;@7;)
                        get_local 4
                        i32.load offset=12
                        tee_local 5
                        get_local 4
                        i32.load offset=8
                        tee_local 4
                        i32.eq
                        br_if 4 (;@6;)
                        get_local 4
                        get_local 5
                        i32.store offset=12
                        get_local 5
                        get_local 4
                        i32.store offset=8
                        br 5 (;@5;)
                      end
                      get_local 4
                      i32.const 4
                      i32.add
                      get_local 3
                      i32.const -2
                      i32.and
                      i32.store
                      get_local 2
                      get_local 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local 2
                      get_local 1
                      i32.add
                      get_local 1
                      i32.store
                      br 7 (;@2;)
                    end
                    get_local 0
                    i32.const 412
                    i32.add
                    get_local 2
                    i32.store
                    get_local 0
                    get_local 0
                    i32.load offset=404
                    get_local 1
                    i32.add
                    tee_local 1
                    i32.store offset=404
                    get_local 2
                    get_local 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      get_local 2
                      get_local 0
                      i32.load offset=408
                      i32.ne
                      br_if 0 (;@9;)
                      get_local 0
                      i32.const 0
                      i32.store offset=400
                      get_local 0
                      i32.const 408
                      i32.add
                      i32.const 0
                      i32.store
                    end
                    get_local 0
                    i32.load offset=440
                    tee_local 3
                    get_local 1
                    i32.ge_u
                    br_if 7 (;@1;)
                    get_local 0
                    i32.const 412
                    i32.add
                    i32.load
                    tee_local 1
                    i32.eqz
                    br_if 7 (;@1;)
                    block  ;; label = @9
                      get_local 0
                      i32.const 404
                      i32.add
                      i32.load
                      tee_local 5
                      i32.const 41
                      i32.lt_u
                      br_if 0 (;@9;)
                      get_local 0
                      i32.const 424
                      i32.add
                      set_local 2
                      loop  ;; label = @10
                        block  ;; label = @11
                          get_local 2
                          i32.load
                          tee_local 4
                          get_local 1
                          i32.gt_u
                          br_if 0 (;@11;)
                          get_local 4
                          get_local 2
                          i32.load offset=4
                          i32.add
                          get_local 1
                          i32.gt_u
                          br_if 2 (;@9;)
                        end
                        get_local 2
                        i32.load offset=8
                        tee_local 2
                        br_if 0 (;@10;)
                      end
                    end
                    get_local 0
                    i32.const 432
                    i32.add
                    i32.load
                    tee_local 1
                    i32.eqz
                    br_if 4 (;@4;)
                    i32.const 0
                    set_local 2
                    loop  ;; label = @9
                      get_local 2
                      i32.const 1
                      i32.add
                      set_local 2
                      get_local 1
                      i32.load offset=8
                      tee_local 1
                      br_if 0 (;@9;)
                    end
                    get_local 2
                    i32.const 4095
                    get_local 2
                    i32.const 4095
                    i32.gt_u
                    select
                    set_local 2
                    br 5 (;@3;)
                  end
                  get_local 0
                  i32.const 408
                  i32.add
                  get_local 2
                  i32.store
                  get_local 0
                  get_local 0
                  i32.load offset=400
                  get_local 1
                  i32.add
                  tee_local 1
                  i32.store offset=400
                  get_local 2
                  get_local 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local 2
                  get_local 1
                  i32.add
                  get_local 1
                  i32.store
                  return
                end
                get_local 0
                get_local 4
                call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::h63194180c9a601cc
                br 1 (;@5;)
              end
              get_local 0
              get_local 0
              i32.load
              i32.const -2
              get_local 3
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store
            end
            get_local 2
            get_local 1
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 2
            get_local 1
            i32.add
            get_local 1
            i32.store
            get_local 2
            get_local 0
            i32.const 408
            i32.add
            i32.load
            i32.ne
            br_if 2 (;@2;)
            get_local 0
            get_local 1
            i32.store offset=400
            return
          end
          i32.const 4095
          set_local 2
        end
        get_local 0
        get_local 2
        i32.store offset=448
        get_local 5
        get_local 3
        i32.le_u
        br_if 1 (;@1;)
        get_local 0
        i32.const 440
        i32.add
        i32.const -1
        i32.store
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 1
                i32.const 255
                i32.gt_u
                br_if 0 (;@6;)
                get_local 0
                get_local 1
                i32.const 3
                i32.shr_u
                tee_local 4
                i32.const 3
                i32.shl
                i32.add
                i32.const 8
                i32.add
                set_local 1
                get_local 0
                i32.load
                tee_local 3
                i32.const 1
                get_local 4
                i32.const 31
                i32.and
                i32.shl
                tee_local 4
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                get_local 1
                i32.const 8
                i32.add
                set_local 4
                get_local 1
                i32.load offset=8
                set_local 0
                br 2 (;@4;)
              end
              get_local 0
              get_local 2
              get_local 1
              call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hc7f422364de19275
              get_local 0
              get_local 0
              i32.load offset=448
              i32.const -1
              i32.add
              tee_local 2
              i32.store offset=448
              get_local 2
              br_if 4 (;@1;)
              get_local 0
              i32.const 432
              i32.add
              i32.load
              tee_local 1
              i32.eqz
              br_if 2 (;@3;)
              i32.const 0
              set_local 2
              loop  ;; label = @6
                get_local 2
                i32.const 1
                i32.add
                set_local 2
                get_local 1
                i32.load offset=8
                tee_local 1
                br_if 0 (;@6;)
              end
              get_local 2
              i32.const 4095
              get_local 2
              i32.const 4095
              i32.gt_u
              select
              set_local 2
              br 3 (;@2;)
            end
            get_local 0
            get_local 3
            get_local 4
            i32.or
            i32.store
            get_local 1
            i32.const 8
            i32.add
            set_local 4
            get_local 1
            set_local 0
          end
          get_local 4
          get_local 2
          i32.store
          get_local 0
          get_local 2
          i32.store offset=12
          get_local 2
          get_local 1
          i32.store offset=12
          get_local 2
          get_local 0
          i32.store offset=8
          return
        end
        i32.const 4095
        set_local 2
      end
      get_local 0
      i32.const 448
      i32.add
      get_local 2
      i32.store
    end)
  (func $dlmalloc::dlmalloc::Dlmalloc::memalign::hdd2b339282aae11e (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    set_local 3
    block  ;; label = @1
      i32.const -64
      get_local 1
      i32.const 16
      get_local 1
      i32.const 16
      i32.gt_u
      select
      tee_local 1
      i32.sub
      get_local 2
      i32.le_u
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.const 16
      get_local 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      get_local 2
      i32.const 11
      i32.lt_u
      select
      tee_local 4
      i32.add
      i32.const 12
      i32.add
      call $dlmalloc::dlmalloc::Dlmalloc::malloc::h51a7b039c3ad23bd
      tee_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 2
      i32.const -8
      i32.add
      set_local 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 1
            i32.const -1
            i32.add
            tee_local 5
            get_local 2
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            get_local 2
            i32.const -4
            i32.add
            tee_local 6
            i32.load
            tee_local 7
            i32.const -8
            i32.and
            get_local 5
            get_local 2
            i32.add
            i32.const 0
            get_local 1
            i32.sub
            i32.and
            i32.const -8
            i32.add
            tee_local 2
            get_local 2
            get_local 1
            i32.add
            get_local 2
            get_local 3
            i32.sub
            i32.const 16
            i32.gt_u
            select
            tee_local 1
            get_local 3
            i32.sub
            tee_local 2
            i32.sub
            set_local 5
            get_local 7
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            get_local 1
            get_local 5
            get_local 1
            i32.load offset=4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            get_local 1
            get_local 5
            i32.add
            tee_local 5
            get_local 5
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 6
            get_local 2
            get_local 6
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            get_local 1
            get_local 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 0
            get_local 3
            get_local 2
            call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::h5cf8effe188ad50a
            br 2 (;@2;)
          end
          get_local 3
          set_local 1
          br 1 (;@2;)
        end
        get_local 3
        i32.load
        set_local 3
        get_local 1
        get_local 5
        i32.store offset=4
        get_local 1
        get_local 3
        get_local 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        get_local 1
        i32.load offset=4
        tee_local 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 2
        i32.const -8
        i32.and
        tee_local 3
        get_local 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        get_local 1
        i32.const 4
        i32.add
        get_local 4
        get_local 2
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        get_local 1
        get_local 4
        i32.add
        tee_local 2
        get_local 3
        get_local 4
        i32.sub
        tee_local 4
        i32.const 3
        i32.or
        i32.store offset=4
        get_local 1
        get_local 3
        i32.add
        tee_local 3
        get_local 3
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        get_local 0
        get_local 2
        get_local 4
        call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::h5cf8effe188ad50a
      end
      get_local 1
      i32.const 8
      i32.add
      set_local 3
    end
    get_local 3)
  (func $alloc::string::String::from_utf8_lossy::h1c494a6ee8944829 (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 8
    i32.add
    get_local 1
    get_local 2
    call $core::str::lossy::Utf8Lossy::from_bytes::h96ecce4b2d933598
    get_local 3
    get_local 3
    i32.load offset=8
    get_local 3
    i32.load offset=12
    call $core::str::lossy::Utf8Lossy::chunks::h58d2feedca11444d
    get_local 3
    get_local 3
    i64.load
    i64.store offset=16
    get_local 3
    i32.const 48
    i32.add
    get_local 3
    i32.const 16
    i32.add
    call $_$LT$core..str..lossy..Utf8LossyChunksIter$LT$$u27$a$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$::next::hd29fa4210374c419
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 3
                          i32.load offset=48
                          tee_local 4
                          i32.eqz
                          br_if 0 (;@11;)
                          get_local 3
                          i32.load offset=52
                          tee_local 5
                          get_local 2
                          i32.ne
                          br_if 2 (;@9;)
                          get_local 0
                          get_local 4
                          i32.store offset=4
                          br 1 (;@10;)
                        end
                        get_local 0
                        i32.const 1049233
                        i32.store offset=4
                        i32.const 0
                        set_local 2
                      end
                      get_local 0
                      i32.const 0
                      i32.store
                      get_local 0
                      i32.const 8
                      i32.add
                      get_local 2
                      i32.store
                      br 1 (;@8;)
                    end
                    get_local 2
                    i32.const -1
                    i32.le_s
                    br_if 3 (;@5;)
                    get_local 3
                    i32.const 60
                    i32.add
                    i32.load
                    set_local 6
                    i32.const 1
                    set_local 1
                    block  ;; label = @9
                      get_local 2
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 2
                      i32.const 1
                      call $__rust_alloc
                      tee_local 1
                      i32.eqz
                      br_if 6 (;@3;)
                    end
                    get_local 3
                    get_local 2
                    i32.store offset=28
                    get_local 3
                    get_local 1
                    i32.store offset=24
                    get_local 3
                    i32.const 0
                    i32.store offset=32
                    get_local 3
                    i32.const 24
                    i32.add
                    i32.const 0
                    get_local 5
                    i32.const 1
                    i32.const 1
                    call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h35e91a82238a0618__.llvm.14427657897426424632_
                    i32.const 255
                    i32.and
                    tee_local 2
                    i32.const 2
                    i32.ne
                    br_if 4 (;@4;)
                    get_local 3
                    i32.const 32
                    i32.add
                    tee_local 2
                    get_local 2
                    i32.load
                    tee_local 2
                    get_local 5
                    i32.add
                    tee_local 1
                    i32.store
                    get_local 2
                    get_local 3
                    i32.load offset=24
                    i32.add
                    get_local 5
                    get_local 4
                    get_local 5
                    call $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h0dc7ba468f091222
                    block  ;; label = @9
                      get_local 6
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 3
                      i32.const 24
                      i32.add
                      get_local 1
                      i32.const 3
                      i32.const 1
                      i32.const 1
                      call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h35e91a82238a0618__.llvm.14427657897426424632_
                      i32.const 255
                      i32.and
                      tee_local 2
                      i32.const 2
                      i32.ne
                      br_if 7 (;@2;)
                      get_local 3
                      i32.const 32
                      i32.add
                      tee_local 2
                      get_local 2
                      i32.load
                      tee_local 2
                      i32.const 3
                      i32.add
                      tee_local 1
                      i32.store
                      get_local 2
                      get_local 3
                      i32.load offset=24
                      i32.add
                      i32.const 3
                      i32.const 1049233
                      i32.const 3
                      call $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h0dc7ba468f091222
                    end
                    get_local 3
                    get_local 3
                    i64.load offset=16
                    i64.store offset=40
                    get_local 3
                    i32.const 48
                    i32.add
                    get_local 3
                    i32.const 40
                    i32.add
                    call $_$LT$core..str..lossy..Utf8LossyChunksIter$LT$$u27$a$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$::next::hd29fa4210374c419
                    block  ;; label = @9
                      get_local 3
                      i32.load offset=48
                      tee_local 4
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 3
                      i32.const 60
                      i32.add
                      set_local 7
                      get_local 3
                      i32.const 32
                      i32.add
                      set_local 5
                      loop  ;; label = @10
                        get_local 7
                        i32.load
                        set_local 6
                        get_local 3
                        i32.const 24
                        i32.add
                        get_local 1
                        get_local 3
                        i32.load offset=52
                        tee_local 2
                        i32.const 1
                        i32.const 1
                        call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h35e91a82238a0618__.llvm.14427657897426424632_
                        i32.const 255
                        i32.and
                        tee_local 1
                        i32.const 2
                        i32.ne
                        br_if 3 (;@7;)
                        get_local 5
                        get_local 5
                        i32.load
                        tee_local 8
                        get_local 2
                        i32.add
                        tee_local 1
                        i32.store
                        get_local 8
                        get_local 3
                        i32.load offset=24
                        i32.add
                        get_local 2
                        get_local 4
                        get_local 2
                        call $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h0dc7ba468f091222
                        block  ;; label = @11
                          get_local 6
                          i32.eqz
                          br_if 0 (;@11;)
                          get_local 3
                          i32.const 24
                          i32.add
                          get_local 1
                          i32.const 3
                          i32.const 1
                          i32.const 1
                          call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h35e91a82238a0618__.llvm.14427657897426424632_
                          i32.const 255
                          i32.and
                          tee_local 2
                          i32.const 2
                          i32.ne
                          br_if 5 (;@6;)
                          get_local 5
                          get_local 5
                          i32.load
                          tee_local 2
                          i32.const 3
                          i32.add
                          tee_local 1
                          i32.store
                          get_local 2
                          get_local 3
                          i32.load offset=24
                          i32.add
                          i32.const 3
                          i32.const 1049233
                          i32.const 3
                          call $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h0dc7ba468f091222
                        end
                        get_local 3
                        i32.const 48
                        i32.add
                        get_local 3
                        i32.const 40
                        i32.add
                        call $_$LT$core..str..lossy..Utf8LossyChunksIter$LT$$u27$a$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$::next::hd29fa4210374c419
                        get_local 3
                        i32.load offset=48
                        tee_local 4
                        br_if 0 (;@10;)
                      end
                    end
                    get_local 0
                    i32.const 1
                    i32.store
                    get_local 0
                    i32.const 12
                    i32.add
                    get_local 3
                    i32.const 32
                    i32.add
                    i32.load
                    i32.store
                    get_local 0
                    get_local 3
                    i64.load offset=24
                    i64.store offset=4 align=4
                  end
                  get_local 3
                  i32.const 64
                  i32.add
                  set_global 0
                  return
                end
                get_local 1
                i32.const 1
                i32.and
                i32.eqz
                br_if 5 (;@1;)
                i32.const 1050604
                call $core::panicking::panic::haa57ffd51eb03b56
                unreachable
              end
              get_local 2
              i32.const 1
              i32.and
              i32.eqz
              br_if 4 (;@1;)
              i32.const 1050604
              call $core::panicking::panic::haa57ffd51eb03b56
              unreachable
            end
            call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::allocate_in::_$u7b$$u7b$closure$u7d$$u7d$::h4664b3999a9db8a1__.llvm.14427657897426424632_
            unreachable
          end
          get_local 2
          i32.const 1
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          i32.const 1050604
          call $core::panicking::panic::haa57ffd51eb03b56
          unreachable
        end
        get_local 2
        i32.const 1
        call $alloc::alloc::handle_alloc_error::hf00ae3c1f4b3ee29
        unreachable
      end
      get_local 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1050604
      call $core::panicking::panic::haa57ffd51eb03b56
      unreachable
    end
    call $alloc::raw_vec::capacity_overflow::hae8ddae25c90ff9b
    unreachable)
  (func $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::allocate_in::_$u7b$$u7b$closure$u7d$$u7d$::h4664b3999a9db8a1__.llvm.14427657897426424632_ (type 3)
    call $alloc::raw_vec::capacity_overflow::hae8ddae25c90ff9b
    unreachable)
  (func $alloc::raw_vec::capacity_overflow::hae8ddae25c90ff9b (type 3)
    i32.const 1050628
    call $core::panicking::panic::haa57ffd51eb03b56
    unreachable)
  (func $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h35e91a82238a0618__.llvm.14427657897426424632_ (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 2
    set_local 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.load offset=4
          tee_local 6
          get_local 1
          i32.sub
          get_local 2
          i32.ge_u
          br_if 0 (;@3;)
          get_local 1
          get_local 2
          i32.add
          tee_local 2
          get_local 1
          i32.lt_u
          set_local 1
          block  ;; label = @4
            block  ;; label = @5
              get_local 4
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              set_local 5
              get_local 1
              br_if 2 (;@3;)
              get_local 6
              i32.const 1
              i32.shl
              tee_local 1
              get_local 2
              get_local 2
              get_local 1
              i32.lt_u
              select
              set_local 2
              br 1 (;@4;)
            end
            i32.const 0
            set_local 5
            get_local 1
            br_if 1 (;@3;)
          end
          i32.const 0
          set_local 5
          get_local 2
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 6
                i32.eqz
                br_if 0 (;@6;)
                get_local 0
                i32.load
                get_local 6
                i32.const 1
                get_local 2
                call $__rust_realloc
                tee_local 1
                i32.eqz
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              get_local 2
              i32.const 1
              call $__rust_alloc
              tee_local 1
              br_if 1 (;@4;)
            end
            get_local 3
            br_if 3 (;@1;)
          end
          get_local 1
          i32.eqz
          br_if 1 (;@2;)
          get_local 0
          get_local 1
          i32.store
          get_local 0
          i32.const 4
          i32.add
          get_local 2
          i32.store
          i32.const 2
          set_local 5
        end
        get_local 5
        return
      end
      i32.const 1
      return
    end
    get_local 2
    i32.const 1
    call $alloc::alloc::handle_alloc_error::hf00ae3c1f4b3ee29
    unreachable)
  (func $alloc::alloc::handle_alloc_error::hf00ae3c1f4b3ee29 (type 0) (param i32 i32)
    get_local 0
    get_local 1
    call $rust_oom
    unreachable)
  (func $alloc::str::_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$::to_owned::hc3cb9985c37e49aa (type 5) (param i32 i32 i32)
    get_local 0
    get_local 1
    get_local 2
    call $alloc::slice::_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$::to_owned::h2ab9a0bec30e7271)
  (func $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h0dc7ba468f091222 (type 8) (param i32 i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 96
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    get_local 3
    i32.store offset=12
    get_local 4
    get_local 4
    i32.const 8
    i32.add
    i32.store offset=16
    get_local 4
    get_local 4
    i32.const 12
    i32.add
    i32.store offset=20
    block  ;; label = @1
      get_local 1
      get_local 3
      i32.ne
      br_if 0 (;@1;)
      get_local 0
      get_local 2
      get_local 1
      call $memcpy
      drop
      get_local 4
      i32.const 96
      i32.add
      set_global 0
      return
    end
    get_local 4
    i32.const 72
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    get_local 4
    i32.const 48
    i32.add
    i32.const 12
    i32.add
    i32.const 17
    i32.store
    get_local 4
    i32.const 48
    i32.add
    i32.const 20
    i32.add
    i32.const 8
    i32.store
    get_local 4
    i32.const 24
    i32.add
    i32.const 12
    i32.add
    i32.const 3
    i32.store
    get_local 4
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    get_local 4
    i32.const 1050676
    i32.store offset=72
    get_local 4
    i64.const 1
    i64.store offset=76 align=4
    get_local 4
    i32.const 1049424
    i32.store offset=88
    get_local 4
    i32.const 17
    i32.store offset=52
    get_local 4
    i32.const 1050652
    i32.store offset=24
    get_local 4
    i32.const 3
    i32.store offset=28
    get_local 4
    i32.const 1049424
    i32.store offset=32
    get_local 4
    get_local 4
    i32.const 16
    i32.add
    i32.store offset=48
    get_local 4
    get_local 4
    i32.const 20
    i32.add
    i32.store offset=56
    get_local 4
    get_local 4
    i32.const 72
    i32.add
    i32.store offset=64
    get_local 4
    get_local 4
    i32.const 48
    i32.add
    i32.store offset=40
    get_local 4
    i32.const 24
    i32.add
    i32.const 1050684
    call $core::panicking::panic_fmt::h429a06507aba9228
    unreachable)
  (func $alloc::slice::_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$::to_owned::h2ab9a0bec30e7271 (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 2
            i32.const -1
            i32.le_s
            br_if 0 (;@4;)
            i32.const 1
            set_local 4
            block  ;; label = @5
              get_local 2
              i32.eqz
              br_if 0 (;@5;)
              get_local 2
              i32.const 1
              call $__rust_alloc
              tee_local 4
              i32.eqz
              br_if 3 (;@2;)
            end
            get_local 3
            get_local 4
            i32.store
            get_local 3
            get_local 2
            i32.store offset=4
            get_local 3
            i32.const 0
            i32.store offset=8
            get_local 3
            i32.const 0
            get_local 2
            i32.const 1
            i32.const 1
            call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::reserve_internal::h35e91a82238a0618__.llvm.14427657897426424632_
            i32.const 255
            i32.and
            tee_local 4
            i32.const 2
            i32.ne
            br_if 1 (;@3;)
            get_local 3
            i32.const 8
            i32.add
            tee_local 4
            get_local 4
            i32.load
            tee_local 5
            get_local 2
            i32.add
            i32.store
            get_local 5
            get_local 3
            i32.load
            i32.add
            get_local 2
            get_local 1
            get_local 2
            call $core::slice::_$LT$impl$u20$$u5b$T$u5d$$GT$::copy_from_slice::h0dc7ba468f091222
            get_local 0
            i32.const 8
            i32.add
            get_local 4
            i32.load
            i32.store
            get_local 0
            get_local 3
            i64.load
            i64.store align=4
            get_local 3
            i32.const 16
            i32.add
            set_global 0
            return
          end
          call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::allocate_in::_$u7b$$u7b$closure$u7d$$u7d$::h4664b3999a9db8a1__.llvm.14427657897426424632_
          unreachable
        end
        get_local 4
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        call $alloc::raw_vec::capacity_overflow::hae8ddae25c90ff9b
        unreachable
      end
      get_local 2
      i32.const 1
      call $alloc::alloc::handle_alloc_error::hf00ae3c1f4b3ee29
      unreachable
    end
    i32.const 1050604
    call $core::panicking::panic::haa57ffd51eb03b56
    unreachable)
  (func $_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Debug$GT$::fmt::h5546f8bf6f632664 (type 2) (param i32 i32) (result i32)
    get_local 0
    i32.load
    set_local 0
    block  ;; label = @1
      get_local 1
      call $core::fmt::Formatter::debug_lower_hex::h8b36d437500bba99
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      call $core::fmt::num::_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$::fmt::h7b11fb9738467ec7
      return
    end
    block  ;; label = @1
      get_local 1
      call $core::fmt::Formatter::debug_upper_hex::he6cf234ec515ef11
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      call $core::fmt::num::_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$::fmt::hfdee81851d360dd9
      return
    end
    get_local 0
    get_local 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::hf62674be60b18fce)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$::fmt::hdf800f9194f24a6a (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    get_global 0
    i32.const 128
    i32.sub
    tee_local 2
    set_global 0
    get_local 0
    i32.load
    set_local 3
    i32.const 0
    set_local 0
    loop  ;; label = @1
      get_local 2
      get_local 0
      i32.add
      i32.const 127
      i32.add
      get_local 3
      i32.const 15
      i32.and
      tee_local 4
      i32.const 48
      i32.or
      get_local 4
      i32.const 87
      i32.add
      get_local 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      get_local 0
      i32.const -1
      i32.add
      set_local 0
      get_local 3
      i32.const 4
      i32.shr_u
      tee_local 3
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      get_local 0
      i32.const 128
      i32.add
      tee_local 3
      i32.const 129
      i32.ge_u
      br_if 0 (;@1;)
      get_local 1
      i32.const 1
      i32.const 1049552
      i32.const 2
      get_local 2
      get_local 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      get_local 0
      i32.sub
      call $core::fmt::Formatter::pad_integral::h57896398f347489a
      set_local 0
      get_local 2
      i32.const 128
      i32.add
      set_global 0
      get_local 0
      return
    end
    get_local 3
    i32.const 128
    call $core::slice::slice_index_order_fail::he23bfdf4a52996ab
    unreachable)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$::fmt::h88f16b821a11507f (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    get_global 0
    i32.const 128
    i32.sub
    tee_local 2
    set_global 0
    get_local 0
    i32.load
    set_local 3
    i32.const 0
    set_local 0
    loop  ;; label = @1
      get_local 2
      get_local 0
      i32.add
      i32.const 127
      i32.add
      get_local 3
      i32.const 15
      i32.and
      tee_local 4
      i32.const 48
      i32.or
      get_local 4
      i32.const 55
      i32.add
      get_local 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      get_local 0
      i32.const -1
      i32.add
      set_local 0
      get_local 3
      i32.const 4
      i32.shr_u
      tee_local 3
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      get_local 0
      i32.const 128
      i32.add
      tee_local 3
      i32.const 129
      i32.ge_u
      br_if 0 (;@1;)
      get_local 1
      i32.const 1
      i32.const 1049552
      i32.const 2
      get_local 2
      get_local 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      get_local 0
      i32.sub
      call $core::fmt::Formatter::pad_integral::h57896398f347489a
      set_local 0
      get_local 2
      i32.const 128
      i32.add
      set_global 0
      get_local 0
      return
    end
    get_local 3
    i32.const 128
    call $core::slice::slice_index_order_fail::he23bfdf4a52996ab
    unreachable)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$::fmt::h07c075c29ca49ee7 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    i32.const 39
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load
        tee_local 0
        i32.const 10000
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 39
        set_local 3
        loop  ;; label = @3
          get_local 2
          i32.const 9
          i32.add
          get_local 3
          i32.add
          tee_local 4
          i32.const -4
          i32.add
          get_local 0
          get_local 0
          i32.const 10000
          i32.div_u
          tee_local 5
          i32.const 10000
          i32.mul
          i32.sub
          tee_local 6
          i32.const 100
          i32.div_u
          tee_local 7
          i32.const 1
          i32.shl
          i32.const 1049554
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          get_local 4
          i32.const -2
          i32.add
          get_local 6
          get_local 7
          i32.const 100
          i32.mul
          i32.sub
          i32.const 1
          i32.shl
          i32.const 1049554
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          get_local 3
          i32.const -4
          i32.add
          set_local 3
          get_local 0
          i32.const 99999999
          i32.gt_u
          set_local 4
          get_local 5
          set_local 0
          get_local 4
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      get_local 0
      set_local 5
    end
    block  ;; label = @1
      block  ;; label = @2
        get_local 5
        i32.const 100
        i32.lt_s
        br_if 0 (;@2;)
        get_local 2
        i32.const 9
        i32.add
        get_local 3
        i32.const -2
        i32.add
        tee_local 3
        i32.add
        get_local 5
        get_local 5
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        tee_local 0
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049554
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      get_local 5
      set_local 0
    end
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.const 9
        i32.gt_s
        br_if 0 (;@2;)
        get_local 2
        i32.const 9
        i32.add
        get_local 3
        i32.const -1
        i32.add
        tee_local 3
        i32.add
        tee_local 5
        get_local 0
        i32.const 48
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      get_local 2
      i32.const 9
      i32.add
      get_local 3
      i32.const -2
      i32.add
      tee_local 3
      i32.add
      tee_local 5
      get_local 0
      i32.const 1
      i32.shl
      i32.const 1049554
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    get_local 1
    i32.const 1
    i32.const 1049554
    i32.const 0
    get_local 5
    i32.const 39
    get_local 3
    i32.sub
    call $core::fmt::Formatter::pad_integral::h57896398f347489a
    set_local 0
    get_local 2
    i32.const 48
    i32.add
    set_global 0
    get_local 0)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$::fmt::h7b11fb9738467ec7 (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$::fmt::hdf800f9194f24a6a)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$::fmt::hfdee81851d360dd9 (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$::fmt::h88f16b821a11507f)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::hf62674be60b18fce (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$::fmt::h07c075c29ca49ee7)
  (func $core::slice::slice_index_len_fail::h70a7d5467e94555c (type 0) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 5
    i32.store
    get_local 2
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 5
    i32.store offset=36
    get_local 2
    i32.const 1050700
    i32.store offset=8
    get_local 2
    i32.const 2
    i32.store offset=12
    get_local 2
    i32.const 1049756
    i32.store offset=16
    get_local 2
    get_local 2
    i32.store offset=32
    get_local 2
    get_local 2
    i32.const 4
    i32.add
    i32.store offset=40
    get_local 2
    get_local 2
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 2
    i32.const 8
    i32.add
    i32.const 1050716
    call $core::panicking::panic_fmt::h429a06507aba9228
    unreachable)
  (func $core::slice::slice_index_order_fail::he23bfdf4a52996ab (type 0) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 5
    i32.store
    get_local 2
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 5
    i32.store offset=36
    get_local 2
    i32.const 1050732
    i32.store offset=8
    get_local 2
    i32.const 2
    i32.store offset=12
    get_local 2
    i32.const 1049756
    i32.store offset=16
    get_local 2
    get_local 2
    i32.store offset=32
    get_local 2
    get_local 2
    i32.const 4
    i32.add
    i32.store offset=40
    get_local 2
    get_local 2
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 2
    i32.const 8
    i32.add
    i32.const 1050748
    call $core::panicking::panic_fmt::h429a06507aba9228
    unreachable)
  (func $core::fmt::write::h37a139dd53a36e04 (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    i32.const 28
    i32.add
    tee_local 4
    get_local 1
    i32.store
    get_local 3
    i32.const 44
    i32.add
    tee_local 5
    get_local 2
    i32.const 20
    i32.add
    i32.load
    tee_local 1
    i32.store
    get_local 3
    i32.const 3
    i32.store8 offset=48
    get_local 3
    i32.const 36
    i32.add
    tee_local 6
    get_local 2
    i32.load offset=16
    tee_local 7
    get_local 1
    i32.const 3
    i32.shl
    tee_local 8
    i32.add
    i32.store
    get_local 3
    i64.const 137438953472
    i64.store
    i32.const 0
    set_local 1
    get_local 3
    i32.const 0
    i32.store offset=8
    get_local 3
    i32.const 0
    i32.store offset=16
    get_local 3
    get_local 0
    i32.store offset=24
    get_local 3
    get_local 7
    i32.store offset=32
    get_local 3
    get_local 7
    i32.store offset=40
    get_local 3
    get_local 2
    i32.load
    tee_local 9
    i32.store offset=56
    get_local 3
    get_local 9
    get_local 2
    i32.load offset=4
    i32.const 3
    i32.shl
    tee_local 10
    i32.add
    tee_local 11
    i32.store offset=60
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 2
                i32.load offset=8
                tee_local 0
                i32.eqz
                br_if 0 (;@6;)
                get_local 0
                i32.const 28
                i32.add
                set_local 7
                get_local 0
                get_local 2
                i32.const 12
                i32.add
                i32.load
                i32.const 36
                i32.mul
                i32.add
                set_local 12
                get_local 3
                i32.const 24
                i32.add
                set_local 13
                get_local 3
                i32.const 48
                i32.add
                set_local 14
                get_local 3
                i32.const 40
                i32.add
                set_local 15
                get_local 3
                i32.const 8
                i32.add
                set_local 16
                get_local 3
                i32.const 20
                i32.add
                set_local 17
                get_local 3
                i32.const 16
                i32.add
                set_local 18
                get_local 3
                i32.const 32
                i32.add
                set_local 19
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              get_local 0
                              get_local 12
                              i32.eq
                              br_if 0 (;@13;)
                              get_local 10
                              get_local 1
                              i32.eq
                              br_if 8 (;@5;)
                              get_local 13
                              i32.load
                              get_local 9
                              get_local 1
                              i32.add
                              tee_local 20
                              i32.load
                              get_local 20
                              i32.const 4
                              i32.add
                              i32.load
                              get_local 4
                              i32.load
                              i32.load offset=12
                              call_indirect (type 1)
                              br_if 4 (;@9;)
                              get_local 14
                              get_local 0
                              i32.load8_u offset=32
                              i32.store8
                              get_local 3
                              get_local 0
                              i32.load offset=8
                              i32.store offset=4
                              get_local 3
                              get_local 0
                              i32.load offset=12
                              i32.store
                              i32.const 0
                              set_local 8
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    get_local 0
                                    i32.load offset=24
                                    tee_local 21
                                    i32.const 1
                                    i32.eq
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      get_local 21
                                      i32.const 2
                                      i32.eq
                                      br_if 0 (;@17;)
                                      get_local 21
                                      i32.const 3
                                      i32.eq
                                      br_if 6 (;@11;)
                                      get_local 7
                                      i32.load
                                      set_local 2
                                      br 2 (;@15;)
                                    end
                                    get_local 19
                                    i32.load
                                    tee_local 21
                                    get_local 6
                                    i32.load
                                    i32.eq
                                    br_if 2 (;@14;)
                                    get_local 19
                                    get_local 21
                                    i32.const 8
                                    i32.add
                                    i32.store
                                    get_local 21
                                    i32.load offset=4
                                    i32.const 18
                                    i32.ne
                                    br_if 5 (;@11;)
                                    get_local 21
                                    i32.load
                                    i32.load
                                    set_local 2
                                    br 1 (;@15;)
                                  end
                                  get_local 7
                                  i32.load
                                  tee_local 21
                                  get_local 5
                                  i32.load
                                  tee_local 2
                                  i32.ge_u
                                  br_if 3 (;@12;)
                                  get_local 15
                                  i32.load
                                  get_local 21
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  tee_local 21
                                  i32.load offset=4
                                  i32.const 18
                                  i32.ne
                                  br_if 4 (;@11;)
                                  get_local 21
                                  i32.load
                                  i32.load
                                  set_local 2
                                end
                                i32.const 1
                                set_local 8
                                br 3 (;@11;)
                              end
                              br 2 (;@11;)
                            end
                            get_local 9
                            get_local 1
                            i32.add
                            set_local 0
                            br 8 (;@4;)
                          end
                          i32.const 1050804
                          get_local 21
                          get_local 2
                          call $core::panicking::panic_bounds_check::h8e752fa77de3cffe
                          unreachable
                        end
                        get_local 3
                        i32.const 12
                        i32.add
                        get_local 2
                        i32.store
                        get_local 16
                        get_local 8
                        i32.store
                        i32.const 0
                        set_local 8
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  get_local 0
                                  i32.load offset=16
                                  tee_local 21
                                  i32.const 1
                                  i32.eq
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    get_local 21
                                    i32.const 2
                                    i32.eq
                                    br_if 0 (;@16;)
                                    get_local 21
                                    i32.const 3
                                    i32.eq
                                    br_if 5 (;@11;)
                                    get_local 7
                                    i32.const -8
                                    i32.add
                                    i32.load
                                    set_local 2
                                    br 2 (;@14;)
                                  end
                                  get_local 19
                                  i32.load
                                  tee_local 21
                                  get_local 6
                                  i32.load
                                  i32.eq
                                  br_if 2 (;@13;)
                                  get_local 19
                                  get_local 21
                                  i32.const 8
                                  i32.add
                                  i32.store
                                  get_local 21
                                  i32.load offset=4
                                  i32.const 18
                                  i32.ne
                                  br_if 4 (;@11;)
                                  get_local 21
                                  i32.load
                                  i32.load
                                  set_local 2
                                  br 1 (;@14;)
                                end
                                get_local 7
                                i32.const -8
                                i32.add
                                i32.load
                                tee_local 21
                                get_local 5
                                i32.load
                                tee_local 2
                                i32.ge_u
                                br_if 2 (;@12;)
                                get_local 15
                                i32.load
                                get_local 21
                                i32.const 3
                                i32.shl
                                i32.add
                                tee_local 21
                                i32.load offset=4
                                i32.const 18
                                i32.ne
                                br_if 3 (;@11;)
                                get_local 21
                                i32.load
                                i32.load
                                set_local 2
                              end
                              i32.const 1
                              set_local 8
                              br 2 (;@11;)
                            end
                            br 1 (;@11;)
                          end
                          i32.const 1050804
                          get_local 21
                          get_local 2
                          call $core::panicking::panic_bounds_check::h8e752fa77de3cffe
                          unreachable
                        end
                        get_local 17
                        get_local 2
                        i32.store
                        get_local 18
                        get_local 8
                        i32.store
                        block  ;; label = @11
                          block  ;; label = @12
                            get_local 0
                            i32.load
                            i32.const 1
                            i32.ne
                            br_if 0 (;@12;)
                            get_local 7
                            i32.const -24
                            i32.add
                            i32.load
                            tee_local 8
                            get_local 5
                            i32.load
                            tee_local 2
                            i32.ge_u
                            br_if 4 (;@8;)
                            get_local 15
                            i32.load
                            get_local 8
                            i32.const 3
                            i32.shl
                            i32.add
                            set_local 8
                            br 1 (;@11;)
                          end
                          get_local 19
                          i32.load
                          tee_local 8
                          get_local 6
                          i32.load
                          i32.eq
                          br_if 4 (;@7;)
                          get_local 19
                          get_local 8
                          i32.const 8
                          i32.add
                          i32.store
                        end
                        get_local 0
                        i32.const 36
                        i32.add
                        set_local 0
                        get_local 7
                        i32.const 36
                        i32.add
                        set_local 7
                        get_local 1
                        i32.const 8
                        i32.add
                        set_local 1
                        get_local 8
                        i32.load
                        get_local 3
                        get_local 8
                        i32.const 4
                        i32.add
                        i32.load
                        call_indirect (type 2)
                        i32.eqz
                        br_if 0 (;@10;)
                      end
                    end
                    get_local 3
                    get_local 20
                    i32.const 8
                    i32.add
                    i32.store offset=56
                    br 5 (;@3;)
                  end
                  i32.const 1050788
                  get_local 8
                  get_local 2
                  call $core::panicking::panic_bounds_check::h8e752fa77de3cffe
                  unreachable
                end
                i32.const 1050764
                call $core::panicking::panic::haa57ffd51eb03b56
                unreachable
              end
              get_local 3
              i32.const 24
              i32.add
              set_local 21
              loop  ;; label = @6
                get_local 9
                set_local 0
                get_local 8
                i32.eqz
                br_if 2 (;@4;)
                get_local 10
                i32.eqz
                br_if 1 (;@5;)
                block  ;; label = @7
                  get_local 21
                  i32.load
                  get_local 0
                  i32.load
                  get_local 0
                  i32.const 4
                  i32.add
                  i32.load
                  get_local 4
                  i32.load
                  i32.load offset=12
                  call_indirect (type 1)
                  br_if 0 (;@7;)
                  get_local 0
                  i32.const 8
                  i32.add
                  set_local 9
                  get_local 8
                  i32.const -8
                  i32.add
                  set_local 8
                  get_local 10
                  i32.const -8
                  i32.add
                  set_local 10
                  get_local 7
                  i32.load
                  set_local 1
                  get_local 7
                  i32.load offset=4
                  set_local 2
                  get_local 7
                  i32.const 8
                  i32.add
                  set_local 7
                  get_local 1
                  get_local 3
                  get_local 2
                  call_indirect (type 2)
                  i32.eqz
                  br_if 1 (;@6;)
                end
              end
              get_local 3
              get_local 0
              i32.const 8
              i32.add
              i32.store offset=56
              br 2 (;@3;)
            end
            get_local 11
            set_local 0
          end
          get_local 3
          get_local 0
          i32.store offset=56
          get_local 0
          get_local 11
          i32.eq
          br_if 1 (;@2;)
          get_local 3
          get_local 0
          i32.const 8
          i32.add
          i32.store offset=56
          get_local 3
          i32.const 24
          i32.add
          i32.load
          get_local 0
          i32.load
          get_local 0
          i32.load offset=4
          get_local 3
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        set_local 0
        br 1 (;@1;)
      end
      i32.const 0
      set_local 0
    end
    get_local 3
    i32.const 64
    i32.add
    set_global 0
    get_local 0)
  (func $core::fmt::ArgumentV1::show_usize::h21b41da62be27151__.llvm.6285087110667983080_ (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::hf62674be60b18fce)
  (func $_$LT$core..fmt..Arguments$LT$$u27$a$GT$$u20$as$u20$core..fmt..Display$GT$::fmt::h3c390cf6e7ed402d (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 1
    i32.const 28
    i32.add
    i32.load
    set_local 3
    get_local 1
    i32.load offset=24
    set_local 1
    get_local 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    get_local 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    get_local 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    get_local 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    get_local 2
    get_local 0
    i64.load align=4
    i64.store offset=8
    get_local 1
    get_local 3
    get_local 2
    i32.const 8
    i32.add
    call $core::fmt::write::h37a139dd53a36e04
    set_local 0
    get_local 2
    i32.const 32
    i32.add
    set_global 0
    get_local 0)
  (func $core::fmt::Formatter::pad_integral::h57896398f347489a (type 11) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 6
    set_global 0
    get_local 6
    get_local 3
    i32.store offset=4
    get_local 6
    get_local 2
    i32.store
    get_local 6
    i32.const 1114112
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 1
          i32.eqz
          br_if 0 (;@3;)
          get_local 0
          i32.load
          tee_local 7
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          get_local 5
          set_local 8
          br 2 (;@1;)
        end
        get_local 6
        i32.const 45
        i32.store offset=8
        get_local 5
        i32.const 1
        i32.add
        set_local 8
        get_local 0
        i32.load
        set_local 7
        br 1 (;@1;)
      end
      get_local 6
      i32.const 43
      i32.store offset=8
      get_local 5
      i32.const 1
      i32.add
      set_local 8
    end
    i32.const 0
    set_local 1
    get_local 6
    i32.const 0
    i32.store8 offset=15
    block  ;; label = @1
      get_local 7
      i32.const 4
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      get_local 6
      i32.const 1
      i32.store8 offset=15
      block  ;; label = @2
        get_local 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 1
        get_local 3
        set_local 9
        loop  ;; label = @3
          get_local 1
          get_local 2
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          set_local 1
          get_local 2
          i32.const 1
          i32.add
          set_local 2
          get_local 9
          i32.const -1
          i32.add
          tee_local 9
          br_if 0 (;@3;)
        end
      end
      get_local 8
      get_local 3
      i32.add
      get_local 1
      i32.sub
      set_local 8
    end
    get_local 0
    i32.load offset=8
    set_local 2
    get_local 6
    get_local 6
    i32.const 15
    i32.add
    i32.store offset=20
    get_local 6
    get_local 6
    i32.const 8
    i32.add
    i32.store offset=16
    get_local 6
    get_local 6
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    get_local 2
                                    i32.const 1
                                    i32.ne
                                    br_if 0 (;@16;)
                                    get_local 0
                                    i32.const 12
                                    i32.add
                                    i32.load
                                    tee_local 2
                                    get_local 8
                                    i32.le_u
                                    br_if 1 (;@15;)
                                    get_local 7
                                    i32.const 8
                                    i32.and
                                    br_if 2 (;@14;)
                                    get_local 2
                                    get_local 8
                                    i32.sub
                                    set_local 2
                                    i32.const 1
                                    get_local 0
                                    i32.load8_u offset=48
                                    tee_local 1
                                    get_local 1
                                    i32.const 3
                                    i32.eq
                                    select
                                    i32.const 3
                                    i32.and
                                    tee_local 1
                                    i32.const 2
                                    i32.eq
                                    br_if 4 (;@12;)
                                    i32.const 0
                                    set_local 3
                                    get_local 1
                                    i32.eqz
                                    br_if 3 (;@13;)
                                    get_local 2
                                    set_local 9
                                    br 5 (;@11;)
                                  end
                                  get_local 6
                                  i32.const 16
                                  i32.add
                                  get_local 0
                                  call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h3a902ce258d420df
                                  br_if 12 (;@3;)
                                  get_local 0
                                  i32.load offset=24
                                  get_local 4
                                  get_local 5
                                  get_local 0
                                  i32.const 28
                                  i32.add
                                  i32.load
                                  i32.load offset=12
                                  call_indirect (type 1)
                                  set_local 2
                                  br 14 (;@1;)
                                end
                                get_local 6
                                i32.const 16
                                i32.add
                                get_local 0
                                call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h3a902ce258d420df
                                br_if 11 (;@3;)
                                get_local 0
                                i32.load offset=24
                                get_local 4
                                get_local 5
                                get_local 0
                                i32.const 28
                                i32.add
                                i32.load
                                i32.load offset=12
                                call_indirect (type 1)
                                set_local 2
                                br 13 (;@1;)
                              end
                              get_local 0
                              i32.const 1
                              i32.store8 offset=48
                              get_local 0
                              i32.const 48
                              i32.store offset=4
                              get_local 6
                              i32.const 16
                              i32.add
                              get_local 0
                              call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h3a902ce258d420df
                              br_if 10 (;@3;)
                              get_local 2
                              get_local 8
                              i32.sub
                              set_local 2
                              i32.const 1
                              get_local 0
                              i32.const 48
                              i32.add
                              i32.load8_u
                              tee_local 1
                              get_local 1
                              i32.const 3
                              i32.eq
                              select
                              i32.const 3
                              i32.and
                              tee_local 1
                              i32.const 2
                              i32.eq
                              br_if 4 (;@9;)
                              i32.const 0
                              set_local 3
                              get_local 1
                              i32.eqz
                              br_if 3 (;@10;)
                              get_local 2
                              set_local 9
                              br 5 (;@8;)
                            end
                            i32.const 0
                            set_local 9
                            get_local 2
                            set_local 3
                            br 1 (;@11;)
                          end
                          get_local 2
                          i32.const 1
                          i32.shr_u
                          set_local 9
                          get_local 2
                          i32.const 1
                          i32.add
                          i32.const 1
                          i32.shr_u
                          set_local 3
                        end
                        get_local 6
                        i32.const 0
                        i32.store offset=28
                        block  ;; label = @11
                          get_local 0
                          i32.load offset=4
                          tee_local 2
                          i32.const 127
                          i32.gt_u
                          br_if 0 (;@11;)
                          get_local 6
                          get_local 2
                          i32.store8 offset=28
                          i32.const 1
                          set_local 1
                          br 5 (;@6;)
                        end
                        block  ;; label = @11
                          get_local 2
                          i32.const 2047
                          i32.gt_u
                          br_if 0 (;@11;)
                          get_local 6
                          get_local 2
                          i32.const 63
                          i32.and
                          i32.const 128
                          i32.or
                          i32.store8 offset=29
                          get_local 6
                          get_local 2
                          i32.const 6
                          i32.shr_u
                          i32.const 31
                          i32.and
                          i32.const 192
                          i32.or
                          i32.store8 offset=28
                          i32.const 2
                          set_local 1
                          br 5 (;@6;)
                        end
                        get_local 2
                        i32.const 65535
                        i32.gt_u
                        br_if 3 (;@7;)
                        get_local 6
                        get_local 2
                        i32.const 63
                        i32.and
                        i32.const 128
                        i32.or
                        i32.store8 offset=30
                        get_local 6
                        get_local 2
                        i32.const 6
                        i32.shr_u
                        i32.const 63
                        i32.and
                        i32.const 128
                        i32.or
                        i32.store8 offset=29
                        get_local 6
                        get_local 2
                        i32.const 12
                        i32.shr_u
                        i32.const 15
                        i32.and
                        i32.const 224
                        i32.or
                        i32.store8 offset=28
                        i32.const 3
                        set_local 1
                        br 4 (;@6;)
                      end
                      i32.const 0
                      set_local 9
                      get_local 2
                      set_local 3
                      br 1 (;@8;)
                    end
                    get_local 2
                    i32.const 1
                    i32.shr_u
                    set_local 9
                    get_local 2
                    i32.const 1
                    i32.add
                    i32.const 1
                    i32.shr_u
                    set_local 3
                  end
                  get_local 6
                  i32.const 0
                  i32.store offset=28
                  block  ;; label = @8
                    get_local 0
                    i32.const 4
                    i32.add
                    i32.load
                    tee_local 2
                    i32.const 127
                    i32.gt_u
                    br_if 0 (;@8;)
                    get_local 6
                    get_local 2
                    i32.store8 offset=28
                    i32.const 1
                    set_local 1
                    br 4 (;@4;)
                  end
                  get_local 2
                  i32.const 2047
                  i32.gt_u
                  br_if 2 (;@5;)
                  get_local 6
                  get_local 2
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=29
                  get_local 6
                  get_local 2
                  i32.const 6
                  i32.shr_u
                  i32.const 31
                  i32.and
                  i32.const 192
                  i32.or
                  i32.store8 offset=28
                  i32.const 2
                  set_local 1
                  br 3 (;@4;)
                end
                get_local 6
                get_local 2
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=28
                get_local 6
                get_local 2
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=31
                get_local 6
                get_local 2
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=29
                get_local 6
                get_local 2
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=30
                i32.const 4
                set_local 1
              end
              i32.const -1
              set_local 2
              block  ;; label = @6
                loop  ;; label = @7
                  get_local 2
                  i32.const 1
                  i32.add
                  tee_local 2
                  get_local 9
                  i32.ge_u
                  br_if 1 (;@6;)
                  get_local 0
                  i32.const 24
                  i32.add
                  i32.load
                  get_local 6
                  i32.const 28
                  i32.add
                  get_local 1
                  get_local 0
                  i32.const 28
                  i32.add
                  i32.load
                  i32.load offset=12
                  call_indirect (type 1)
                  i32.eqz
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              get_local 6
              i32.const 16
              i32.add
              get_local 0
              call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h3a902ce258d420df
              br_if 2 (;@3;)
              get_local 0
              i32.const 24
              i32.add
              tee_local 9
              i32.load
              get_local 4
              get_local 5
              get_local 0
              i32.const 28
              i32.add
              tee_local 0
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              br_if 2 (;@3;)
              i32.const -1
              set_local 2
              loop  ;; label = @6
                get_local 2
                i32.const 1
                i32.add
                tee_local 2
                get_local 3
                i32.ge_u
                br_if 4 (;@2;)
                get_local 9
                i32.load
                get_local 6
                i32.const 28
                i32.add
                get_local 1
                get_local 0
                i32.load
                i32.load offset=12
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            block  ;; label = @5
              get_local 2
              i32.const 65535
              i32.gt_u
              br_if 0 (;@5;)
              get_local 6
              get_local 2
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=30
              get_local 6
              get_local 2
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=29
              get_local 6
              get_local 2
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 224
              i32.or
              i32.store8 offset=28
              i32.const 3
              set_local 1
              br 1 (;@4;)
            end
            get_local 6
            get_local 2
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=28
            get_local 6
            get_local 2
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=31
            get_local 6
            get_local 2
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=29
            get_local 6
            get_local 2
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=30
            i32.const 4
            set_local 1
          end
          i32.const -1
          set_local 2
          block  ;; label = @4
            loop  ;; label = @5
              get_local 2
              i32.const 1
              i32.add
              tee_local 2
              get_local 9
              i32.ge_u
              br_if 1 (;@4;)
              get_local 0
              i32.const 24
              i32.add
              i32.load
              get_local 6
              i32.const 28
              i32.add
              get_local 1
              get_local 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          get_local 0
          i32.const 24
          i32.add
          tee_local 9
          i32.load
          get_local 4
          get_local 5
          get_local 0
          i32.const 28
          i32.add
          tee_local 0
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          br_if 0 (;@3;)
          i32.const -1
          set_local 2
          loop  ;; label = @4
            get_local 2
            i32.const 1
            i32.add
            tee_local 2
            get_local 3
            i32.ge_u
            br_if 2 (;@2;)
            get_local 9
            i32.load
            get_local 6
            i32.const 28
            i32.add
            get_local 1
            get_local 0
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        set_local 2
        br 1 (;@1;)
      end
      i32.const 0
      set_local 2
    end
    get_local 6
    i32.const 32
    i32.add
    set_global 0
    get_local 2)
  (func $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h3a902ce258d420df (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load
        i32.load
        tee_local 3
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        i32.const 28
        i32.add
        i32.load
        set_local 4
        get_local 1
        i32.load offset=24
        set_local 5
        get_local 2
        i32.const 0
        i32.store offset=12
        block  ;; label = @3
          block  ;; label = @4
            get_local 3
            i32.const 127
            i32.gt_u
            br_if 0 (;@4;)
            get_local 2
            get_local 3
            i32.store8 offset=12
            i32.const 1
            set_local 6
            br 1 (;@3;)
          end
          block  ;; label = @4
            get_local 3
            i32.const 2047
            i32.gt_u
            br_if 0 (;@4;)
            get_local 2
            get_local 3
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            get_local 2
            get_local 3
            i32.const 6
            i32.shr_u
            i32.const 31
            i32.and
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            set_local 6
            br 1 (;@3;)
          end
          block  ;; label = @4
            get_local 3
            i32.const 65535
            i32.gt_u
            br_if 0 (;@4;)
            get_local 2
            get_local 3
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            get_local 2
            get_local 3
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            get_local 2
            get_local 3
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            set_local 6
            br 1 (;@3;)
          end
          get_local 2
          get_local 3
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          get_local 2
          get_local 3
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          get_local 2
          get_local 3
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          get_local 2
          get_local 3
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          i32.const 4
          set_local 6
        end
        i32.const 1
        set_local 3
        get_local 5
        get_local 2
        i32.const 12
        i32.add
        get_local 6
        get_local 4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        get_local 0
        i32.load offset=4
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=24
        get_local 0
        i32.load offset=8
        tee_local 0
        i32.load
        get_local 0
        i32.load offset=4
        get_local 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        set_local 3
        br 1 (;@1;)
      end
      i32.const 0
      set_local 3
    end
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 3)
  (func $core::fmt::Formatter::debug_lower_hex::h8b36d437500bba99 (type 9) (param i32) (result i32)
    get_local 0
    i32.load8_u
    i32.const 16
    i32.and
    i32.const 4
    i32.shr_u)
  (func $core::fmt::Formatter::debug_upper_hex::he6cf234ec515ef11 (type 9) (param i32) (result i32)
    get_local 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.const 5
    i32.shr_u)
  (func $core::str::lossy::Utf8Lossy::from_bytes::h96ecce4b2d933598 (type 5) (param i32 i32 i32)
    get_local 0
    get_local 2
    i32.store offset=4
    get_local 0
    get_local 1
    i32.store)
  (func $core::str::lossy::Utf8Lossy::chunks::h58d2feedca11444d (type 5) (param i32 i32 i32)
    get_local 0
    get_local 2
    i32.store offset=4
    get_local 0
    get_local 1
    i32.store)
  (func $_$LT$core..str..lossy..Utf8LossyChunksIter$LT$$u27$a$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$::next::hd29fa4210374c419 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                get_local 1
                                i32.load offset=4
                                tee_local 2
                                i32.eqz
                                br_if 0 (;@14;)
                                get_local 1
                                i32.load
                                set_local 3
                                i32.const 0
                                set_local 4
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    get_local 4
                                    i32.const 1
                                    i32.add
                                    set_local 5
                                    block  ;; label = @17
                                      get_local 3
                                      get_local 4
                                      i32.add
                                      tee_local 6
                                      i32.load8_u
                                      tee_local 7
                                      i32.const 24
                                      i32.shl
                                      i32.const 24
                                      i32.shr_s
                                      tee_local 8
                                      i32.const -1
                                      i32.le_s
                                      br_if 0 (;@17;)
                                      get_local 5
                                      tee_local 4
                                      get_local 2
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                    block  ;; label = @17
                                      get_local 7
                                      i32.const 1049923
                                      i32.add
                                      i32.load8_u
                                      tee_local 7
                                      i32.const 4
                                      i32.eq
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        get_local 7
                                        i32.const 3
                                        i32.eq
                                        br_if 0 (;@18;)
                                        get_local 7
                                        i32.const 2
                                        i32.ne
                                        br_if 5 (;@13;)
                                        get_local 2
                                        get_local 5
                                        i32.le_u
                                        br_if 6 (;@12;)
                                        get_local 3
                                        get_local 5
                                        i32.add
                                        i32.load8_u
                                        i32.const 192
                                        i32.and
                                        i32.const 128
                                        i32.ne
                                        br_if 6 (;@12;)
                                        get_local 4
                                        i32.const 2
                                        i32.add
                                        tee_local 4
                                        get_local 2
                                        i32.lt_u
                                        br_if 2 (;@16;)
                                        br 3 (;@15;)
                                      end
                                      get_local 2
                                      get_local 5
                                      i32.le_u
                                      br_if 10 (;@7;)
                                      get_local 3
                                      get_local 5
                                      i32.add
                                      i32.load8_u
                                      set_local 7
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          get_local 8
                                          i32.const -32
                                          i32.ne
                                          br_if 0 (;@19;)
                                          get_local 7
                                          i32.const -32
                                          i32.and
                                          i32.const 255
                                          i32.and
                                          i32.const 160
                                          i32.eq
                                          br_if 1 (;@18;)
                                        end
                                        block  ;; label = @19
                                          get_local 7
                                          i32.const 255
                                          i32.and
                                          tee_local 9
                                          i32.const 191
                                          i32.gt_u
                                          tee_local 10
                                          br_if 0 (;@19;)
                                          get_local 8
                                          i32.const 31
                                          i32.add
                                          i32.const 255
                                          i32.and
                                          i32.const 11
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                          get_local 7
                                          i32.const 24
                                          i32.shl
                                          i32.const 24
                                          i32.shr_s
                                          i32.const 0
                                          i32.lt_s
                                          br_if 1 (;@18;)
                                        end
                                        block  ;; label = @19
                                          get_local 9
                                          i32.const 159
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                          get_local 8
                                          i32.const -19
                                          i32.ne
                                          br_if 0 (;@19;)
                                          get_local 7
                                          i32.const 24
                                          i32.shl
                                          i32.const 24
                                          i32.shr_s
                                          i32.const 0
                                          i32.lt_s
                                          br_if 1 (;@18;)
                                        end
                                        get_local 10
                                        br_if 11 (;@7;)
                                        get_local 8
                                        i32.const 254
                                        i32.and
                                        i32.const 238
                                        i32.ne
                                        br_if 11 (;@7;)
                                        get_local 7
                                        i32.const 24
                                        i32.shl
                                        i32.const 24
                                        i32.shr_s
                                        i32.const -1
                                        i32.gt_s
                                        br_if 11 (;@7;)
                                      end
                                      get_local 2
                                      get_local 4
                                      i32.const 2
                                      i32.add
                                      tee_local 5
                                      i32.le_u
                                      br_if 6 (;@11;)
                                      get_local 3
                                      get_local 5
                                      i32.add
                                      i32.load8_u
                                      i32.const 192
                                      i32.and
                                      i32.const 128
                                      i32.ne
                                      br_if 6 (;@11;)
                                      get_local 4
                                      i32.const 3
                                      i32.add
                                      tee_local 4
                                      get_local 2
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                    get_local 2
                                    get_local 5
                                    i32.le_u
                                    br_if 8 (;@8;)
                                    get_local 3
                                    get_local 5
                                    i32.add
                                    i32.load8_u
                                    set_local 7
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        get_local 8
                                        i32.const -16
                                        i32.ne
                                        br_if 0 (;@18;)
                                        get_local 7
                                        i32.const 112
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 48
                                        i32.lt_u
                                        br_if 1 (;@17;)
                                      end
                                      block  ;; label = @18
                                        get_local 7
                                        i32.const 255
                                        i32.and
                                        tee_local 9
                                        i32.const 191
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        get_local 8
                                        i32.const 15
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 2
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        get_local 7
                                        i32.const 24
                                        i32.shl
                                        i32.const 24
                                        i32.shr_s
                                        i32.const 0
                                        i32.lt_s
                                        br_if 1 (;@17;)
                                      end
                                      get_local 9
                                      i32.const 143
                                      i32.gt_u
                                      br_if 9 (;@8;)
                                      get_local 8
                                      i32.const -12
                                      i32.ne
                                      br_if 9 (;@8;)
                                      get_local 7
                                      i32.const 24
                                      i32.shl
                                      i32.const 24
                                      i32.shr_s
                                      i32.const -1
                                      i32.gt_s
                                      br_if 9 (;@8;)
                                    end
                                    get_local 2
                                    get_local 4
                                    i32.const 2
                                    i32.add
                                    tee_local 5
                                    i32.le_u
                                    br_if 6 (;@10;)
                                    get_local 3
                                    get_local 5
                                    i32.add
                                    i32.load8_u
                                    i32.const 192
                                    i32.and
                                    i32.const 128
                                    i32.ne
                                    br_if 6 (;@10;)
                                    get_local 2
                                    get_local 4
                                    i32.const 3
                                    i32.add
                                    tee_local 5
                                    i32.le_u
                                    br_if 7 (;@9;)
                                    get_local 3
                                    get_local 5
                                    i32.add
                                    i32.load8_u
                                    i32.const 192
                                    i32.and
                                    i32.const 128
                                    i32.ne
                                    br_if 7 (;@9;)
                                    get_local 4
                                    i32.const 4
                                    i32.add
                                    tee_local 4
                                    get_local 2
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                  end
                                end
                                get_local 1
                                i32.const 1050260
                                i32.store
                                get_local 0
                                get_local 3
                                i32.store
                                get_local 0
                                get_local 2
                                i32.store offset=4
                                get_local 1
                                i32.const 4
                                i32.add
                                i32.const 0
                                i32.store
                                get_local 0
                                i32.const 8
                                i32.add
                                i32.const 1050260
                                i32.store
                                get_local 0
                                i32.const 12
                                i32.add
                                i32.const 0
                                i32.store
                                return
                              end
                              get_local 0
                              i32.const 0
                              i32.store
                              return
                            end
                            get_local 2
                            get_local 4
                            i32.lt_u
                            br_if 6 (;@6;)
                            get_local 2
                            get_local 5
                            i32.lt_u
                            br_if 7 (;@5;)
                            get_local 0
                            get_local 3
                            i32.store
                            get_local 0
                            get_local 4
                            i32.store offset=4
                            get_local 1
                            i32.const 4
                            i32.add
                            get_local 2
                            get_local 5
                            i32.sub
                            i32.store
                            get_local 1
                            get_local 3
                            get_local 5
                            i32.add
                            i32.store
                            get_local 0
                            i32.const 8
                            i32.add
                            get_local 6
                            i32.store
                            get_local 0
                            i32.const 12
                            i32.add
                            i32.const 1
                            i32.store
                            return
                          end
                          get_local 2
                          get_local 4
                          i32.lt_u
                          br_if 5 (;@6;)
                          get_local 2
                          get_local 5
                          i32.lt_u
                          br_if 6 (;@5;)
                          get_local 0
                          get_local 3
                          i32.store
                          get_local 0
                          get_local 4
                          i32.store offset=4
                          get_local 1
                          i32.const 4
                          i32.add
                          get_local 2
                          get_local 5
                          i32.sub
                          i32.store
                          get_local 1
                          get_local 3
                          get_local 5
                          i32.add
                          i32.store
                          get_local 0
                          i32.const 8
                          i32.add
                          get_local 6
                          i32.store
                          get_local 0
                          i32.const 12
                          i32.add
                          i32.const 1
                          i32.store
                          return
                        end
                        get_local 2
                        get_local 4
                        i32.lt_u
                        br_if 4 (;@6;)
                        get_local 2
                        get_local 5
                        i32.lt_u
                        br_if 6 (;@4;)
                        get_local 0
                        get_local 3
                        i32.store
                        get_local 0
                        get_local 4
                        i32.store offset=4
                        get_local 1
                        i32.const 4
                        i32.add
                        get_local 2
                        get_local 5
                        i32.sub
                        i32.store
                        get_local 1
                        get_local 3
                        get_local 5
                        i32.add
                        i32.store
                        get_local 0
                        i32.const 8
                        i32.add
                        get_local 6
                        i32.store
                        get_local 0
                        i32.const 12
                        i32.add
                        i32.const 2
                        i32.store
                        return
                      end
                      get_local 2
                      get_local 4
                      i32.lt_u
                      br_if 3 (;@6;)
                      get_local 2
                      get_local 5
                      i32.lt_u
                      br_if 6 (;@3;)
                      get_local 0
                      get_local 3
                      i32.store
                      get_local 0
                      get_local 4
                      i32.store offset=4
                      get_local 1
                      i32.const 4
                      i32.add
                      get_local 2
                      get_local 5
                      i32.sub
                      i32.store
                      get_local 1
                      get_local 3
                      get_local 5
                      i32.add
                      i32.store
                      get_local 0
                      i32.const 8
                      i32.add
                      get_local 6
                      i32.store
                      get_local 0
                      i32.const 12
                      i32.add
                      i32.const 2
                      i32.store
                      return
                    end
                    get_local 2
                    get_local 4
                    i32.lt_u
                    br_if 2 (;@6;)
                    get_local 4
                    i32.const -3
                    i32.ge_u
                    br_if 6 (;@2;)
                    get_local 2
                    get_local 5
                    i32.lt_u
                    br_if 7 (;@1;)
                    get_local 0
                    get_local 3
                    i32.store
                    get_local 0
                    get_local 4
                    i32.store offset=4
                    get_local 1
                    i32.const 4
                    i32.add
                    get_local 2
                    get_local 5
                    i32.sub
                    i32.store
                    get_local 1
                    get_local 3
                    get_local 5
                    i32.add
                    i32.store
                    get_local 0
                    i32.const 8
                    i32.add
                    get_local 6
                    i32.store
                    get_local 0
                    i32.const 12
                    i32.add
                    i32.const 3
                    i32.store
                    return
                  end
                  get_local 2
                  get_local 4
                  i32.lt_u
                  br_if 1 (;@6;)
                  get_local 2
                  get_local 5
                  i32.lt_u
                  br_if 2 (;@5;)
                  get_local 0
                  get_local 3
                  i32.store
                  get_local 0
                  get_local 4
                  i32.store offset=4
                  get_local 1
                  i32.const 4
                  i32.add
                  get_local 2
                  get_local 5
                  i32.sub
                  i32.store
                  get_local 1
                  get_local 3
                  get_local 5
                  i32.add
                  i32.store
                  get_local 0
                  i32.const 8
                  i32.add
                  get_local 6
                  i32.store
                  get_local 0
                  i32.const 12
                  i32.add
                  i32.const 1
                  i32.store
                  return
                end
                get_local 2
                get_local 4
                i32.lt_u
                br_if 0 (;@6;)
                get_local 2
                get_local 5
                i32.lt_u
                br_if 1 (;@5;)
                get_local 0
                get_local 3
                i32.store
                get_local 0
                get_local 4
                i32.store offset=4
                get_local 1
                i32.const 4
                i32.add
                get_local 2
                get_local 5
                i32.sub
                i32.store
                get_local 1
                get_local 3
                get_local 5
                i32.add
                i32.store
                get_local 0
                i32.const 8
                i32.add
                get_local 6
                i32.store
                get_local 0
                i32.const 12
                i32.add
                i32.const 1
                i32.store
                return
              end
              get_local 4
              get_local 2
              call $core::slice::slice_index_len_fail::h70a7d5467e94555c
              unreachable
            end
            get_local 5
            get_local 2
            call $core::slice::slice_index_len_fail::h70a7d5467e94555c
            unreachable
          end
          get_local 5
          get_local 2
          call $core::slice::slice_index_len_fail::h70a7d5467e94555c
          unreachable
        end
        get_local 5
        get_local 2
        call $core::slice::slice_index_len_fail::h70a7d5467e94555c
        unreachable
      end
      get_local 4
      get_local 5
      call $core::slice::slice_index_order_fail::he23bfdf4a52996ab
      unreachable
    end
    get_local 5
    get_local 2
    call $core::slice::slice_index_len_fail::h70a7d5467e94555c
    unreachable)
  (func $core::ptr::drop_in_place::h01c97112482be8fc (type 4) (param i32))
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h7d78eda0198d04c3 (type 7) (param i32) (result i64)
    i64.const 6658476391691125149)
  (func $core::panicking::panic_bounds_check::h8e752fa77de3cffe (type 5) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 2
    i32.store offset=4
    get_local 3
    get_local 1
    i32.store
    get_local 3
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 5
    i32.store
    get_local 3
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 3
    i32.const 5
    i32.store offset=36
    get_local 3
    i32.const 1050836
    i32.store offset=8
    get_local 3
    i32.const 2
    i32.store offset=12
    get_local 3
    i32.const 1050312
    i32.store offset=16
    get_local 3
    get_local 3
    i32.const 4
    i32.add
    i32.store offset=32
    get_local 3
    get_local 3
    i32.store offset=40
    get_local 3
    get_local 3
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 3
    i32.const 8
    i32.add
    get_local 0
    call $core::panicking::panic_fmt::h429a06507aba9228
    unreachable)
  (func $core::panic::PanicInfo::message::h6f351d05d7a173b4 (type 9) (param i32) (result i32)
    get_local 0
    i32.load offset=8)
  (func $core::panic::PanicInfo::location::hf28dc93a5a71b13e (type 9) (param i32) (result i32)
    get_local 0
    i32.const 12
    i32.add)
  (func $core::panic::Location::internal_constructor::h41519bfe32dfcd66 (type 12) (param i32 i32 i32 i32 i32)
    get_local 0
    get_local 2
    i32.store offset=4
    get_local 0
    get_local 1
    i32.store
    get_local 0
    get_local 3
    i32.store offset=8
    get_local 0
    get_local 4
    i32.store offset=12)
  (func $core::panic::Location::file::hc4165a2fe44893fc (type 0) (param i32 i32)
    get_local 0
    get_local 1
    i64.load align=4
    i64.store align=4)
  (func $core::panic::Location::line::h4b252c4dfda31dc1 (type 9) (param i32) (result i32)
    get_local 0
    i32.load offset=8)
  (func $core::panic::Location::column::h67b695fdc1ea1dee (type 9) (param i32) (result i32)
    get_local 0
    i32.load offset=12)
  (func $core::panicking::panic::haa57ffd51eb03b56 (type 4) (param i32)
    (local i32 i64 i64 i64)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    i64.load offset=16 align=4
    set_local 2
    get_local 0
    i64.load offset=8 align=4
    set_local 3
    get_local 0
    i64.load align=4
    set_local 4
    get_local 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    get_local 1
    get_local 4
    i64.store offset=24
    get_local 1
    i64.const 1
    i64.store offset=4 align=4
    get_local 1
    i32.const 1050260
    i32.store offset=16
    get_local 1
    get_local 1
    i32.const 24
    i32.add
    i32.store
    get_local 1
    get_local 3
    i64.store offset=32
    get_local 1
    get_local 2
    i64.store offset=40
    get_local 1
    get_local 1
    i32.const 32
    i32.add
    call $core::panicking::panic_fmt::h429a06507aba9228
    unreachable)
  (func $core::panicking::panic_fmt::h429a06507aba9228 (type 0) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 1
    i64.load align=4
    set_local 3
    get_local 2
    i32.const 20
    i32.add
    get_local 1
    i64.load offset=8 align=4
    i64.store align=4
    get_local 2
    i32.const 1050820
    i32.store offset=4
    get_local 2
    i32.const 1050260
    i32.store
    get_local 2
    get_local 0
    i32.store offset=8
    get_local 2
    get_local 3
    i64.store offset=12 align=4
    get_local 2
    call $rust_begin_unwind
    unreachable)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      set_local 3
      loop  ;; label = @2
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 1
        i32.const 1
        i32.add
        set_local 1
        get_local 3
        i32.const 1
        i32.add
        set_local 3
        get_local 2
        i32.const -1
        i32.add
        tee_local 2
        br_if 0 (;@2;)
      end
    end
    get_local 0)
  (table (;0;) 21 21 anyfunc)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1051332))
  (global (;2;) i32 (i32.const 1051332))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "hello_wasm" (func $hello_wasm))
  (export "echo_string" (func $echo_string))
  (export "array" (func $array))
  (elem (;0;) (i32.const 1) $core::ptr::drop_in_place::h174443354822c2ad $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_str::he1c6da0daa0f2a81 $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_char::hb627c71dfb6f8f88 $_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$::write_fmt::h6dabbad18f4ed5e4 $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::hf62674be60b18fce $std::alloc::default_alloc_error_hook::ha3646665f0b9ddcd $_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Debug$GT$::fmt::h1bcf1c3aefe3001c $_$LT$core..fmt..Arguments$LT$$u27$a$GT$$u20$as$u20$core..fmt..Display$GT$::fmt::h3c390cf6e7ed402d $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$::fmt::h07c075c29ca49ee7 $core::ptr::drop_in_place::h05a6a18275722bec $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::he47910d926a5adc5 $core::ptr::drop_in_place::h851034af61f8b925 $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::box_me_up::h771635a471c65984 $_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$::get::hdc47736a6857b22b $core::ptr::drop_in_place::h152f40762e3a81d5 $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h700b35d358872894 $_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Debug$GT$::fmt::h5546f8bf6f632664 $core::fmt::ArgumentV1::show_usize::h21b41da62be27151__.llvm.6285087110667983080_ $core::ptr::drop_in_place::h01c97112482be8fc $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::h7d78eda0198d04c3)
  (data (;0;) (i32.const 1048576) "Hello, world!Hello, world! from arrayinternal error: entered unreachable codeliballoc/raw_vec.rs\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00memory allocation of  bytes failedassertion failed: `(left == right)`\0a  left: ``,\0a right: ``: destination and source slices have different lengths\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00libcore/slice/mod.rscalled `Option::unwrap()` on a `None` valuelibcore/option.rsthread panicked while processing panic. aborting.\0athread panicked while panicking. aborting.\0afailed to initiate panic, error \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00rwlock locked for writing\ef\bf\bdinternal error: entered unreachable codeliballoc/raw_vec.rscapacity overflowassertion failed: `(left == right)`\0a  left: ``,\0a right: ``: destination and source slices have different lengths\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00libcore/slice/mod.rs0x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00libcore/slice/mod.rsindex  out of range for slice of length slice index starts at  but ends at \01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00called `Option::unwrap()` on a `None` valuelibcore/option.rs\00libcore/fmt/mod.rs\00\00index out of bounds: the len is  but the index is \00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00")
  (data (;1;) (i32.const 1050384) "%\00\10\00(\00\00\00M\00\10\00\13\00\00\00\f8\01\00\00\1e\00\00\00\01\00\00\00\04\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\84\00\10\00\15\00\00\00\99\00\10\00\0d\00\00\00\a6\00\10\00-\00\00\00\d3\00\10\00\0c\00\00\00\df\00\10\00\03\00\00\00\e2\00\10\004\00\00\00\84\01\10\00\14\00\00\00M\06\00\00\09\00\00\00\98\01\10\00+\00\00\00\c3\01\10\00\11\00\00\00Y\01\00\00\15\00\00\00\0a\00\00\00\00\00\00\00\01\00\00\00\0b\00\00\00\0c\00\00\00\10\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\0c\00\00\00\04\00\00\00\10\00\00\00\d4\01\10\002\00\00\00\06\02\10\00+\00\00\001\02\10\00 \00\00\00x\02\10\00\19\00\00\00\94\02\10\00(\00\00\00\bc\02\10\00\13\00\00\00\f8\01\00\00\1e\00\00\00\cf\02\10\00\11\00\00\00\bc\02\10\00\13\00\00\00\f5\02\00\00\05\00\00\00\e0\02\10\00-\00\00\00\0d\03\10\00\0c\00\00\00\19\03\10\00\03\00\00\00\1c\03\10\004\00\00\00\bc\03\10\00\14\00\00\00M\06\00\00\09\00\00\00\f8\04\10\00\06\00\00\00\fe\04\10\00\22\00\00\00\e4\04\10\00\14\00\00\00\8c\07\00\00\05\00\00\00 \05\10\00\16\00\00\006\05\10\00\0d\00\00\00\e4\04\10\00\14\00\00\00\92\07\00\00\05\00\00\00C\06\10\00+\00\00\00n\06\10\00\11\00\00\00Y\01\00\00\15\00\00\00\80\06\10\00\12\00\00\00K\04\00\00(\00\00\00\80\06\10\00\12\00\00\00W\04\00\00\11\00\00\00\13\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00\94\06\10\00 \00\00\00\b4\06\10\00\12\00\00\00")
  (data (;2;) (i32.const 1050856) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
