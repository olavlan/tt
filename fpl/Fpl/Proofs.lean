def isEven (n : Nat) : Prop := ∃ n': Nat, Nat.add n' n' = n

def isOdd (n : Nat) : Prop := ∃ n': Nat, (n' + n') + 1 = n


def oneIsOdd: isOdd 1 := sorry

def twoIsEven: isEven 2 := sorry

-- function that, given n, gives us the proof that n is either even or odd
def isEvenOrOdd (n : Nat) : isEven n ∨ isOdd n := sorry

-- prove that every number is even or odd using the above function
def everyNumberIsEvenOrOdd : ∀ n , isEven n ∨ isOdd n := sorry
