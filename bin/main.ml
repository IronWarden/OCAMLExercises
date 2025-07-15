(* let greet name = "Hello " ^ name ^ "!" *)
(* let sum x y = x + y *)
let is_even x = x mod 2 == 0
let () = print_string (string_of_bool (is_even 4444))
