# Experimental!

~ "aoc.ua" ~ Day Lines Part Share

Day 1
LocationPair ← [∩⋕] °$$ _   _
Share ≡LocationPair Lines
Part 1 /+⌵ -∩⍆ ⊃(≡⊡₀|≡⊡₁)
Part 2 /+× ⟜≡(/+⌕) ⊃(≡⊡₀|¤≡⊡₁)

Day 2
Levels    ← ⊜⋕ ⊸≠@ 
SafeLevel ← >0 ×+⊃(
  /× = ⊸⊏⊸⍏
| /× = ⊸⊏⊸⍖
| /× ×⊃(>0|<4) ⌵≡/-◫2
)
Share ⍚Levels Lines
Part 1 /+ ⍚SafeLevel
Part 2 /+ ⍚(>0 /+ ≡(SafeLevel ⊂⊃(↙|↘+1)) ⊙¤ ⇡+1 ⊸⧻)

Day 3
Mul   ← $$ mul\((\d+),(\d+)\)
Do    ← $$ (^|do\(\))[\S\s]+?(don't\(\)|$)
DoMul ← /+ ≡(× ⋅∩⋕ °[⊙⊙∘])
Share
Part 1 DoMul regex Mul
Part 2 /+ ≡(DoMul regex Mul ⊢) regex Do
