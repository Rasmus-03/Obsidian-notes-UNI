---
kursus: Bioanalytisk instrumentering
kode: BMB509
dato: <% tp.date.now("YYYY-MM-DD") %>
type: forelæsning
tags:
  - bmb509
  - instrumentering
---

# <% tp.file.title %>

> [!summary]
> **Overblik**
> - Hovedtema:
> - Vigtige teknikker/apparatur:

---

## 🧬 Fagbegreber & teknikker

- **Teknik::**  
  Hvad måler den? Hvordan fungerer den? (spektroskopi, kromatografi, elektroforese, massespektrometri…)

- **Instrument::**  
  Opbygning, principper, begrænsninger, hvornår bruges det?

---

## 🔬 Apparatur & metoder

| Teknik | Princip | Bruges til | Begrænsning |
|--------|---------|-----------|-------------|
| | | | |

---

<%*
const addExample = await tp.system.prompt("Tilføj eksempel? (ja/nej)", "ja");
const addFigures = await tp.system.prompt("Tilføj figurer? (ja/nej)", "nej");
const addExam = await tp.system.prompt("Tilføj eksamensfokus? (ja/nej)", "ja");

let output = "";

if (addExample?.toLowerCase() === "ja") {
  output += `
## 🧪 Eksempel
- Hvilket måleproblem? Hvilken teknik bruges?
- Hvad fortæller resultatet?
`;
}

if (addFigures?.toLowerCase() === "ja") {
  output += `
## 📊 Figurer
- Hvad viser figuren (f.eks. kromatogram, spektrum)?
- Hvad skal man kunne aflæse/forklare?
`;
}

if (addExam?.toLowerCase() === "ja") {
  output += `
> [!warning] Eksamen
> - Forklar princippet i teknikken:
> - Hvornår vælger man teknik A frem for B?
> - Typisk fælde:
`;
}
%>