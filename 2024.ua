~ "aoc.ua" ~ Day Lines Part Share

Day 1
LocationPair ← [∩⋕] °$$ _   _
Share ≡LocationPair Lines
Part 1 /+⌵ -∩⍆ ⊃(≡⊡₀|≡⊡₁)
Part 2 /+× ⟜≡(/+⌕) ⊃(≡⊡₀|¤≡⊡₁)

Day 2
Levels ← ⊜⋕ ⊸≠@ 
SafeLevel ← >0 ×+⊃(
  /× = ⊸⊏⊸⍏
| /× = ⊸⊏⊸⍖
| /× ×⊃(>0|<4) ⌵≡/-⧈∘2
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

Day 4
Rotate       ← ⍉≡⇌
XmasRows     ← /+ ♭⌕"XMAS"
XmasDiagonal ← ⍣(1°"XMAS"|0) ⊡[0_0 1_1 2_2 3_3]
XmasShape    ← ⍣(1°"MSAMS"|1°"SMASM"|1°"SSAMM"|1°"MMASS"|0) ⊡[0_0 0_2 1_1 2_0 2_2]
Share ≡°□Lines
Part 1 /+ [∩∩(+⊃(XmasRows|/+ ♭≡≡XmasDiagonal ⧈∘4_4))] ⊸Rotate⊸Rotate⊸Rotate
Part 2 /+ ♭≡≡XmasShape ⧈∘3_3

Day 5
Ordering        ← $$ _|_
OrderingUpdates ← $$ _
                  $$ 
                  $$ _
                  $$ 
MidPage         ← ⊡÷2⊸⧻
Update          ← ⊜⋕ ⊸≠@,
SortUpdate      ← ⊏⍖ °⊚⊛⟜◴ ≡⊢
UpdateOrdering  ← ▽: ⟜≡(¬∊:∞ ⬚∞⊗) ⊙¤
≡[∩⋕°Ordering] Lines ⊙(⍚Update Lines) °OrderingUpdates
⊸⍚(SortUpdate UpdateOrdering)¤
°⊟⊕□: ⟜≡◇(¬/× = ↘¯1 :)
Part 1 /+ ◇⍚MidPage
Part 2 /+ ◇⍚MidPage
