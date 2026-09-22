---
title: "Glossary"
description: "Plain-language definitions of core cybersecurity terms, with Spanish equivalents, for complete beginners."
status: draft
last_reviewed: 2026-09-22
reviewed_by: "@Manuelinfante7"
maintainer: "@Manuelinfante7"
---

# Glossary

!!! info "Page status"
    **Last reviewed:** 2026-09-22 by @Manuelinfante7. This is a starter list, and it grows as new sections are written. Missing a term? Open an issue in the GitHub repository (link at the top right of this page).

Plain-language definitions of terms you'll see throughout this knowledge bank and in job postings. Each entry includes the common Spanish term (*Español*) for bilingual readers. Many security terms stay in English even in Spanish-speaking workplaces, and the entries say so when that's the case.

**Tip:** on any page of this site, hover over an acronym like SOC to see what it stands for.

## A

### Advanced Persistent Threat (APT) { #apt }
A skilled, well-funded attacker, often backed by a government, that breaks into a target and quietly stays for months or years to steal information. "Persistent" is the key word: they're patient, not smash-and-grab.
*Español:* amenaza persistente avanzada. See [Threat Intelligence](areas/threat-intelligence.md).

### Attack surface
All the places where an attacker could try to get in: websites, open network ports, employee email inboxes, USB ports, forgotten test servers. Shrinking the attack surface is one of the simplest ways to improve security.
*Español:* superficie de ataque.

### Authentication
Proving who you are, for example with a password, a fingerprint, or a code on your phone. Compare with *authorization*.
*Español:* autenticación.

### Authorization
Deciding what you're allowed to do once the system knows who you are. Your student ID *authenticates* you at the library door; *authorization* decides whether you can enter the staff-only room.
*Español:* autorización. See [Identity & Access Management](areas/identity-access-management.md).

## B

### Backdoor
A hidden way into a system that skips the normal security checks. Attackers install backdoors so they can come back later, and sometimes developers leave them behind by mistake.
*Español:* puerta trasera.

### Blue team
Defenders who protect an organization's systems, detect attacks, and respond to them. See also *red team*.
*Español:* equipo azul. See [Security Operations](areas/security-operations.md).

### Botnet
A network of infected computers or devices ("bots") controlled remotely by an attacker, often used to send spam or flood websites with traffic. Poorly secured IoT devices like cameras and routers are common recruits.
*Español:* botnet (red de bots).

## C

### Capture the Flag (CTF) { #ctf }
A legal hacking competition in which you solve security puzzles to find hidden text strings called "flags." CTFs are one of the best ways for beginners to practice.
*Español:* competencia CTF ("captura la bandera"). See [CTF Competitions & Teams](platforms/ctf-competitions.md).

### CIA triad
The three core goals of security: **Confidentiality** (only the right people can see information), **Integrity** (information isn't changed without permission), and **Availability** (systems and data work when they're needed). It has nothing to do with the intelligence agency.
*Español:* tríada CIA (confidencialidad, integridad y disponibilidad).

### Command line
A text-based way to control a computer by typing commands instead of clicking. Security work relies on it heavily. Also called the terminal or the shell.
*Español:* línea de comandos (terminal). See [Foundations](areas/foundations.md).

### CVE (Common Vulnerabilities and Exposures) { #cve }
A public ID number for a known security flaw, such as CVE-2021-44228 (the "Log4Shell" vulnerability). CVE IDs let everyone refer to exactly the same flaw. The program's official site is [cve.org](https://www.cve.org/).
*Español:* CVE (the English acronym is used).

### CVSS (Common Vulnerability Scoring System) { #cvss }
A score from 0 to 10 that estimates how severe a vulnerability is. It's maintained by [FIRST](https://www.first.org/cvss/), and version 4.0 was released in 2023. A high score usually means "fix it first," but severity isn't the same as the actual risk to your organization.
*Español:* CVSS.

## D

### Denial of service (DoS / DDoS) { #ddos }
An attack that makes a website or service unavailable, usually by flooding it with more traffic than it can handle. A *distributed* denial of service (DDoS) uses many machines at once, often a botnet.
*Español:* denegación de servicio (DoS) / denegación de servicio distribuida (DDoS).

### Digital forensics
Collecting, preserving, and analyzing digital evidence from computers, phones, or networks, in a way that holds up in court or in an internal investigation.
*Español:* informática forense (análisis forense digital). See [Digital Forensics](areas/digital-forensics.md).

### DNS (Domain Name System) { #dns }
The internet's phone book: it translates names like `uprm.edu` into the numeric IP addresses that computers use.
*Español:* sistema de nombres de dominio.

## E

### Encryption
Scrambling information so only someone with the right key can read it. Encryption protects your WhatsApp messages and your connection to your bank's website (the padlock in your browser).
*Español:* cifrado (also *encriptación*). See [Cryptography](areas/cryptography.md).

