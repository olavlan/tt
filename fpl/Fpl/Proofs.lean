def isEven (n : Nat) : Prop := ∃ n': Nat, Nat.add n' n' = n

def isOdd (n : Nat) : Prop := ∃ n': Nat, (n' + n') + 1 = n

def isEvenOrOdd (n : Nat) : Prop := isEven n ∨ isOdd n


def oneIsOdd: isOdd 1 := sorry

def twoIsEven: isEven 2 := sorry

def threeIsEvenOrOdd: isEvenOrOdd 3 := sorry

def everyNumberIsEvenOrOdd : ∀ n , isEvenOrOdd n := sorry
