---
title: Internett og TV
layout: default
redirect_from:
    - /internett
parent: Praktisk
---

# Internett og TV-tilbud
[mesh]: https://www.tek.no/samletest/i/15VdOM/billig-mesh-nettverk-2023
[frihet-m]: https://crm-kampanje.telenor.no/wp-content/uploads/sites/8/dok/Frihet_M_sept_2022.pdf
Sameiet har internett og TV bakt inn i husleien. [Frihet M][frihet-m] heter pakken og benytter koaksialkablene alle leilighetene er utstyrt med. I tilbudet følger følgende med:
- Te-We Boks II (TV). Kobles til koaksuttaket for tV
- Modem (gir internett). Kobles til det andre koaksuttaket.
- Wifi Ruter II (gir trådløst internett). Kobles til modemet. Du kan også benytte andre rutere om det allerede er satt opp, f.eks. om du har et eksisterende [mesh-nettverk][mesh] du er fornøyd med.

Du har da såkalt 260 poeng inkludert, og disse kan du selv fordele mellom TV-tilbudet og internettilbudet, slik at du enten kan få mye TV og relativt sakte internett eller ikke noe TV og superraskt (500 Mbps) internett. Du kan også betale et mellomlegg for flere poeng og f.eks. ekstra programpakker. Alt dette styrer du gjennom Min Side på Telenor.no.

Sameiet er bundet til denne avtalen fram til 2027 og vi kan da se på andre leverandører eller ny infrastur med nye muligheter.

## Hastigheter
Infrastrukturen benytter seg av koaksialkabler, som er en såkalt asymmetrisk signaleringsteknologi. I praksis betyr det mulighet for like høy nedlastingshastighet som på fiber (opp til 1000 Mbps), men opplastingshastigheten er vesentlig lavere. For de aller fleste oppleves ikke dette som et problem og opplastingshastighetene oppgis til følgende avhengig av hvilken nedlastingshastighet du har valgt.

Nedlastingshastighet | Opplastingshastighet |
50|10
100|20
250|30
500|40
750|50
1000|50

### Begrensninger
Selv de laveste hastighetene er tilstrekkelig for gamere, da det typisk går under 1 Mbps hver vei under spilling. Videokonferanse krever tilsvarende bare noen få megabit per sekund også. De få tilfellene opplastingshastigheten kan være begrensende er typisk i utstrakt peer-to-peer fildeling, som BitTorrent, USENET og lignende, som kan sies å være randsoneaktivitet. Har man behov for raskere opplastingshastigheter kan man eventuelt kjøpe [5G-løsninger][5g] på eget initiativ.

[5g]: https://www.google.com/search?q=tr%C3%A5dl%C3%B8st+bredb%C3%A5nd

## Opplevd dårlige hastighet på trådløs nett
[netspot]: https://www.netspotapp.com
90% av tilfellene handler dårlige opplevelser om ens eget trådløsnett og de tykke murveggene vi har i sameiet. I andre leilighetsbygg består jo leilighetene av mer gips enn noe annet, så det skal lite til for å trenge gjennom veggene, men hos oss krever et godt signal et godt oppsatt trådløsnettverk. Som et eksempel: jeg har hatt GlobalConnect (tidligere Lynet) i fem år og har hatt 100 mbps synkront. Tidligere hadde jeg kun wifi via et mesh-nettverk (Google Wifi) satt opp: en boks i stua, en på kjøkkenet og selve ruteren i anretningen (der kabelen fra GC terminerer). Selv om macen min stod i stua, 90 cm unna aksesspunktet i bokhylla og 3 meter fra selve ruteren fikk jeg som oftest bare 5-25 mbps ut på nettet - med høy og variabel forsinkelse på signalet. Dette var utelukkende pga lokale forhold. Koblet jeg pc-en direkte på kabelen til GC fikk jeg typisk 95 mpbs - tett opp mot teoretisk maksimal hastighet. Jeg endte med å bore hull i veggen mellom anretningen og stuen for å koble aksesspunktene sammen. Etter dette har jeg typisk 80-90 mbps ut på internett og 450 mbps mellom boksene i leiligheten. Et annet litt eksotisk problem er at jeg av og til opplevde kjempedårlige hastigheter - uten noen opplevd grunn. Jeg fant da ut at å ta strømmen i ruteren fikset problemet, og jobbet meg utenom problemet ved å sette inn et tidsstyrt støpsel i ruteren som skrudde av strømmen i ett minutt hver natt. Aldri opplevd problemer siden.

Det jeg vil si med denne lange passasjen er at selv om vi nå kommer til å skaffe en kollektiv avtale som teoretisk vil gi mye raskere hastigheter til samtlige, vil lokale forhold i leiligheten ha mye å si, så forsøk å utelukke dem først. For bedre trådløsdekning kan du analysere dekningen med verktøy som [NetSpot][netspot] for å få et visuelt kart over dekningen.

<figure>
<img src="https://www.netspotapp.com/images/index/screens/featureVisualise@2x.png" alt="kart" />
<figcaption>Eksempel på oversiktskart (ikke K90!) over dekningen i leiligheten ved hjelp av NetSpot.</figcaption>
<figure>