### Endpoint
Any device that connects to a network: laptops, phones, servers, even smart printers. *Endpoint security* protects these devices directly, and EDR tools watch them for malicious behavior.
*Español:* endpoint (dispositivo final).

### Exploit
Code or a technique that takes advantage of a vulnerability to make a system do something it shouldn't. If a vulnerability is an unlocked window, the exploit is climbing through it.
*Español:* exploit.

## F

### Firewall
A security system that decides which network traffic is allowed in or out based on a set of rules, like a guard at a gate checking a list.
*Español:* cortafuegos (*firewall* is also common). See [Network Security](areas/network-security.md).

### Firmware
Low-level software stored on a hardware device (a router, a car's control unit, a smart bulb) that makes the hardware work. It's often forgotten during updates, which makes it an attractive target.
*Español:* firmware. See [Hardware Security](areas/hardware-security.md).

## H

### Hash
A fixed-length "fingerprint" of data, produced by a hash function. The same input always gives the same hash, but you can't reverse a hash to get the input back. Hashes are used to store passwords safely and to check that files haven't been changed.
*Español:* hash (función hash, resumen criptográfico).

## I

### Incident response
The organized process of handling a security problem: detecting it, containing it, removing the attacker, recovering, and learning from it.
*Español:* respuesta a incidentes. See [Security Operations](areas/security-operations.md).

### Indicator of Compromise (IOC) { #ioc }
A clue that a system may have been attacked, such as a known malicious IP address, a suspicious file hash, or a login from an unusual location.
*Español:* indicador de compromiso.

### Internet of Things (IoT) { #iot }
Everyday objects connected to a network: smart thermostats, cameras, medical devices, industrial sensors. Many are cheap, rarely updated, and easy to attack.
*Español:* Internet de las cosas. See [IoT & Wireless Security](areas/iot-wireless-security.md).

### IP address
A number that identifies a device on a network, like a mailing address. For example, `192.168.1.10` is an IPv4 address; IPv6 addresses are longer.
*Español:* dirección IP.

## L

### Least privilege
Giving each person or program only the access it needs to do its job, and nothing more. A cashier needs the register, not the vault.
*Español:* principio de privilegio mínimo.

### Linux
A free, open-source family of operating systems. Most servers, cloud systems, and security tools run on Linux, so learning it early pays off in every area.
*Español:* Linux. See [Foundations](areas/foundations.md).

## M

### Malware
Short for *malicious software*: any program designed to cause harm, including viruses, worms, trojans, spyware, and ransomware.
*Español:* malware (software malicioso). See [Malware Analysis & Reverse Engineering](areas/malware-analysis-reverse-engineering.md).

### MITRE ATT&CK
A free, public knowledge base of the tactics and techniques that real attackers use, organized like a map. Defenders use it to check what they can and can't detect. Official site: [attack.mitre.org](https://attack.mitre.org/).
*Español:* MITRE ATT&CK.

### Multi-Factor Authentication (MFA) { #mfa }
Logging in with two or more kinds of proof: something you know (a password), something you have (a phone or security key), or something you are (a fingerprint). It stops a large share of attacks that rely on stolen passwords.
*Español:* autenticación multifactor.

## N

### Network
Two or more devices connected so they can share data, from your home Wi-Fi to the global internet.
*Español:* red.

### NICE Framework
The NICE Workforce Framework for Cybersecurity (NIST SP 800-181): the U.S. government's official list of cybersecurity work roles and the knowledge and skills each one needs. Employers and schools use it to describe jobs consistently.
*Español:* Marco NICE. See [The NICE Framework](careers/nice-framework.md).

### NIST Cybersecurity Framework (CSF) { #nist-csf }
A widely used set of guidelines from the U.S. National Institute of Standards and Technology for managing cybersecurity risk. Version 2.0, published in 2024, organizes the work into six functions: Govern, Identify, Protect, Detect, Respond, and Recover. Official site: [nist.gov/cyberframework](https://www.nist.gov/cyberframework).
*Español:* Marco de Ciberseguridad del NIST. See [Frameworks You'll Meet on the Job](careers/industry-frameworks.md).

## O

### Operating system (OS) { #os }
The main software that runs a computer and manages its hardware and programs, such as Windows, macOS, Linux, Android, or iOS.
*Español:* sistema operativo.

### OSINT (Open-Source Intelligence) { #osint }
Information collected from public sources: websites, social media, public records, and news. Defenders, investigators, and attackers all use it.
*Español:* inteligencia de fuentes abiertas. See [Threat Intelligence](areas/threat-intelligence.md).

### OWASP
The Open Worldwide Application Security Project, a nonprofit that publishes free resources for web and application security. Its best-known publication is the OWASP Top 10, a list of the most critical web application security risks. Official site: [owasp.org](https://owasp.org/).
*Español:* OWASP. See [Application & Web Security](areas/application-web-security.md).

## P

### Patch
An update that fixes a bug or a security flaw. Many successful attacks exploit vulnerabilities that already had a patch available that simply wasn't installed.
*Español:* parche.

### Penetration testing
An authorized, simulated attack on a system to find weaknesses before real attackers do. "Authorized" is essential: without written permission, it's a crime. Also called *pentesting* or *ethical hacking*.
*Español:* pruebas de penetración (*pentesting*). See [Offensive Security](areas/offensive-security.md) and [Ethics & Legality](guides/ethics-and-legality.md).

### Phishing
Fake messages, usually emails or texts, that trick people into clicking a malicious link, opening an infected file, or giving away passwords. Phishing by text message is called *smishing*, and by phone call, *vishing*.
*Español:* phishing (suplantación de identidad). See [Social Engineering & Human Factors](areas/social-engineering-human-factors.md).

### Port
A numbered "door" on a device where a network service listens for connections. For example, secure websites (HTTPS) usually use port 443. Open ports that aren't needed increase the attack surface.
*Español:* puerto.

### Protocol
A set of rules that devices follow to communicate, like a shared language. Examples include HTTP for web pages, Wi-Fi, Bluetooth, and Zigbee.
*Español:* protocolo.

## R

### Ransomware
Malware that encrypts or steals an organization's files and demands payment to restore them or to keep them from being leaked. Hospitals, schools, and governments are frequent targets.
*Español:* ransomware (secuestro de datos).

### Red team
Security professionals who act like real attackers, with permission, to test how well an organization detects and responds to attacks. When red and blue teams work together closely, it's often called *purple teaming*.
*Español:* equipo rojo. See [Offensive Security](areas/offensive-security.md).

### Responsible disclosure
Reporting a security flaw privately to the organization that can fix it, and giving them reasonable time before making it public. Also called *coordinated vulnerability disclosure*.
*Español:* divulgación responsable (divulgación coordinada de vulnerabilidades). See [Ethics & Legality](guides/ethics-and-legality.md).

### Risk
The chance that a threat will exploit a vulnerability, combined with how much damage that would cause. Security teams can't eliminate all risk, so they prioritize.
*Español:* riesgo. See [Governance, Risk & Compliance](areas/governance-risk-compliance.md).

## S

### Sandbox
An isolated environment where suspicious files or programs can run without harming the real system, like a glass box where you can watch something dangerous safely.
*Español:* sandbox (entorno aislado).

### Security Operations Center (SOC) { #soc }
The team, and often the physical room, responsible for monitoring an organization's systems around the clock, investigating alerts, and responding to attacks. Many cybersecurity careers start in a SOC.
*Español:* centro de operaciones de seguridad. See [Security Operations](areas/security-operations.md).

### SIEM (Security Information and Event Management) { #siem }
Software that collects logs (records of activity) from many systems in one place and flags patterns that may signal an attack. It's a core tool in a SOC.
*Español:* SIEM.

### Social engineering
Manipulating people, rather than computers, into giving up information or access, for example by pretending to be IT support. Phishing is the most common form.
*Español:* ingeniería social. See [Social Engineering & Human Factors](areas/social-engineering-human-factors.md).

## T

### Threat
Anything that could cause harm: a criminal group, a disgruntled insider, malware, or even a hurricane knocking out a data center.
*Español:* amenaza.

### Threat actor
The person or group behind an attack, such as a cybercriminal gang, a hacktivist, a nation-state, or an insider.
*Español:* actor de amenaza.

## V

### Virtual machine (VM) { #vm }
A complete computer simulated in software, running inside your real computer. Virtual machines let you build a safe practice lab for free.
*Español:* máquina virtual. See [Build a Home Lab on a Student Budget](guides/home-lab.md).

### VPN (Virtual Private Network) { #vpn }
An encrypted "tunnel" between your device and another network. It protects your traffic on untrusted connections like public Wi-Fi, and lets remote workers reach internal systems.
*Español:* red privada virtual.

### Vulnerability
A weakness in software, hardware, a configuration, or a process that an attacker could take advantage of.
*Español:* vulnerabilidad. See [Vulnerability Management](areas/vulnerability-management.md).

## Z

### Zero-day
A vulnerability that attackers know about before the vendor does, so no patch exists yet. The name means defenders have had "zero days" to fix it.
*Español:* día cero (*zero-day*).

---

## Adding a term

Add new terms in alphabetical order under the correct letter. Each entry has a level-3 heading with the term (and its acronym, if any), a plain-language definition of one to three sentences, an *Español* line, and, when one exists, a link to the related section. Terms that appear as acronyms across the site should also go in `includes/abbreviations.md` so readers get hover definitions.
