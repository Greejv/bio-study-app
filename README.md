# Srdce v čase

Interaktívna učebná pomôcka o obehovej sústave a jej fylogenetickom vývoji – od difúzie u hubiek po štvordielne srdce vtákov a cicavcov.

Otvor `index.html` v prehliadači (funguje aj offline, len bez vlastného fontu).

## Nasadenie na Vercel
Nie sú potrebné žiadne závislosti ani nastavenia.

1. Na [vercel.com/new](https://vercel.com/new) importuj tento GitHub repozitár.
2. Nič nemeň a klikni na **Deploy**. Vercel si všetko prečíta z `vercel.json`: spustí `sh build.sh` a nasadí priečinok `public/`.

Alebo z príkazového riadku: `npx vercel --prod`.

## Ukladanie postupu
- Postup (prejdené zastávky, kartičky, najlepšia písomka) sa ukladá v prehliadači žiaka (`localStorage`). Nemá dátum exspirácie a nikam sa neodosiela.
- Appka pri prvom uložení požiada prehliadač o trvalé úložisko (`navigator.storage.persist()`).
- **Safari (iPhone, Mac) maže dáta webov, ktoré človek 7 dní neotvoril.** Preto sa appka dá pridať na plochu (Zdieľať → Pridať na plochu). Na ploche sa toto pravidlo neuplatňuje.
- Na úvodnej stránke je v sekcii **Uložený postup** záloha: kód, ktorý si žiak skopíruje a neskôr vloží späť, aj na inom zariadení.

## Čo obsahuje
- **Obsah** – 8 zastávok evolúcie. Každá prechádza overenými metódami učenia: rozcvička z minulej zastávky (opakovanie s odstupom) → tip vopred (predpoveď) → animovaná schéma (obraz + slovo) → vyfarbi schému sám (kreslenie) → kľúčové body s príkladmi → „Prečo?“ (elaborácia) → otázky z pamäti (vybavovanie) → doplňovačka → vysvetli spolužiakovi (učenie druhého) → rámček Zapamätaj si.
- **Cesta kvapky** – hra: preveď kvapku krvi obehom ryby, žaby a človeka; farba ukazuje okysličenie.
- **Kam patrí?** – triedenie živočíchov podľa typu obehovej sústavy (s výnimkami ako krokodíl či sépia).
- **Kartičky s otázkami** – opakovanie s rozostupmi (Leitnerov systém), postup sa ukladá v prehliadači.
- **Písomka** – 12 zmiešaných otázok s vysvetlením chýb a odkazmi na zastávky na zopakovanie a známkou 1 – 5.
- **Ťahák** – porovnávacia tabuľka a pomôcka „2 – 3 – 3½ – 4“.

## Vývoj
Zdroj je `src/app.html`, ikony a manifest sú v `src/assets/`. Príkaz `sh build.sh` vygeneruje `index.html` a `public/` (výstup pre Vercel).

## Dizajn
Minimalistický dizajn inšpirovaný Apple: biela plocha, zaoblené sivé skupiny ako v iOS, jeden font (Onest), modrá pre akcie, červená a modrá len pre krv.

## Zdroje k metódam učenia
- Dunlosky a kol. (2013), Improving Students' Learning With Effective Learning Techniques.
- Weinstein, Madan, Sumeracki (2018), Teaching the science of learning.
