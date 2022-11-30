// Test integrated numbering patterns.

---
// Test basic call.
#lorem(19)

---
// Test custom paragraphs with user code.
#set text(8pt)

{
  let sentences = lorem(59)
    .split(".")
    .filter(s => s != "")
    .map(s => s + ".")

  let used = 0
  for s in sentences {
    if used < 2 {
      used += 1
    } else {
      parbreak()
      used = 0
    }
    s.trim()
    [ ]
  }
}

---
// Error: 7-9 missing argument: number of words
#lorem()

---
#for i in range(9) {
  numbering(i, "* and ")
  numbering(i, "I")
  [ for #i]
  parbreak()
}

---
// Error: 12-14 must be at least zero
#numbering(-1, "1")