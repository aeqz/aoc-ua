~ "aoc.ua" ~ Day Lines Part Share

Day 1
⊜□ ⊸(××⊃(≠@,|≠@\n|≠@ ))
L           ← $$ L_
R           ← $$ R_
North       ← ℂ 1 0
Origin      ← ℂ 0 0
TurnLeft    ← ℂ ¯1 0
TurnRight   ← ℂ 1 0
Instruction ← ⍣(⊙TurnLeft ⋕°L|⊙TurnRight ⋕°R)
Share ◌ ∧(⊃(⋅×|⊂≡(+××) ⇌+1⇡ ⊙⊙⊙⊸⊢) Instruction) ⊙(North Origin)
ManhattanDistance ← +∩⌵°ℂ-
Part 1 ManhattanDistance Origin ⊢
Part 2 ManhattanDistance Origin ⊢ ▽⊸(¬◰) ⇌
