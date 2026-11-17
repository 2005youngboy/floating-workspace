# FLOATING — ambiente di lavoro

Questo repository è l'ambiente di lavoro del progetto FLOATING. Contiene le 13
skill Instagram di Jake Schincariol (MIT) e la memoria Instagram del progetto.

## Struttura

```
.claude/skills/ig-*/         13 skill Instagram, copia NON modificata dell'originale
.claude/hooks/session-start.sh  collega ~/.claude/instagram -> instagram/
.claude/settings.json        registra l'hook SessionStart
instagram/                   memoria Instagram di FLOATING (voice, swipe, plan, log)
third_party/instagram-agent-skill/  licenza, origine e istruzioni di aggiornamento
```

## Regole

- **Non modificare i file in `.claude/skills/ig-*`.** Sono copie identiche
  dell'originale, per poterle aggiornare. Personalizzazioni di FLOATING vanno in
  `instagram/voice.md` o in questo file.
- **Memoria Instagram = `instagram/` di questo repository.** Le skill citano
  `~/.claude/instagram/...`: è un link a `instagram/`. Se il link manca (per
  esempio l'hook non è partito), esegui `.claude/hooks/session-start.sh` oppure
  leggi e scrivi direttamente in `instagram/`.
- **Script Python delle skill.** Nei `SKILL.md` sono indicati con percorso
  relativo (`python3 caption.py ...`). Eseguili dalla cartella della skill:
  `python3 .claude/skills/ig-caption/caption.py file.txt`. Usano solo la
  libreria standard di Python 3, nessuna installazione.
- **Dopo che una skill scrive in `instagram/`, fai commit e push**: la sessione
  cloud è temporanea.
- **Nessuna skill pubblica su Instagram.** Producono testi pronti; pubblica
  sempre l'utente.

## Skill disponibili

| comando | uso |
| --- | --- |
| `/ig-reel` | idea → Reel: 3 hook da 26 formule con punteggio, script, testi a schermo, beat sheet |
| `/ig-viral` | ricerca dei reel che funzionano nella nicchia, swipe file in `instagram/swipe.md` |
| `/ig-caption` | caption con linter (finestra 125 caratteri, max 5 hashtag) |
| `/ig-carousel` | caroselli 1080x1350: cover, slide, file |
| `/ig-story` | sequenza stories giornaliera, sticker, funnel DM |
| `/ig-profile` | punteggio del profilo su 100 e riscrittura |
| `/ig-plan` | piano settimanale in `instagram/plan.md` |
| `/ig-human` | humanizer: pulizia e punteggio anti-"testo da IA" |
| `/ig-comment` | commenti sui post di altri |
| `/ig-reply` | risposte ai commenti sui propri post |
| `/ig-dm` | DM: consegna keyword, primo messaggio, pitch, follow-up |
| `/ig-repurpose` | un contenuto lungo → una settimana di reel e caroselli |
| `/ig-audit` | analisi dei post già pubblicati |

## Lingua

Le skill sono scritte in inglese. Salvo indicazione diversa in
`instagram/voice.md`, rispondi all'utente in italiano. Nota: le euristiche
degli script (`hookscore.py`, `detect.py`, `humanize.py`) sono tarate
sull'inglese, quindi sui testi italiani i punteggi sono indicativi.
