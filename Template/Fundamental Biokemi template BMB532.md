---
kursus: Fundamental Biokemi
kode: BMB532
dato: <% tp.date.now("YYYY-MM-DD") %>
type: forelæsning
tags:
  - bmb532
  - biokemi
---

# <% tp.file.title %>

> [!summary]
> **Overblik**
> - Hovedtema:
> - Vigtige reaktioner/begreber:

---

## 🧬 Fagbegreber & mekanismer

- **Begreb::**  
  Forklaring i 1–3 linjer.

- **Reaktion::**  
  Reaktionsforskel, katalysator/koenzym, hvor sker det i cellen?

---

## 🔬 Biokemiske enzymer & metabolisme

- **Enzym::**  
  Substrat, produkt, kinetik (Km/Vmax), regulering (feedback/allo-sterisk).

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
- Hvilket begreb/mekanisme knytter det sig til?
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