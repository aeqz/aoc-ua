#! /usr/bin/env uiua

Year ← ⍣(
  ⋅⋕ °{⊙∘} &args
| &p $$ Wrong arguments: expected [year]
  &exit 1 0
)

SessionCookie ← ⍣(
  ▽⊸≠@\n &fras ".session"
| &p $$ Expected a .session file with the session cookie
  &exit 1 0
)

Timezone      ← ¯5
InputsDir     ← $$ inputs/_/
Response      ← $"_\r\n\r\n_"
InputFilePath ← $$ _/_.in
Host          ← $$ adventofcode.com
Request       ← $$ GET /_/day/_/input HTTP/1.1
                $$ Host: _
                $$ Accept: text/html
                $$ Cookie: session=_
                $$ Connection: close
                $$ 
                $$ 

FetchDay ← ⍜(
  &tlsc $"_:443"Host
| ⊃(⋅∘|⋅∘|⊙◌|⋅∘)
  &p $$ Fetching day _
  Request Year ⊙(Host SessionCookie)
  ◌ °Response &rs∞⊸&w
  &fwa InputFilePath InputsDir Year :
)

datetime +×3600 Timezone now
⍣(°1>Year ⊡0
  +1 ⇡25
| °1=12 ⊸⊡1 °1=Year ⊸⊡0
  +1 ⇡↧25 ⊡2
| &p $$ That Advent of Code has not started
  &exit 1 0 ◌
)

InputsDir Year
⍣(&fmd
| &p $$ Could not create the inputs directory: _
  &exit 1
)

▽⊸≡(¬&fe InputFilePath InputsDir Year)
∧FetchDay

&p $$ Up to date
