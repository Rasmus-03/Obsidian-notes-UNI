---
kursus: Organisk kemi for Biokemi og Molekylærbiologi
kode: KE555
dato: <% tp.date.now("YYYY-MM-DD") %>
type: forelæsning
tags:
  - ke555
  - organisk kemi
---

# <% tp.file.title %>

> [!summary]
> **Overblik**
> - Hovedtema:
> - Vigtige reaktionstyper/begreber:

---

## 🧬 Fagbegreber & mekanismer

- **Begreb::**  
  Forklaring i 1–3 linjer.

- **Reaktionstype::**  
  Mekanisme, elektronforskyldning, forhold til biokemiske processer.

---

## 🔬 Reaktioner & strukturer

| Reaktion | Mekanisme | Regi-/stereokemi | Biokemisk relevans |
|----------|-----------|-------------------|--------------------|
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
- Hvilket molekyle / hvilken reaktion illustrerer pointen?
- Hvilket begreb/mekanisme knytter det sig til?
`;
}

if (addFigures?.toLowerCase() === "ja") {
  output += `
## 📊 Figurer
- Hvad viser figuren (mekanisme, orbitaler, energidiagram)?
- Hvad skal man kunne forklare?
`;
}

if (addExam?.toLowerCase() === "ja") {
  output += `
> [!warning] Eksamen (mundtlig)
> - Forklar mekanismen med egne ord:
> - Sammenlign reaktivitet af strukturer:
> - Typisk fælde:
`;
}
%>