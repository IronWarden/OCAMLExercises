(* let greet name = "Hello " ^ name ^ "!" *)
(* let sum x y = x + y *)
(* let is_even x = x mod 2 == 0 *)
(* let rec factorial n = *)
(*     match n with *)
(*     | 0 -> 1 *)
(*     | 1 -> 1 *)
(*     | _ -> n * factorial (n-1) *)


(* Absolute value with if else *)
(* let abs x =  *)
(*     if x * -1 < 0 then x  *)
(*     else x * -1  *)

(* Absolute value with match with  *)
(* let abs x = *)
(*     match x with *)
(*     | n when n < 0 -> x * -1 *)
(*     | _ -> x *)

let () = print_string (string_of_int (abs (3 * 1)))
