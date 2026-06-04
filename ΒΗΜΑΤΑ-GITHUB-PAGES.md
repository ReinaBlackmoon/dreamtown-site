# DreamTown site — βήμα βήμα (μόνο site, όχι κώδικας παιχνιδιού)

## Τι ανεβαίνει στο GitHub

Μόνο ο φάκελος **`dreamtown-site`** (αυτός):

- About
- Download (link)
- Discord
- Privacy

**ΔΕΝ** ανεβάζεις το `dreamtown` project (όχι lib/, όχι Flutter).

---

## Βήμα 1 — Δοκίμασε το site στο PC

Άνοιξε: `c:\Projects\dreamtown-site\index.html` στον browser.

---

## Βήμα 2 — GitHub login (μία φορά)

1. Εγκατάστησε [GitHub Desktop](https://desktop.github.com/) **ή** Git από terminal.
2. Terminal:
   ```
   gh auth login
   ```
   (αν δεν έχεις `gh`, χρησιμοποίησε GitHub Desktop μόνο.)

---

## Βήμα 3 — Νέο PUBLIC repo (μόνο site)

1. https://github.com/new
2. Repository name: **`dreamtown-site`** (ή `dreamtown-game-page`)
3. **Public**
4. **Χωρίς** README / .gitignore (άδειο repo)
5. Create repository

---

## Βήμα 4 — Ανέβασε ΜΟΝΟ τα αρχεία site

### Με GitHub Desktop (εύκολο)

1. File → Add local repository → `c:\Projects\dreamtown-site`
2. Publish repository → `dreamtown-site` (public)
3. Commit message: `DreamTown public site`
4. Push

### Με terminal (αν έχεις git)

```bat
cd c:\Projects\dreamtown-site
git init
git add index.html privacy.html site-config.js css .nojekyll README.md
git commit -m "DreamTown public site"
git branch -M main
git remote add origin https://github.com/ΤΟ-USERNAME-ΣΟΥ/dreamtown-site.git
git push -u origin main
```

Αντικατάστησε `ΤΟ-USERNAME-ΣΟΥ` (π.χ. ReinaBlackMoon).

---

## Βήμα 5 — Ενεργοποίησε Pages (live site)

1. Repo **dreamtown-site** στο GitHub
2. **Settings** → **Pages**
3. Source: **Deploy from a branch**
4. Branch: **main** → Folder: **/ (root)**
5. **Save**

Μετά από 1–3 λεπτά:

```
https://ΤΟ-USERNAME-ΣΟΥ.github.io/dreamtown-site/
```

Privacy (για Play Store):

```
https://ΤΟ-USERNAME-ΣΟΥ.github.io/dreamtown-site/privacy.html
```

---

## Βήμα 6 — Windows installer / ZIP (χωρίς κώδικα)

1. Στο PC: `c:\Projects\dreamtown\PACKAGE-WINDOWS.bat`
2. Στο GitHub: repo **dreamtown-site** → **Releases** → **Create new release**
3. Tag: `v1.3.14` → ανέβασε το ZIP από `dreamtown\dist\`
4. Copy link του αρχείου → βάλτο στο `site-config.js` → `windowsDownload`
5. Commit + push (GitHub Desktop)

---

## Βήμα 7 — Discord link

Ήδη στο `site-config.js`: `https://discord.gg/qkwYd8rAhQ`

---

## Σημαντικό

| Ναι | Όχι |
|-----|-----|
| Repo `dreamtown-site` (public) | Repo με όλο το Flutter project |
| HTML site + Releases για ZIP | Upload `lib/`, `android/`, κλπ |

Το παιχνίδι μένει **ιδιωτικό** στον υπολογιστή σου.
