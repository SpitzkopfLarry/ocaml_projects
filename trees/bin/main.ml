open Traversal
(* Funktion, um eine Liste von Ints auszugeben *)
let print_int_list lst =
  List.iter (fun x -> print_int x; print_string " ") lst;
  print_newline ()

let () =
  (* Aufrufen und Ausgeben der Pre-Order Traversierung *)
  let pre_order_list = pre_order example_tree in
  print_string "Pre-Order Traversierung: ";
  print_int_list pre_order_list;

  (* Aufrufen und Ausgeben der In-Order Traversierung *)
  let in_order_list = in_order example_tree in
  print_string "In-Order Traversierung: ";
  print_int_list in_order_list;

  (* Aufrufen und Ausgeben der Post-Order Traversierung *)
  let post_order_list = post_order example_tree in
  print_string "Post-Order Traversierung: ";
  print_int_list post_order_list
