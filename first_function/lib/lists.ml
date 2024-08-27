(*/ lists.ml /*)

let rec length l =
  match l with
  [] -> 0
  |_::t -> 1 + length t;;

let rec append a b = 
match a with
[] -> b
| h::t -> h :: append t b;;

let double x = 2 * x;;
let halve x = x / 2;;

let rec map f l =
  match l with
  [] -> []
  | h::t -> f h :: map f t;;

let rec evens l =
  match l with
  [] -> []
  | h::t -> (h mod 2 = 0) :: evens t;;

let rec delete_exMark l =
  match l with
  | [] -> []  
  | h :: t -> 
    if h = '!' then 
      delete_exMark t
    else 
      h :: delete_exMark t;;

let rec smallest l min found =
  match l with 
  | [] -> if found then min else raise Not_found
  | h::t ->
    if h >= 0 && h < min then
      smallest t h true
    else
      smallest t min found;;