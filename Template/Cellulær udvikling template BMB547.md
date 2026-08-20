---
kursus: Cellulær udvikling
kode: BMB547
dato: <% tp.date.now("YYYY-MM-DD") %>
type: forelæsning
tags:
  - bmb547
  - cellebiologi
---

# <% tp.file.title %>

> [!summary]
> **Overblik**
> - Hovedtema:
> - Vigtige processer/begreber:

---

## 🧬 Fagbegreber & forklaringer

- **Begreb::**  
  Forklaring i 1–3 linjer.

- **Begreb::**  
  Forklaring i 1–3 linjer.

---

<%*
const addExample = await tp.system.prompt("Tilføj eksempel? (ja/nej)", "ja");
const addFigures = await tp.system.prompt("Tilføj figurer? (ja/nej)", "nej");
const addExam = await tp.system.prompt("Tilføj eksamensfokus? (ja/nej)", "ja");

let output = "";

if (addExample?.toLowerCase() === "ja") {
  output += `
## 🧪 Eksempel
- Hvad illustrerer eksemplet?
- Hvilket begreb knytter det sig til?
`;
}

if (addFigures?.toLowerCase() === "ja") {
  output += `
## 📊 Figurer
- Hvad viser figuren?
- Hvad skal man kunne forklare?
`;
}

if (addExam?.toLowerCase() === "ja") {
  output += `
> [!warning] Eksamen
> - Forklar med egne ord:
> - Sammenlign med:
> - Typisk fælde:
`;
}

tR += output;
%>
