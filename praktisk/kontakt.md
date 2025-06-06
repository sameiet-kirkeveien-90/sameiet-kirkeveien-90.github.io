---
title: Kontakt
layout: default
redirect_from:
    - /kontakt
parent: Praktisk
---

# Kontakt oss gjerne!

Trenger du å kontakte noen i styret finner du telefonnummerene oppført på tavla ved utgangsdøren i hver oppgang.
Vi biter ikke :) 

## Styremedlemmer 2025-26
- Carl-Erik Kopseng (styreleder, oppgang D)
- Marit Aal Hughes (oppgang A)
- Øystein Revheim (oppgang E)

### Varamedlemmer
- Stein Hødnebø (oppgang C)
- Gisle Vada (oppgang E)

## E-post til styreleder
For å beskytte oss mot spam må du først besvare et enkelt spørsmål før du får e-posten.

<div id="magic">
<form>
<label>Hvilket år er vi i?
<input type="number" min="1900" max="2050" name="mysteriousinput" style="width: 4em;"/> 
<button>Vis epost</button>
</label>
</form>
</div>

<script>
const  form = document.querySelector('form');

form.onsubmit = async (event) => {
    event.preventDefault();
    const data = new FormData(form);
    const input = await data.get('mysteriousinput');
    const now = new Date();

    if( String(now.getFullYear()) === input ) {
        const magic = document.getElementById("magic");
        const first = "styreleder";
        const last = "kirkeveien90.no";
        const full = `${first}@${last}`;
        magic.innerHTML = `<b><a href="mailto:${full}">${full}</a></b>`;
    } else {
        alert("Njet. Prøv igjen");
    }
}
</script>

## Forretningsadresse
Sjekk gjerne [proff.no](https://www.proff.no/roller/sameiet-kirkeveien-90/oslo/l%C3%B8nnet-arbeid-i-private-husholdninger/IG70W9510PK)

<pre>
Sameiet Kirkeveien 90
c/o advokat Dag Erlandsen
Ullernfaret 14 C, 0281 Oslo
</pre>

## Annet
Org.nr: 979257929

