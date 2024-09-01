Year ↚ ⍣(
  ⋕ °$"_.ua"⊢&args
| &p $$ Wrong file name
     $$ Expected [year].ua
  &exit 1 0
)

&p $"Advent of Code _" Year

Day ← (
  &p ⊸$"\nDay _"
  ⍣(
    &fras $"inputs/_/_.in" Year
  | &p ⋅$$ _
    &p $"You may need to run the inputs script for year _" Year
    &exit 1 0
  )
)

Share ← .

Lines ← ⊜□ ⊸≠@\n

Part ← &p $$ Part _: _
