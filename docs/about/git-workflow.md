---
title: "How to Submit Your Work (Git & GitHub)"
description: "Branches, commits, and pull requests explained for first-time contributors, with three routes: browser, VS Code, or command line."
status: reviewed
last_reviewed: 2026-09-30
reviewed_by: "@Manuelinfante7"
maintainer: "@Manuelinfante7"
---

# How to Submit Your Work

Everything on this site lives in a **repository** (a project folder with a complete history of every change) on GitHub. This page explains how your writing gets from your screen onto the live site.

You do not need to be a programmer, and you do not need to install anything. The first route below works entirely in a web browser.

## The five words you need

| Word | What it means here |
|---|---|
| **Repository** (repo) | The project folder that holds every page, plus the full history of who changed what |
| **Branch** | Your own private copy of the project where you can work. Nothing you do on a branch affects the live site until it's merged |
| **Commit** | A saved change, with a short message explaining what you did. Think of it as a labeled checkpoint |
| **Pull request** (PR) | A request to bring your branch's changes into the site, where someone reviews them first |
| **Merge** | Accepting a pull request. This is the moment your work goes live |

## Why you can't just edit the site directly

The `main` branch is the live site, and it's protected: nobody can change it directly, not even the project founder. Every change must arrive as a pull request and pass an automatic check first.

This isn't about trust. It's because the automatic check catches broken links and formatting mistakes before readers ever see them, and because a second pair of eyes catches the rest. It also means **you can't break anything.** The worst case is a pull request that doesn't get merged.

## The cycle, in one picture

```text
main (the live site)
 │
 ├──► you create a branch          "area/network-security"
 │      │
 │      ├──► you commit changes    "Add network security draft"
 │      └──► you open a pull request
 │               │
 │               ├──► automatic build check runs (about 1 minute)
 │               └──► a maintainer reviews and merges
 │
 └──◄ your work is live within a few minutes
```

## Route 1: In the browser (easiest, nothing to install)

Best for fixing a typo, updating a link or price, adding glossary terms, or writing a whole page if you're comfortable typing Markdown in a text box.

**To change an existing page:**

1. On the live site, open the page and click the ✏️ **pencil icon** near the title. It takes you to that file on GitHub. (Or browse to the file in the repository and click the pencil there.)
2. Make your changes in the editor.
3. Click **Commit changes…** at the top right.
4. In the box that appears, write a short message, such as `Fix broken link on cloud security page`.
5. **Important:** choose **Create a new branch for this commit and start a pull request.** GitHub suggests a branch name; you can keep it or rename it using the convention below. If you don't see this option, GitHub will select it for you automatically, because `main` is protected.
6. Click **Propose changes**, then **Create pull request**.

**Most sections already exist as stubs.** Almost every page of the knowledge bank is already there as a placeholder marked 🚧, with its file path, title, and navigation entry already set. You don't create a new file; you open that stub and replace its contents. Find yours by opening the page on the live site and clicking the ✏️ pencil icon, which takes you straight to the right file.

**Creating a genuinely new page** is rarer. In the repository, click **Add file → Create new file** and type the full path, such as `docs/areas/mobile-security.md`. GitHub creates any missing folders. A new page also needs an entry in `mkdocs.yml` and in the `README.md` table of contents, or nobody can find it. Ask a maintainer if you're unsure whether your topic needs a new page and confirm with them the ideas you would want to add to the new page. 

## Route 2: VS Code (best for writing a whole section)

Install [Visual Studio Code](https://code.visualstudio.com/) and [Git](https://git-scm.com/), then clone the repository once (`Ctrl+Shift+P` → **Git: Clone**). After that, every contribution follows the same loop:

1. **Start fresh:** make sure the status bar at the bottom left says `main`, then `Ctrl+Shift+P` → **Git: Pull**.
2. **Create your branch:** click the branch name in the status bar → **Create new branch** → name it (see below).
3. **Write:** edit the files. If you've set up the local preview, run it to see your changes as you type; see `CONTRIBUTING.md` for the setup.
4. **Commit:** open **Source Control** (`Ctrl+Shift+G`), click **+** to stage your files, write a message, and click **Commit**.
5. **Publish:** click **Publish Branch** (or **Sync Changes** if you've already published).
6. **Open the pull request:** click **Create Pull Request** when VS Code offers it, or open the repository on GitHub and click the **Compare & pull request** banner.
7. **After it's merged:** switch back to `main` and run **Git: Pull** before starting your next branch.

## Route 3: Command line

If you already use Git, nothing here is unusual:

```bash
git checkout main && git pull
git checkout -b area/network-security
# ...edit files...
git add docs/areas/network-security.md
git commit -m "Add network security draft"
git push -u origin area/network-security
# then open the pull request from the link Git prints
```

## Naming your branch

Use a short prefix, a slash, and a few hyphenated words:

| Prefix | Use it for | Example |
|---|---|---|
| `area/` | A new or rewritten area page | `area/digital-forensics` |
| `guide/` | A page in `docs/guides/` | `guide/home-lab` |
| `fix/` | A correction to existing content | `fix/owasp-link` |
| `docs/` | Project documentation and templates | `docs/writing-guide` |

One branch per topic. Don't write three unrelated pages on the same branch, because they then have to be reviewed and merged together.

## What happens to your pull request

1. **The build check runs.** It takes about a minute and appears at the bottom of the pull request page.
      - ✅ Green: the site builds correctly.
      - ❌ Red: something's wrong. Click **Details** to read the log. The most common causes are a link to a file that doesn't exist and a missing or malformed front matter block. Fix it on the same branch, commit again, and the check reruns automatically.
2. **A maintainer reviews it.** Expect comments and requested changes, even on good work. That's the process functioning, not a judgment of you. Reply in the pull request, push more commits to the same branch, and the pull request updates itself.
3. **It gets merged**, and the site rebuilds and deploys on its own. Your page is live in a few minutes, and your name goes in [Maintainers](maintainers.md).

Work in progress is welcome. If you want early feedback, open the pull request and mark it as a **draft**, or just say in the description that it isn't finished.

## Common snags

| What happened | What to do |
|---|---|
| You started writing and realized you're on `main` | Create a branch now. Your uncommitted changes come with you |
| You forgot to pull first, and your branch is behind | On the pull request page, click **Update branch** |
| The red ❌ says a reference file isn't found | A link points to a file that doesn't exist. Check the path and spelling; paths are case-sensitive |
| "This branch has conflicts that must be resolved" | Someone changed the same lines you did. Click **Resolve conflicts** on GitHub, keep the correct version, and mark it resolved. Ask a maintainer if it looks confusing |
| You pushed something you shouldn't have (a password, a personal file) | Tell a maintainer immediately. Don't just delete it in a new commit, because the history keeps it |
| You want to abandon a branch | Close the pull request and delete the branch. Nothing is lost on `main` |

## Next

Once you know how to submit, read [How to Write a Page](writing-guide.md) for what actually goes on the page.
