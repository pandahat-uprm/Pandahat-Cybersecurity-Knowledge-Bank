---
title: "How to Write a Page"
description: "The style guide for contributors: what goes in each of the ten parts, how to verify resources, and how to submit your work."
status: reviewed
last_reviewed: 2026-09-30
reviewed_by: "@Manuelinfante7"
maintainer: "@Manuelinfante7"
---

# How to Write a Page

This is the guide for anyone writing or rewriting a section of the knowledge bank. It covers *what* to write. For the Git side of things (branches, pull requests, the review checklist), see `CONTRIBUTING.md` in the repository.

You don't need to be an expert in a topic to write about it. What you do need is patience with verification.

!!! tip "New here? Start with something small"
    You don't have to write a whole section to contribute. Each of these takes about 30 minutes, and they're genuinely useful:

    - Verify the links and prices on one existing page, and update its review date
    - Add five terms to the [Glossary](../glossary.md)
    - Rewrite a paragraph that confused you into something clearer
    - Fix a typo or a broken link

    Everything below is for writing a **whole section**, which is a bigger commitment. Come back to it when you're ready.

    New to GitHub? Read [How to Submit Your Work](git-workflow.md) first. It takes ten minutes and assumes nothing.

!!! tip "Two rules that beat every other rule here"
    1. **Accuracy over completeness.** An honest "I couldn't confirm this price" is better than a confident guess. A reader who follows bad information loses money or time.
    2. **Free first.** Every path must be completable with free resources. Paid options are always extras, never requirements.

## Before you start

1. **Claim the work.** Comment on the section's issue in the repository so two people don't write the same page.
2. **Read two finished pages** to absorb the voice, such as [Foundations](../areas/foundations.md) and the [Glossary](../glossary.md).
3. **Open your section's stub and replace it.** Nearly every section already exists as a placeholder page marked 🚧, with its file path and navigation entry already decided. Open the page on the live site, click the ✏️ pencil icon to reach the file, and replace the whole thing (front matter included) with a filled-in copy of `TEMPLATE.md` from the top of the repository. Don't rename or move the file, because the links pointing to it would break. Don't start from a blank page. Ask a maintainer if you want to add a new page. 
4. **Budget your time.** A full area page takes most people 8–12 hours spread over a few weeks: a couple of hours reading, a few writing, and a surprising amount verifying links and prices. Write in several sittings and push your work as you go. AI CAN cut that time significantly, but AI submissions without proper verification WILL be rejected, so it is recommended you verify your content before submitting. 

## Front matter

Every page starts with this block between two `---` lines. The website reads it, so the field names and the date format must be exact.

```yaml
---
title: "Network Security"
description: "One sentence under 160 characters, shown in search results."
status: draft
last_reviewed: 2026-09-30
reviewed_by: "@your-github-handle"
maintainer: "@your-github-handle"
---
```

| Field | What to put |
|---|---|
| `title` | The page name as it should appear, in title case |
| `description` | One clear sentence. Write it for someone deciding whether to click |
| `status` | `stub` (placeholder), `draft` (written, not yet reviewed), or `reviewed` (a maintainer checked it) |
| `last_reviewed` | The date you last verified the content, as `YYYY-MM-DD`. Update this whenever you touch the page |
| `reviewed_by` | The handle of whoever last verified it |
| `maintainer` | The handle of the person who looks after this page over time |

Keep the visible "Page status" box at the top of the page in sync with `last_reviewed`. A monthly automated check flags pages whose date has gone stale.

## Where the file goes

This applies only to **brand-new** pages. If you're filling in an existing stub, its navigation entry and table of contents line already exist, so leave both alone.

| Kind of page | Folder |
|---|---|
| An area of emphasis | `docs/areas/` |
| A how-to guide | `docs/guides/` |
| Platforms, CTFs, communities, scholarships | `docs/platforms/` |
| Job market, frameworks, clearances | `docs/careers/` |

Filenames are lowercase English words joined by hyphens, with no numbers, spaces, accents, or `&`: `identity-access-management.md`. Images go in `docs/assets/images/<page-slug>/` with descriptive names.

If you create a page that doesn't already exist, add it to `nav:` in `mkdocs.yml` and to the table of contents in `README.md`. Otherwise readers can't find it.

## The ten parts

Area pages always use these ten headings, in this order. If a part truly doesn't apply, write one sentence explaining why instead of deleting the heading. Consistency is what lets a student who has read one page navigate all of them.

### 1. What it is

Two or three short paragraphs in plain language, plus **one analogy or concrete example**. Assume the reader has never taken a computing course.

- ✅ "A firewall decides which network traffic is allowed in or out, like a guard at a gate checking a list of who's expected."
- ❌ "Network security encompasses the policies and practices adopted to prevent and monitor unauthorized access, misuse, modification, or denial of a computer network." (Accurate, but it teaches nobody anything.)

**Common mistake:** writing for someone who already knows the field. If a sentence would only make sense to a senior student, rewrite it.

### 2. Why it matters

The real problems this area solves, then **one case study** with a heading like `### Case study: Colonial Pipeline (2021)`. Say what happened, what it cost, and what defenders learned. Link to a reputable source: a government report, a vendor post-mortem, or major news coverage, not a random blog.

Pick cases that are well documented and widely written about. Avoid incidents still under active investigation, where early reporting is often wrong.

### 3. Who it fits

Majors, backgrounds, and personality traits that tend to do well here. **Be specific and be generous.** This is the part that convinces a psychology or business student that there's a door for them.

- ✅ "If you enjoy reading about why people make the choices they do, and you can write clearly for non-technical readers, this area needs you more than it needs another programmer."
- ❌ "Suitable for detail-oriented individuals." (True of everything.)

### 4. Prerequisites

