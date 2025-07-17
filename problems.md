# OCaml Exercises

Here are some OCaml exercises, structured in increasing difficulty, to help you grasp core OCaml and functional programming concepts.

## Level 1: Basics - let, Types, Simple Functions, Recursion, Basic Pattern Matching

**Concepts:** `let` binding, basic types (`int`, `float`, `bool`, `string`), function definition (`let fn_name arg = ...`), simple recursion, basic pattern matching (`match ... with`).

*Try it in the OCaml toplevel (`ocaml` or `utop`)!*

### Exercises

- [x] **Hello OCaml:**

Write a function `greet name` that takes a string `name` and returns a string like "Hello, [name]!".

**Example:** `greet "Alice"` should return `"Hello, Alice!"`

- [x] **Sum Two Numbers:**

Write a function `add_ints x y` that takes two integers `x` and `y` and returns their sum.

**Example:** `add_ints 5 3` should return `8`.

- [x] **Is Even?:**

Write a function `is_even n` that takes an integer `n` and returns `true` if `n` is even, `false` otherwise. Use the modulo operator (`mod`).

**Example:** `is_even 4` should return `true`, `is_even 7` should return `false`.

- [x] **Factorial (Recursive):**

Write a recursive function `factorial n` that calculates the factorial of a non-negative integer `n`. Remember `factorial 0 = 1`.

**Example:** `factorial 5` should return `120`.

- [x] **Absolute Value (using if/else and match):**

Write two versions of a function `abs x` that returns the absolute value of an integer `x`.

- One version using an `if/else` expression.
- One version using a `match` expression (e.g., `match x with ...`).

**Example:** `abs -5` should return `5`, `abs 3` should return `3`.

## Level 2: Lists, Tuples, More Pattern Matching, Higher-Order Functions (Basic)

**Concepts:** List type (`'a list`), tuple types, list recursion, common list operations, introducing higher-order functions (`map`, `filter`).

### Exercises

- [x] **List Length:**

Write a recursive function `list_length lst` that takes a list `lst` of any type and returns its length (an `int`). Do not use `List.length`.

**Example:** `list_length [1; 2; 3]` should return `3`. `list_length []` should return `0`.

- [x] **Sum List Elements:**

Write a recursive function `sum_list_ints lst` that takes a list of integers `lst` and returns their sum.

**Example:** `sum_list_ints [10; 20; 30]` should return `60`.

- [x] **Check if Element Exists (contains):**

Write a recursive function `contains elem lst` that takes an element `elem` and a list `lst` (of the same type) and returns `true` if `elem` is in `lst`, `false` otherwise.

**Example:** `contains 3 [1; 2; 3; 4]` should return `true`. `contains 5 [1; 2; 3; 4]` should return `false`.

- [x] **Map a Function Over a List (Implement your own map):**

Write a higher-order function `my_map f lst` that takes a function `f` and a list `lst`. It should apply `f` to each element of `lst` and return a new list with the results. Do not use `List.map`.

**Example:** `my_map (fun x -> x * 2) [1; 2; 3]` should return `[2; 4; 6]`.

- [x] **Filter a List (Implement your own filter):**

Write a higher-order function `my_filter pred lst` that takes a predicate function `pred` (a function returning `bool`) and a list `lst`. It should return a new list containing only elements for which `pred` returns `true`. Do not use `List.filter`.

**Example:** `my_filter (fun x -> x mod 2 = 0) [1; 2; 3; 4; 5]` should return `[2; 4]`.

## Level 3: Options, Records, Polymorphism, Error Handling, More HOFs

**Concepts:** `option` type (for optional values/absence), record types, basic custom types (`type t = ...`), polymorphic functions, error handling with `option` or `result`.

### Exercises

- [x] **Safe Division:**

Write a function `safe_divide x y` that takes two floats `x` and `y`. If `y` is `0.0`, it should return `None`. Otherwise, it should return `Some (x / y)`.

**Example:** `safe_divide 10.0 2.0` should return `Some 5.0`. `safe_divide 5.0 0.0` should return `None`.

- [x] **Find in List (returning option):**

Write a recursive function `find_first pred lst` that takes a predicate function `pred` and a list `lst`. It should return `Some x` for the first element `x` in `lst` for which `pred x` is `true`. If no such element is found, return `None`.

**Example:** `find_first (fun x -> x > 3) [1; 2; 4; 5]` should return `Some 4`. `find_first (fun x -> x > 10) [1; 2; 4]` should return `None`.

- [ ] **Student Record:**

Define a record type `student` with fields for `name` (string), `id` (int), and `gpa` (float).

Write a function `is_honor_roll s` that takes a `student` record `s` and returns `true` if their `gpa` is `3.5` or higher.

**Example:** Define a student `alice = { name = "Alice"; id = 101; gpa = 3.8 }`. `is_honor_roll alice` should be `true`.

- [ ] **Map Option:**

