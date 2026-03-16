def last? (xs : List α ) : Option α :=
  match xs with
  | List.nil => Option.none
  | List.cons value List.nil => Option.some value
  | List.cons _ list' => last? list'

def xs: List Nat := [1, 2, 3]

#eval last? xs

def findFirst? {α : Type} (xs : List α) (predicate : α → Bool) : Option α :=
  match xs with
  | List.nil => Option.none
  | List.cons x xs' => (if predicate x then Option.some x else findFirst? xs' predicate)

def isEven (n : Nat) : Bool :=
  match n with
  | Nat.zero => Bool.true
  | Nat.succ n => (if isEven n = Bool.false then Bool.true else Bool.false)

def ys : List Nat := [1, 3, 5, 7, 9, 11, 13]

#eval findFirst? ys isEven

def switch {α β : Type} (pair : α × β) : β × α := (pair.snd, pair.fst)

def pair : Nat × String := (9, "test")

#eval switch pair

inductive PetName where
  | dog (name : String) : PetName
  | cat (name : String) : PetName

def animals : List PetName := [PetName.cat "Snøvy", PetName.dog "Perry", PetName.cat "Thea"]

def howManyDogs (animals : List PetName) : Nat :=
  match animals with
    | List.nil => 0
    | List.cons (PetName.dog _) animals' => Nat.succ (howManyDogs animals')
    | List.cons (PetName.cat _) animals' => howManyDogs animals'

#eval howManyDogs animals

def zip {α β : Type} (xs : List α) (ys : List β) : List (α × β) :=
