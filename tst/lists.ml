open OUnit2
open OC99.Last

let test_last ctxt =
  assert_equal (Some "d") @@ (last [ "a" ; "b" ; "c" ; "d" ]);
  assert_equal None @@ (last [])


let suite =
  "list" >::: [
    "test_last" >:: test_last
  ]

let _ = run_test_tt_main suite

