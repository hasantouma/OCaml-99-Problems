(* 3 *)

(* Find the k'th element of a list. (easy) *)

let at (n : int) (lst : 'a list) : 'a option =
  let rec at idx lst =
    match lst with
    | [] -> None
    | h :: t -> if idx = n then Some h else at (idx + 1) t
  in at 1 lst
