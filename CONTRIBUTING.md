# Contributing to the PandaHat Cybersecurity Knowledge Bank

Thank you for helping! This knowledge bank only stays useful if students keep it accurate. You don't need to be an expert or know Git to contribute.

## Ways to contribute

| You want to... | Do this |
|---|---|
| Report a broken link, outdated price, or error | [Open an issue](https://github.com/pandahat-uprm/cyber-knowledge-bank/issues/new) and describe what's wrong and where |
| Suggest a new resource | Open an issue with the resource name, URL, cost, and why it's useful for beginners |
| Fix something small yourself | Click the ✏️ **Edit this page** button on the website, make your change, and GitHub will guide you through opening a pull request |
| Write or rewrite a whole section | Comment on the section's tracking issue so work isn't duplicated, then follow "Writing a section" below |
| Translate to Spanish | Open an issue first so we can agree on the folder structure |

A **pull request** (PR) is a proposal to change files. A maintainer reviews it before it goes live, so you can't break anything by trying.

## Writing a section

1. Copy [`TEMPLATE.md`](TEMPLATE.md) into the correct folder under `docs/`, using the naming convention below.
2. Fill in all 10 parts. If a part doesn't apply, say so in one sentence instead of deleting it.
3. Define every technical term the first time it appears, and add new terms to `docs/glossary.md`.
4. Set `status: draft` in the front matter until a maintainer reviews it.

### Naming convention

- Lowercase English words separated by hyphens: `identity-access-management.md`
- No numbers, spaces, accents, or `&` in filenames
- Images go in `docs/assets/images/<page-slug>/` with descriptive names
- A new page must also be added to `nav:` in `mkdocs.yml` and to the table of contents in `README.md`

### Style rules

- Write for a curious first-year student from any major. Be encouraging, never condescending.
- Use short paragraphs and tables for lists of resources and certifications.
- Tag every resource with exactly one of these (copy them exactly, including the en dash): `[FREE]`, `[FREEMIUM]`, `[PAID – OPTIONAL]`
- Free resources always come first. Paid resources are never presented as required.
- Link to official sources (the vendor, certifying body, or original author), not to reposts or summaries.

## Verification checklist for links and prices

Complete this for **every** resource you add or change. The pull request template repeats it.

**Links**
- [ ] The URL opens and shows the resource (not a 404, login wall, or parked domain)
- [ ] It links to the official source, not a mirror, repost, or aggregator
- [ ] No URL shorteners, affiliate/referral links, or tracking parameters (`?utm_...`, `?ref=...`)
- [ ] The resource is still maintained (recent updates, active course, or a clearly stable classic)
- [ ] Nothing pirated: no unofficial PDFs of paid books or leaked course material

**Prices and certifications**
- [ ] The price comes from the official page, not a blog or forum
- [ ] It's written as approximate USD with the month you checked: `~$425 (checked 2026-09)`
- [ ] Student discounts, free tiers, vouchers, or scholarships were checked on the official site
- [ ] Certification prerequisites and exam versions match the certifying body's current page
- [ ] If you couldn't confirm something, you wrote *"unverified, please check"* instead of guessing

**Page housekeeping**
- [ ] `last_reviewed` in the front matter is updated to today's date (`YYYY-MM-DD`)
- [ ] The visible "Last reviewed" line at the top of the page matches
- [ ] The page still builds (the automatic check on your PR passes)

## Ethics rules for content

We never publish:
- Instructions that encourage testing systems without permission
- Live malware samples or direct links to download them outside of established, access-controlled research repositories
- Exploits for vulnerabilities that haven't been publicly disclosed and patched
- Personal information about real people

When in doubt, ask in your pull request.

## Previewing the site on your computer (optional)

You need Python 3.10 or newer. On Windows, run these commands in WSL (Windows Subsystem for Linux) or Git Bash.

```bash
git clone https://github.com/pandahat-uprm/cyber-knowledge-bank.git
cd cyber-knowledge-bank
python3 -m venv .venv
source .venv/bin/activate          # Windows PowerShell: .venv\Scripts\Activate.ps1
pip install -r requirements.txt
bash scripts/sync-index.sh         # builds the home page from README.md
mkdocs serve                       # open http://127.0.0.1:8000
```

## Review process

1. Open your pull request against `main` and fill in the template.
2. The automatic build check must pass.
3. At least one maintainer (and the area's code owner, if one is assigned) reviews it.
4. Once approved and merged, the website updates automatically within a few minutes.

## Code of conduct

Be kind, assume good intent, and remember that everyone here is learning. Harassment of any kind isn't tolerated. Report problems privately to the PandaHat Directive.