A short, honest, **ordered** list of what to learn first, with links to the pages that teach it. If the honest answer is "finish Foundations first", say that plainly instead of inventing prerequisites.

### 5. Beginner study path

Three stages: Beginner, Intermediate, Job-ready. Each with a rough time estimate at 5 hours a week, and concrete checkable steps.

- ✅ "Complete the first six rooms of a free beginner path, then write up what you learned in your own words."
- ❌ "Learn networking." (Not a step. How? Until when? How do I know I'm done?)

Give ranges, not promises: "roughly 3–5 months at 5 hrs/week" is honest; "be job-ready in 90 days" is not.

### 6. Free resources

A table, free resources only. Aim for 6–12 strong entries rather than 30 mediocre ones. Readers trust a short curated list more than an exhaustive dump.

| Resource | Type | What it's good for | Tag |
|---|---|---|---|
| [Name](https://official-url) | Course / Book / Video / Lab / Docs / CTF / Community | One line, written for a beginner | `[FREE]` |

Link to the **official** source: the vendor, the author, the project. Not a mirror, a repost, a summary, or an unofficial PDF of a paid book.

### 7. Optional paid resources

Keep the "These are optional" note from the template. Then a table with the approximate cost, **the month you checked it**, and why someone might choose it over the free option. Always note student discounts, free tiers, and voucher programs when they exist.

If the free path is genuinely good enough, say so: "Most students won't need anything in this section." That sentence builds more trust than a long list.

### 8. Hands-on practice

Three things: home lab ideas, which practice platforms are most relevant to *this* area, and **portfolio projects** a student could put on GitHub or a résumé. The portfolio part matters most. Describe what each project proves to an employer, not just what it is.

### 9. Certifications

Grouped as entry-level, intermediate, and advanced, with the issuing body, approximate cost and the month checked, prerequisites, and an honest note on how much employers value it. Point out free or low-cost alternatives.

Be straight with readers: some certifications are widely requested in job postings, and others are mostly marketing. Say which is which, and say when a certification isn't worth it for a student yet.

### 10. Career outlook

Common job titles, realistic entry points, the skills that actually appear in postings, the matching [NICE Framework](../careers/nice-framework.md) work roles, and a short **market reality check**. Don't oversell. If most people reach this area after two years in a help desk or SOC role, write that.

## Style rules

- **Define every technical term the first time it appears,** then add it to the [Glossary](../glossary.md). If it's an acronym used across the site, add it to `includes/abbreviations.md` so readers get a hover definition, like [SOC](../glossary.md#soc).
- **Short paragraphs.** Three or four sentences. Long blocks of text get skipped.
- **Write to the reader as "you".** Warm, direct, never condescending.
- **No hype and no gatekeeping.** Avoid "simply", "just", "obviously", and "any serious hacker knows". If something is hard, say it's hard and say why it's worth it.
- **Clear English, not simplified English.** Readers may be bilingual, so prefer short sentences and common words, but keep the real professional vocabulary, because that's what job postings use. Add a Spanish term in parentheses when it genuinely helps.
- **Tables for lists of resources and certifications.** Prose for explanations.
- **No emoji in body text.** The 🚧 marker on stub pages is the exception.

## Tags

Tag every resource with exactly one of these, copied exactly, including the en dash in the third one:

| Tag | Meaning |
|---|---|
| `[FREE]` | Completely free, with no account-blocked core content |
| `[FREEMIUM]` | A genuinely useful free tier, with optional paid upgrades |
| `[PAID – OPTIONAL]` | Costs money, and is never required to complete the path |

If you're unsure whether something counts as free, check whether a student could finish the beginner stage without paying. If not, it's `[FREEMIUM]`.

## Verifying your work

This is the part that makes the knowledge bank worth trusting, and the part contributors most often skip. Before you open a pull request:

- [ ] Every URL opens and shows what you say it shows
- [ ] Every link goes to the official source, with no affiliate or tracking parameters
- [ ] Every price came from the official page, written as `~$425 (checked 2026-09)`
- [ ] Certification names, versions, and prerequisites match the certifying body's current page
- [ ] Student discounts and free tiers were checked, not assumed
- [ ] Anything you couldn't confirm says so: *"unverified, please check"*
- [ ] The case study's key facts appear in at least two reputable sources
- [ ] `last_reviewed` and the visible status box are updated

!!! warning "If you use an AI tool to help draft"
    That's allowed, but AI tools confidently invent resource names, URLs, prices, and certification details. **You** are responsible for every fact on the page: open every link yourself and verify every price on the official site. A page with invented resources is worse than no page at all, and it's the fastest way to lose a reader's trust.

## Formatting you can use

Admonitions (the colored boxes) use `!!!` followed by a type and a title, with the content indented by four spaces. The useful types are `note`, `tip`, `info`, `warning`, and `danger`. Collapsible boxes use `???` instead, which is handy for hiding solutions or long lists.

Other things that work on this site: tables, task lists with `- [ ]`, fenced code blocks, and tabbed content. Headings should go in order (`##`, then `###`), because the table of contents on the right is built from them.

## Preview and submit

1. Preview locally if you can (`mkdocs serve`, see `CONTRIBUTING.md`). If you can't, the automatic check on your pull request catches broken links.
2. Branch, commit, and open a pull request. Set `status: draft`.
3. Fill in the pull request checklist honestly. Say what you couldn't verify.
4. A maintainer reviews it. Expect comments: that's review working, not criticism of you.
5. Once merged, your page is live within minutes, and your name goes in [Maintainers](maintainers.md).

## When you're stuck

Ask. Open a draft pull request with a half-finished page and ask for direction, or bring it to a PandaHat meeting. A partial page that someone finishes is far more useful than a perfect page that never gets written.
