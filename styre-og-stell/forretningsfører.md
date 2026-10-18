---
title: Forretningsfører
layout: default
parent: Styre og stell
---

Fra 1. januar 2026 tar [Solibo](http://solibo.no/) over forretningsføringen og gir oss nye verktøy i forvaltningen.
De tar over etter [Nor Forvaltning AS](https://norforvaltning.no), som i juli 2025 kjøpte forretningen etter advokat Dag Erlandsen, som igjen tok over forretningen fra Helle Forvaltning ca 2009.

## Gårdens forretningsadresse fra 1. januar 2026

<address>
Sameiet Kirkeveien 90<br>c/o Solibo AS<br>
Dronning Eufemias Gate 16<br>
0191 Oslo
</address>
# Organisasjonsnummeret

Organisasjonsnummeret er [979257929](https://www.proff.no/selskap/sameiet-kirkeveien-90/oslo/borettslag/IG70W9503T7).

## Fakturering
Vi foretrekker at dere sender fakturaer som EHF til sameiet. Om ikke, så kan faktura sendes direkte til: <button class="btn btn-purple" data-epost="kirkeveien90,ebilag,com">Vis e-post</button>. Dette er sameiets mail direkte til billagsmottaket.

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
