(* 1 *)

(* Write a function last : 'a list -> 'a option that returns the last element of a list. (easy) *)

let last (lst : 'a list) : 'a option =
  let rec last lst =
    match lst with
    | [] -> None
    | [x] -> Some x
    | _ :: t -> last t
  in last lst

