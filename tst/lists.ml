open OUnit2
open OC99.Last
open OC99.Last_two

let test_last ctxt =
  assert_equal (Some "d") @@ (last [ "a" ; "b" ; "c" ; "d" ]);
  assert_equal None @@ (last [])

let test_last_two ctxt =
  assert_equal (Some ("c", "d")) @@ (last_two [ "a" ; "b" ; "c" ; "d" ]);
  assert_equal None @@ (last_two [ "a" ])


let suite =
  "list" >::: [
    "test_last" >:: test_last;
    "test_last_two" >:: test_last_two
  ]

let _ = run_test_tt_main suite

