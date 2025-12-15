---
title: Diverse verktøy
layout: default
parent: Styre og stell
---

# Navnelappgenerator for porttelefon

Under [kirkeveien90.no/porttelefon](/porttelefon) finner du et verktøy som lager pene lapper for dørtavla til porttelefonen.

Det tar en CSV-fil fra Excel med "seksjons-id" i en kolonne og ønsket navn i den andre. Etter man trykker på generer
får man en pen PDF ut, ett ark per side.

Eksempel:

<pre>
seksjonsid;navn
A|H0201;Jonsen
A|H0202;Karlsen
A|H0301;Nettleif
A|H0302;Ole, Dole og Doffen
</pre>

Seksjonsid er bare en sammensetning av oppgang + leilighetsnummer som gjør at skriptet kan bruke spesialregler som avhenger av både etasje og oppgang. F.eks. er tavla annerledes i A-oppgangen, gjennom at det ikke bor noen i første etasje, og alle etasjene er derfor forrykket fysisk (knapper) en etasje sammenlignet med normalen. Åttende etasje er også spesielt behandlet, ved at 0801 er lagt på høyre kolonne.

![eksempel på utskrift av tavlen til porttelefon](/assets/images/portelefon.png)

Verktøyet er hovedsakelig bare ["vibe-kodet"][vibekoding] på en ettermiddag etter at styreleder ble
veldig frustrert over å måtte bruke kronisk inkonsistente Word for å lage nye lapper. Det nye verktøyet håndterer:

- automatisk ombrekking og nedskalering av mange og lange navn over to linjer
- fjerning av marger i utskriften (unngår skalerte utskrifter)
- stiplede hjelpelinjer for å se at arket ikke er blitt skalert under laging av pdf
- eventuell overstyring av standardinnstillinger

[vibekoding]: https://www.kode24.no/artikkel/vibe-coding-splitter-utviklerne-jeg-blir-kvalm/230925
