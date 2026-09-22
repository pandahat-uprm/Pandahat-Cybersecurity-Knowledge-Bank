#!/usr/bin/env python3
"""Report knowledge bank pages that are overdue for review.

A page is overdue when its `last_reviewed` front-matter date is older than
MAX_AGE_DAYS. Stub pages are skipped. Prints a Markdown report to stdout.
"""
import datetime as dt
import pathlib
import re

MAX_AGE_DAYS = 180  # about one semester

DOCS = pathlib.Path(__file__).resolve().parent.parent / "docs"
today = dt.date.today()
overdue, missing = [], []

for page in sorted(DOCS.rglob("*.md")):
    if page == DOCS / "index.md":  # generated from README.md
        continue
    text = page.read_text(encoding="utf-8")
    if re.search(r"^status:\s*stub\b", text, re.MULTILINE):
        continue
    rel = page.relative_to(DOCS.parent).as_posix()
    match = re.search(r"^last_reviewed:\s*(\d{4}-\d{2}-\d{2})", text, re.MULTILINE)
    if not match:
        missing.append(rel)
        continue
    age = (today - dt.date.fromisoformat(match.group(1))).days
    if age > MAX_AGE_DAYS:
        overdue.append((rel, match.group(1), age))

print(f"## Page review report ({today.isoformat()})\n")
if not overdue and not missing:
    print(f"All published pages were reviewed within the last {MAX_AGE_DAYS} days.\n")
for rel, date, age in overdue:
    print(f"- [ ] `{rel}`: last reviewed {date} ({age} days ago)")
for rel in missing:
    print(f"- [ ] `{rel}`: no `last_reviewed` date in front matter")
print()
