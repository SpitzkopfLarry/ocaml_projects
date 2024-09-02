(* Definition des Binärbaums *)
type 'a tree =
  | Empty
  | Node of 'a * 'a tree * 'a tree

(* Pre-Order Traversierung *)
let rec pre_order tree =
  match tree with
  | Empty -> []
  | Node (value, left, right) ->
      value :: (pre_order left @ pre_order right)

(* In-Order Traversierung *)
let rec in_order tree =
  match tree with
  | Empty -> []
  | Node (value, left, right) ->
      (in_order left) @ [value] @ (in_order right)

(* Post-Order Traversierung *)
let rec post_order tree =
  match tree with
  | Empty -> []
  | Node (value, left, right) ->
      (post_order left) @ (post_order right) @ [value]

(* Beispielbaum zum Testen *)
let example_tree =
  Node (4,
        Node (2, Node (1, Empty, Empty), Node (3, Empty, Empty)),
        Node (5, Empty, Node (6, Empty, Empty)))
