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

(* rec function to calculate the length of a function *)
(* let rec list_length lst =  *)
(*     match lst with *)
(*     | [] -> 0 *)
(*     | _ :: u -> 1 + list_length u *)


(* rec function to sum elements in a list *)
(* let rec sum_list list =  *)
(*     match list with  *)
(*         | [] -> 0 *)
(*         | h :: t -> h + sum_list t *)

(* rec function to check if an element exists in a list *)

(* let rec exists ele list =  *)
(*     match list with *)
(*         | [] -> false *)
(*         | h :: t -> if h == ele then true else exists ele t *)


(* own map function *)
(* let rec map f list =  *)
(*     match list with  *)
(*     | [] -> [] *)
(*     | h :: t ->  f h :: map f t *)

(**)
(* let string_of_int_list lst = *)
(*     let rec aux acc = function *)
(*     | [] -> "[" ^ (String.concat "; " (List.rev acc)) ^ "]" *)
(*     | h :: t -> aux (string_of_int h :: acc) t *)
(*     in *)
(*     aux [] lst *)
(**)
(* (* Filter a list *) *)
(* let rec filter pred list =  *)
(*     match list with *)
(*     | [] -> [] *)
(*     | h :: t -> if (pred h) then h :: filter pred t else filter pred t *)


(*(*Safe Devision *) *)
(*let safe_division x y =  *)
(*    if y == 0.0 then None else Some(x/.y)   *)
(**)
(* let print_float_option opt = *)
(*     match opt with *)
(*         | Some x -> string_of_int x  *)
(*         | None -> "None"  *)

(* Find in a list *)
(* let rec find_first pred list =  *)
(*     match list with  *)
(*         | [] -> None *)
(*         | h :: t -> if (pred h) then Some h else find_first pred t  *)

(* type student =  { *)
(*     name: string; *)
(*     id: int; *)
(*     gpa: float *)
(* } *)
(**)
(* let is_honor_roll s =  *)
(*     if s.gpa >= 3.5 then true else false  *)
(**)
(* let string_of_student s = *)
(*     "Name: " ^ s.name ^ ", ID: " ^ (string_of_int s.id) ^ ", GPA: " ^ (string_of_float s.gpa) *)
(**)
(* let john = { *)
(*     name = "John"; *)
(*     id = 10; *)
(*     gpa = 4.0; *)
(* } *)
(**)
(* let map_option f opt = *)
(*     match opt with  *)
(*         | None -> None *)
(*         | Some x -> Some (f x) *)
(**)
(* let string_of_option opt =  *)
(*     match opt with  *)
(*     | None -> "None" *)
(*     | Some x -> "Some " ^ (string_of_int x) *)


(* type expr = *)
(*   | Int of int *)
(*   | Add of expr * expr *)
(*   | Sub of expr * expr *)
(*   | Mul of expr * expr *)
(**)
(**)
(* (* Write a recursive function `eval e` that takes an `expr` `e` and returns its integer result. *) *)
(* let rec eval e =  *)
(*     match e with  *)
(*         | Int i -> i *)
(*         | Add (e1, e2) -> eval e1 + eval e2 *)
(*         | Sub (e1, e2) -> eval e1 - eval e2 *)
(*         | Mul (e1, e2) -> eval e1 * eval e2 *)
(**)
(* let rec string_of_expr e = *)
(*     match e with *)
(*     | Int i -> string_of_int i *)
(*     | Add (e1, e2) -> "(" ^ (string_of_expr e1) ^ " + " ^ (string_of_expr e2) ^ ")" *)
(*     | Sub (e1, e2) -> "(" ^ (string_of_expr e1) ^ " - " ^ (string_of_expr e2) ^ ")" *)
(*     | Mul (e1, e2) -> "(" ^ (string_of_expr e1) ^ " * " ^ (string_of_expr e2) ^ ")" *)

type 'a tree =
  | Leaf
  | Node of 'a tree * 'a * 'a tree

(* Write a function `tree_size t` that takes a `tree` `t` and returns the total number of nodes in the tree. *)
let rec tree_size = function 
        | Leaf -> 0
        | Node (left, _, right) -> 1 + tree_size left + tree_size right  

let () = 
    let my_tree = Node (Node (Leaf, 1, Leaf), 2, Node (Leaf, 3, Leaf))in
    print_endline (string_of_int (tree_size my_tree))
