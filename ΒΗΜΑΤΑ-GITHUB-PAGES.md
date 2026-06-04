# Πώς βλέπεις το live site (2 λεπτά)

Το repo είναι OK: https://github.com/ReinaBlackmoon/dreamtown-site

Το κόκκινο **X** = το GitHub Pages **δεν ήταν ενεργοποιημένο** ακόμα.

---

## Τρόπος Α — Πιο εύκολος (χωρίς Actions)

1. Άνοιξε: https://github.com/ReinaBlackmoon/dreamtown-site/settings/pages
2. **Build and deployment** → Source: **Deploy from a branch**
3. Branch: **main** → Folder: **/ (root)**
4. **Save**
5. Περίμενε 1–3 λεπτά

**Το site σου:**

https://reinablackmoon.github.io/dreamtown-site/

**Privacy (Play Store):**

https://reinablackmoon.github.io/dreamtown-site/privacy.html

---

## Τρόπος Β — GitHub Actions (μετά από fix)

1. Settings → Pages → Source: **GitHub Actions**
2. Actions tab → **Deploy site** → **Re-run all jobs**

(Το workflow έχει `enablement: true` — κάνε push το τελευταίο commit αν χρειάζεται.)

---

## Αν δεν ανοίγει

- Hard refresh: Ctrl+F5
- Δοκίμασε incognito
- Settings → Pages — δες αν γράφει green check "Your site is live"

---

## Windows download στο site

1. Releases: https://github.com/ReinaBlackmoon/dreamtown-site/releases
2. Ανέβασε `DreamTown-Windows-v1.3.14.zip` από `c:\Projects\dreamtown\dist\`
3. Το κουμπί Download δείχνει στο `releases/latest` (ήδη στο site-config.js)
