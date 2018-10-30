(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (import "env" "print" (func $print (type 0)))
  (func $__wasm_call_ctors (type 1))
  (func $hello_wasm (type 1)
    i32.const 1048576
    i32.const 13
    call $print)
  (func $echo_string (type 2) (param i32)
    (local i32)
    get_local 0
    i32.load
    tee_local 1
    get_local 0
    i32.const 8
    i32.add
    i32.load
    call $print
    block  ;; label = @1
      get_local 0
      i32.const 4
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
  (func $__rust_dealloc (type 3) (param i32 i32 i32)
    get_local 0
    get_local 1
    get_local 2
    call $__rdl_dealloc)
  (func $__rdl_dealloc (type 3) (param i32 i32 i32)
    i32.const 1048592
    get_local 0
    call $dlmalloc::dlmalloc::Dlmalloc::free::hfb7302cc170c9b73)
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
  (func $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hc7f422364de19275 (type 3) (param i32 i32 i32)
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
  (table (;0;) 1 1 anyfunc)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049044))
  (global (;2;) i32 (i32.const 1049044))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "hello_wasm" (func $hello_wasm))
  (export "echo_string" (func $echo_string))
  (data (;0;) (i32.const 1048576) "Hello, world!")
  (data (;1;) (i32.const 1048592) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
