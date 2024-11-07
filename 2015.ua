~ "aoc.ua" ~ Day Lines Part Share

Day 1
Share +⊃(¯⌕@)|⌕@()
Part 1 /+
Part 2 +1 ⊗ ¯1 \+

Day 2
Present ← $$ _x_x_
Share ≡(⋕{°Present}) Lines
Part 1 /+≡(+⊃(/+ ×2 ×⊸(↻2)|/× ↙2⊏⊸⍏))
Part 2 /+≡(+⊃(/×|/+ ×2 ↙2⊏⊸⍏))

Day 3
Share ⍉ ⊟ ⊃(+⊃(¯⌕@<|⌕@>)|+⊃(¯⌕@v|⌕@^))
Part 1 ⧻ ◴ \+ ⊂0_0
Part 2 ⧻ ◴ ⊂ ∩(\+ ⊂0_0 ⊏) ⊃(+1 ⊙∘|⊙∘) ×2 ⇡÷2⊸⧻

Day 4
Share ⊢Lines
Md₅ ← (
  =0&runc{"md5" "-q" "-s" ∘}
  ⊃(⋅⋅∘|⊙⋅◌|⋅⊙◌)
  ⍤$$ md5 exited with error: _
)
Part 1 ⊙◌⍢(+1|¬≍"00000" ↙5 Md₅$"__":) 0
Part 2 ⊙◌⍢(+1|¬≍"000000" ↙6 Md₅$"__":) 0

Day 5
Share ≡°□ Lines
Part 1 /+ ≡(
  ××⊃(
    >2 /+ ∵(/+ ⌕:"aeiou")
  | >0 /+ ≡(=⊃(⊡0|⊡1)) ◫2
  | =0 /+ /+ ≡(/+ ⌕:"ab"_"cd"_"pq"_"xy") ◫2
  )
)
Part 2 /+ ≡(
  ×⊃(
    >0 /+ ×⊃(¬◰|¬×⊃(⊂1|⊂:1¬) ≡(=⊃(⊡0|⊡1)) ◫2) ⊛ ◫2
  | >0 /+ ≡(=⊃(⊡0|⊡2)) ◫3
  )
)

Day 6
Toggle  ← $$ toggle _,_ through _,_
TurnOn  ← $$ turn on _,_ through _,_
TurnOff ← $$ turn off _,_ through _,_
Share ≡([⊙∩∩⋕] ⍣(0°Toggle|1°TurnOn|2°TurnOff)) Lines
InstructionTarget ← ☇1 ⊞⊂ ⊃(+ ⇡ +1 - ⊃(⊡1|⊡3|⊡1)|+ ⇡ +1 - ⊃(⊡2|⊡4|⊡2))
MakeLights!       ← ∧(⍜⊡(^0:) ⊃(⊙⋅∘|⋅⊙◌) ⊃InstructionTarget⊢) : ↯1000_1000 0
Part 1 /+ ♭ MakeLights!⨬(◿2 +1|↧1 +1|×0)
Part 2 /+ ♭ MakeLights!⨬(+2|+1|↥0 -1)

Day 7
Bind   ← $$ _ -> _
Not    ← $$ NOT _
Or     ← $$ _ OR _
And    ← $$ _ AND _
LShift ← $$ _ LSHIFT _
RShift ← $$ _ RSHIFT _
Share ≡(
  {⊙⊙∘} ⍣(
    0{°Not}
  | 1{°Or}
  | 2{°And}
  | 3{°LShift}
  | 4{°RShift}
  | 5{∘}
  ) °Bind
) Lines
NoValue        ← $$ No value
Value          ← ⍣(⊙◌ ⋕|°□ ⊡[⊙1] ⊗ □ ⊙⊸≡⊢|⍤NoValue 0⋅⋅0)
Unary          ← Value °{∘}
Binary         ← ∩Value ⊃(⊙⋅∘|⋅⊙∘) °{⊙∘}
WireOutput ← ⊃⋅⋅⊙◌(
  ⨬(-:65535 Unary
  | °⋯ ↧1 +∩(⬚0↙16 ⋯) Binary
  | °⋯ ×∩(⬚0↙16 ⋯) Binary
  | ⍜⋯(⬚0↙16 ⊂×0⇡:) Binary
  | ⌊÷ : ⊙(ⁿ:2) Binary
  | Unary
  ) ⊙⊙⋅∘
) °{⊙⊙∘}
CircuitOutputs ← ⊙◌ ⍢(
  ∧⍣(
    ⊂:⊸{WireOutput}
  | ⊃⋅⊙◌(⊂⊙⋅∘) ⊙⊙⊙⍣(°NoValue|⍤:0)
  ) ⊃(⋅⋅∘|⋅⊙◌|⊙⋅◌) ↯0_3 []
| ≠0 ⧻ ◌
)
Part 1 Share Value"a" CircuitOutputs ↯0_2 []
Part 2 Value"a" CircuitOutputs [{"b" ∘}]

Day 8
Share Lines
StringLiteral      ← $$ "_"
CharactersInMemory ← °0 ∧⍣(
  ⨬(1|0 +1) °@\\
| ⨬(0 +1|2) °@x
| ⨬(0 +1|0 +1|3|0 +1) ◌
) ⊙(0 0) °StringLiteral
Escape ← ⍜⊜□(≡⍜°□(/⊂ ∵⊂@\\)) ⊸(∈ "\\\"")
Part 1 /+ ≡(-⊃CharactersInMemory⧻ °□)
Part 2 /+ ≡(-⊃CharactersInMemory⧻ StringLiteral Escape °□)
