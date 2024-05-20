---
title: Kontakt
layout: default
---

# Kontakt oss gjerne!

Trenger du å kontakte noen i styret finner du telefonnummerene oppført på tavla ved utgangsdøren i hver oppgang.
Vi biter ikke :) 

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