Write a function `map_option f opt` that takes a function `f` and an `option` value `opt`. If `opt` is `Some x`, apply `f` to `x` and return `Some (f x)`. If `opt` is `None`, return `None`. (This is essentially `Option.map`).

**Example:** `map_option (fun x -> x + 1) (Some 5)` should return `Some 6`. `map_option (fun x -> x + 1) None` should return `None`.

## Level 4: Variants (Algebraic Data Types - ADTs), Tree Structures, Tail Recursion

**Concepts:** Custom recursive data types (variants/ADTs), modeling more complex structures, efficient recursion (tail recursion and accumulator pattern).

### Exercises

- [ ] **Simple Arithmetic Expressions (ADT):**

Define a recursive variant type `expr` to represent simple arithmetic expressions:

```ocaml
type expr =
  | Int of int
  | Add of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
```

Write a recursive function `eval e` that takes an `expr` `e` and returns its integer result.

**Example:** `eval (Add (Int 5, Int 3))` should return `8`. `eval (Mul (Add (Int 2, Int 3), Int 4))` should return `20`.

- [ ] **Binary Tree (ADT):**

Define a recursive variant type `tree` for a binary tree that can hold values of any type (`'a`).

```ocaml
type 'a tree =
  | Leaf
  | Node of 'a tree * 'a * 'a tree
```

Write a function `tree_size t` that takes a `tree` `t` and returns the total number of nodes in the tree.

**Example:**

```ocaml
let my_tree = Node (Node (Leaf, 1, Leaf), 2, Node (Leaf, 3, Leaf))
tree_size my_tree
```

should return `3`.

- [ ] **Tree Traversal (Inorder):**

Using the `tree` type from the previous exercise, write a function `inorder_traversal t` that returns a list of elements in the tree, ordered by an inorder traversal.

**Example:** `inorder_traversal my_tree` should return `[1; 2; 3]`.

- [ ] **Tail-Recursive List Reverse:**

Rewrite the `list_reverse` function (from Level 2 if you implemented it, or just imagine it) to be tail-recursive. This typically involves an accumulator argument.

**Hint:** A function is tail-recursive if the recursive call is the very last operation performed in the function.

**Example:** `reverse_tail_rec [1; 2; 3]` should return `[3; 2; 1]`.

## Level 5: Modules, Functors, More Advanced Data Structures/Algorithms

**Concepts:** Structuring code with modules (`.ml` files), defining interfaces with signatures (`.mli` files, `module type`), writing modules that take other modules as arguments (`functor`).

### Exercises

- [ ] **Basic Math Module:**

Create a file `math.ml` and define a module `Math` inside it that contains functions for basic arithmetic operations (add, sub, mul, div).

Create a corresponding interface file `math.mli` that defines the signature for your `Math` module, exposing only the functions you want to be public.

Test by opening `Math` and using its functions (e.g., `open Math;; Math.add 5 3;;`).

- [ ] **Module Signature for a Set:**

Define a module signature `SET` in a file like `set_sig.mli`. This signature should include types and functions for a basic set of elements:

- `type 'a t` (the type of the set)
- `val empty : 'a t`
- `val add : 'a -> 'a t -> 'a t` (add an element)
- `val mem : 'a -> 'a t -> bool` (check if an element is in the set)
- `val to_list : 'a t -> 'a list` (convert set to a list)

(No implementation needed for this part, just the signature.)

- [ ] **Implement a Set Module (using sorted lists):**

Create a file `list_set.ml` and implement a module `ListSet` that satisfies the `SET` signature you defined in the previous exercise.

Represent the set internally as a sorted list to avoid duplicates and allow efficient `mem` checking.

(Hint: For `add`, ensure the list remains sorted and unique. For `mem`, you can use list recursion, taking advantage of the sorted property to stop early.)

- [ ] **Queue Module (Advanced Data Structure):**

Implement a module `Queue` that represents a queue data structure. A common functional implementation uses two lists: `front` (for dequeuing) and `back` (for enqueuing).

When the `front` list is empty during a dequeue operation, reverse the `back` list and make it the new `front`, then clear the `back` list. This gives amortized O(1) performance.

Include functions:

- `type 'a t`
- `val empty : 'a t`
- `val is_empty : 'a t -> bool`
- `val enqueue : 'a -> 'a t -> 'a t`
- `val dequeue : 'a t -> ('a * 'a t) option` (returns `Some (element, new_queue)` or `None`)

- [ ] **Functor for Ordered Sets (Hardest):**

Define a module signature `ORDERED_TYPE` that specifies what a type needs to provide to be "orderable" (e.g., a `t` type and a `compare` function).

```ocaml
module type ORDERED_TYPE = sig
  type t
  val compare : t -> t -> int (*returns 0 if equal, <0 if first is smaller, >0 if first is larger*)
end
```

Write a functor `MakeSet` that takes a module implementing `ORDERED_TYPE` as an argument and returns a module that implements the `SET` signature (from exercise 2) for that specific ordered type, using a binary search tree as the internal representation.

This is a significant challenge, demonstrating powerful modular programming in OCaml!
