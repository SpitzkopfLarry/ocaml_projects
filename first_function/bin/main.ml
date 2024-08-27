(* Öffnen des Moduls, in dem die Funktionen definiert sind *)
open First_function;;

let () = 
  (* Test der Funktion length *)
  let my_list = [1; 2; 3; 4; 5] in
  Printf.printf "Length of the list: %d\n" (Lists.length my_list);
  
  (* Test der Funktion append *)
  let list1 = [1; 2; 3] in
  let list2 = [4; 5; 6] in
  let appended_list = Lists.append list1 list2 in
  Printf.printf "Appended list: ";
  List.iter (Printf.printf "%d ") appended_list;
  print_newline ();
  
  (* Test der Funktion double *)
  let nums = [1; 2; 3; 4] in
  let doubled_nums = Lists.map Lists.double nums in
  Printf.printf "Doubled numbers: ";
  List.iter (Printf.printf "%d ") doubled_nums;
  print_newline ();
  
  (* Test der Funktion halve *)
  let halved_nums = Lists.map Lists.halve nums in
  Printf.printf "Halved numbers: ";
  List.iter (Printf.printf "%d ") halved_nums;
  print_newline ();
  
  (* Test der Funktion evens *)
  let nums_with_evens = [1; 2; 3; 4; 5] in
  let even_flags = Lists.evens nums_with_evens in
  Printf.printf "Even flags: ";
  List.iter (Printf.printf "%b ") even_flags;
  print_newline ();
  
  (* Test der Funktion delete_exMark *)
  let char_list = ['A'; '!'; 'B'; '!'; 'C'] in
  let cleaned_char_list = Lists.delete_exMark char_list in
  Printf.printf "Cleaned character list: ";
  List.iter (Printf.printf "%c ") cleaned_char_list;
  print_newline ();
  
  (* Test der Funktion smallest *)
  let int_list = [3; 1; 4; 1; 5; 9; 2; 6; 5; 3; 5] in
  let min_elem = 
    try
      Lists.smallest int_list max_int false
    with Not_found -> 
      -1  (* Wert, der anzeigt, dass kein Minimum gefunden wurde *)
  in
  Printf.printf "Smallest element: %d\n" min_elem
