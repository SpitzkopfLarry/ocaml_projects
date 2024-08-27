# ocaml_projects

## First OCaml Projects

Welcome to the "First OCaml Projects" repository!

## Prerequisites

Before you build and run the project, ensure you have the following installed:

- [OCaml](https://ocaml.org/) (version 4.x or higher)
- [OPAM](https://opam.ocaml.org/) (OCaml package manager)
- [Dune](https://dune.build/) (build system for OCaml)

## Setup for Linux Ubunutu 24.04 LTS

### 1. Clone the Repository

Clone this repository to your local machine using Git:

```sh
git clone git@github.com:YourUsername/ocaml_projects.git
cd ocaml_projects
sh
```

### 2. Install Dependencies

```sh
opam init
eval $(opam env)
opam install dune
```

### 3. Build Project

```sh
dune build
```

### 4. Run

```sh
dune exec ./bin/main.exe
```
