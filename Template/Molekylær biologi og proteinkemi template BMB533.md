---
kursus: Molekylær biologi og proteinkemi
kode: BMB533
dato: <% tp.date.now("YYYY-MM-DD") %>
type: forelæsning
tags:
  - bmb533
  - molekylærbiologi
  - proteinkemi
---

# <% tp.file.title %>

> [!summary]
> **Overblik**
> - Hovedtema:
> - Vigtige processer/begreber:

---

## 🧬 Fagbegreber & mekanismer

- **Begreb::**  
  Forklaring i 1–3 linjer.

- **Proces::**  
  Hvor og hvordan sker det? (replikation, transkription, translation, foldning…)

---

## 🧫 Proteinstruktur & funktion

- **Struktur::**  
  Primær/sekundær/tertiær/kvaternær; bindingsstyrker; foldning (chaperoner).

- **Interaktion::**  
  Protein-protein, protein-DNA, enzym-substrat.

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
- Hvilket begreb/teknik knytter det sig til?
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
%>