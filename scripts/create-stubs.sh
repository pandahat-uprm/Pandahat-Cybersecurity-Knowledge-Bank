#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
TODAY="$(date +%F)"
REPO="https://github.com/pandahat-uprm/cyber-knowledge-bank"

while IFS='|' read -r path title; do
  [[ -z "$path" ]] && continue
  file="docs/$path"
  if [[ -e "$file" ]]; then echo "exists   $file"; continue; fi
  mkdir -p "$(dirname "$file")"
  cat > "$file" <<EOF
---
title: "$title"
status: stub
last_reviewed: $TODAY
---

# $title

!!! warning "🚧 Coming soon"
    This section hasn't been written yet. Want to help write it? See the [contributing guide]($REPO/blob/main/CONTRIBUTING.md).
EOF
  echo "created  $file"
done <<'LIST'
glossary.md|Glossary
guides/home-lab.md|Build a Home Lab on a Student Budget
guides/choosing-a-specialization.md|Choosing a Specialization
guides/reading-job-postings.md|How to Read a Job Posting
guides/building-a-portfolio.md|Building a Portfolio
guides/ethics-and-legality.md|Ethics & Legality
areas/foundations.md|Foundations
areas/network-security.md|Network Security
areas/security-operations.md|Security Operations
areas/offensive-security.md|Offensive Security
areas/malware-analysis-reverse-engineering.md|Malware Analysis & Reverse Engineering
areas/digital-forensics.md|Digital Forensics
areas/hardware-security.md|Hardware Security
areas/iot-wireless-security.md|IoT & Wireless Security
areas/ai-security.md|AI & Cybersecurity
areas/cloud-security.md|Cloud Security
areas/application-web-security.md|Application & Web Security
areas/cryptography.md|Cryptography
areas/identity-access-management.md|Identity & Access Management
areas/governance-risk-compliance.md|Governance, Risk & Compliance
areas/ot-ics-security.md|OT/ICS & Critical Infrastructure
areas/threat-intelligence.md|Threat Intelligence
areas/social-engineering-human-factors.md|Social Engineering & Human Factors
areas/mobile-security.md|Mobile Security
areas/vulnerability-management.md|Vulnerability Management
areas/security-architecture-engineering.md|Security Architecture & Engineering
platforms/learning-platforms.md|Learning Platforms
platforms/ctf-competitions.md|CTF Competitions & Teams
platforms/communities-and-conferences.md|Communities & Conferences
platforms/scholarships-and-fellowships.md|Scholarships & Fellowships
certifications/overview.md|Certifications Roadmap
careers/nice-framework.md|The NICE Framework
careers/industry-frameworks.md|Frameworks You'll Meet on the Job
careers/entry-level-reality.md|The Entry-Level Market: An Honest Look
careers/government-and-defense.md|Government, Defense & Security Clearances
about/maintainers.md|Maintainers
about/changelog.md|Changelog
about/license.md|License
LIST

mkdir -p docs/assets/images && touch docs/assets/images/.gitkeep
