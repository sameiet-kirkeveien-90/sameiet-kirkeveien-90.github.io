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

## Styremedlemmer
- Carl-Erik Kopseng (styreleder). <button class="btn btn-purple" data-epost="styreleder,kirkeveien90,no">Vis e-post</button>. Valgt til 2026. Bor i oppgang D
- Marit Aal Hughes (oppgang A)
- Øystein Revheim (oppgang E)

### Varamedlemmer
- Stein Hødnebø (oppgang C)
- Gisle Vada (oppgang E)

## Forretningsfører 
Fra 1. juli 2025 ble forretningsføring overtatt av Nor Forvaltning AS etter over 20 år med advokat Dag Erlandsen. 
Dette er en midlertidig løsning fram til 1. januar 2026 da [Solibo](http://solibo.no/) vil ta over forretningsføringen og gi 
oss nye verktøy i forvaltningen.

### Forretningsadresse
<address>
Sameiet Kirkeveien 90 AS <br>
C/O <a href="https://www.forvaltning.no">Nor Forvaltning AS</a> <br>
Alnaparkveien 11<br>
1081 Oslo
</address>

<a href="tel:+4722164530">22 16 45 30</a>
<button class="btn btn-purple" data-epost="post,forvaltning,no">Vis e-post</button> <br>

## Nøkkelbrikker og porttelefon
Assistentpartner AS har ansvaret for forvaltning av nøkkelbrikkene og porttelefonene våre. Trenger du ny nøkkelbrikke eller vil ha en ekstra trådløs høyttaler på kjøkkenet for å høre at noen ringer kan du kontakte dem direkte.

<address>
<a href="tel:+4748101100">48 10 11 00</a>
<button class="btn btn-purple" data-epost="post,assistentpartner,no">Vis e-post</button> <br/>
</address>

## Annet
Org.nr: 979257929

Sjekk gjerne [proff.no](https://www.proff.no/selskap/sameiet-kirkeveien-90/oslo/borettslag/IG70W9503T7)



<dialog id='guess-game'>
<button class="btn btn-green" id="close-button">Lukk</button><br><br>
For å beskytte oss mot spam må du først besvare et enkelt spørsmål før du får se e-postadressene

<form>
<label>Hvilket år er vi i?
<input type="number" min="1900" max="2050" name="mysteriousinput" style="width: 4em;"/> 
<button class="btn btn-purple">Svar</button>
</label>
</form>
</dialog>

<script>
const guessGame = document.querySelector('#guess-game');
const form = guessGame.querySelector('form');

function replaceButtonsWithEmailLinks(){
    for( const button of document.querySelectorAll('button[data-epost]')) {
        const [pre,post,tld] = button.dataset.epost.split(',');
        const full = `${pre}@${post}.${tld}`;
        button.outerHTML = `<a href="mailto:${full}">${full}</a>`;
    }
}

form.onsubmit = async (event) => {
    event.preventDefault();
    const data = new FormData(form);
    const input = await data.get('mysteriousinput');
    const currentYear = new Date().getFullYear();

    if( currentYear == input ) {
        replaceButtonsWithEmailLinks();
        guessGame.close();
    } else {
        alert("Njet. Prøv igjen");
    }
};

document.onclick = (event) => {
    if (event.target.matches('[data-epost]')) {
        guessGame.showModal();
    }

    if (event.target.matches('#close-button')) {
        guessGame.close();
    }
}

</script>
