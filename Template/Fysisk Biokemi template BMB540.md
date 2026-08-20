---
kursus: Fysisk Biokemi
kode: BMB540
dato: <% tp.date.now("YYYY-MM-DD") %>
type: forelæsning
tags:
  - bmb540
  - fysisk biokemi
---

# <% tp.file.title %>

> [!summary]
> **Overblik**
> - Hovedtema:
> - Vigtige fysisk-kemiske principper:

---

## 🧬 Fagbegreber & principper

- **Begreb::**  
  Forklaring i 1–3 linjer.

- **Princip::**  
  Termodynamik, kinetik, bindinger, opløselighed, hydrofob-effekt, elek-trostatik, diffusion…

---

## 📐 Formler & beregninger

> [!NOTE] Formler
> $$ \Delta G = \Delta H - T\Delta S $$

> [!TIP] Summary
> - Hvad beregner man her?
> - Hvilke enheder bruges?

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
- Hvilket begreb/formel knytter det sig til?
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
> - Typisk fælde / regnefejl:
`;
}
%>