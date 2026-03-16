inductive BinaryTree (α : Type) where
  | nil : BinaryTree α
  | cons (root: α) (left: BinaryTree α ) (right: BinaryTree α ) : BinaryTree α

def order (tree : BinaryTree α ) : Nat :=
  match tree with
  | BinaryTree.nil => Nat.zero
  | BinaryTree.cons _ left right => Nat.succ (Nat.add (order left) (order right))


def height (tree : BinaryTree α) : Nat :=
  match tree with
  | BinaryTree.nil => Nat.zero
  | BinaryTree.cons _ left right => Nat.succ (Nat.max (height left) (height right))

def sum (tree : BinaryTree Nat) : Nat :=
  match tree with
  | BinaryTree.nil => Nat.zero
  | BinaryTree.cons k left right => Nat.add k (Nat.add (sum left) (sum right))


def leaf1 : BinaryTree Nat := BinaryTree.cons 3 BinaryTree.nil BinaryTree.nil
def leaf2 : BinaryTree Nat := BinaryTree.cons 3 BinaryTree.nil BinaryTree.nil
def leaf3 : BinaryTree Nat := BinaryTree.cons 5 BinaryTree.nil BinaryTree.nil
def subtree : BinaryTree Nat := BinaryTree.cons 7 leaf1 leaf2
def tree : BinaryTree Nat := BinaryTree.cons 11 subtree leaf3

#eval sum tree

inductive Optional (α : Type) where
  | none : Optional α
  | some (value : α) : Optional α

def test (p : Optional Nat) : Nat :=
  match p with
  | Optional.none => Nat.zero
  | Optional.some v => v
