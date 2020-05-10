(* 2 *)

(* Find the last but one (last and penultimate) elements of a list. (easy) *)

let last_two (lst : 'a list) : ('a * 'a) option =
  let rec last_two lst =
    match lst with
    | [] |[_] -> None
    | [h1; h2] -> Some(h1, h2)
    | _ :: t -> last_two t
  in last_two lst