# instagram/ — memoria e configurazione Instagram di FLOATING

Questa cartella è la memoria condivisa delle 13 skill `ig-*`. Le skill la
cercano in `~/.claude/instagram/`: all'avvio di ogni sessione l'hook
`.claude/hooks/session-start.sh` crea il link `~/.claude/instagram` → questa
cartella, quindi tutto ciò che le skill leggono o scrivono finisce qui ed è
versionato in git.

| file | chi lo scrive | chi lo legge |
| --- | --- | --- |
| `voice.md` | tu (o `/ig-reel` partendo da 3 tuoi reel) | tutte le skill |
| `swipe.md` | `/ig-viral` | `/ig-reel`, `/ig-plan` |
| `plan.md` | `/ig-plan` | le altre skill |
| `log.md` | `/ig-reel` (dopo il tuo "yes"), `/ig-comment` | `/ig-audit`, `/ig-plan` |

Compila `voice.md` per primo: è il profilo di voce di FLOATING e cambia il
risultato di ogni skill.

Dopo che una skill ha scritto qui, ricordati di fare commit: la sessione cloud
è temporanea e ciò che non è su GitHub va perso.
