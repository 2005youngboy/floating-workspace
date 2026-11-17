# instagram-agent-skill (terze parti)

- Origine: https://github.com/Jakeschincariol/instagram-agent-skill
- Autore: Jake Schincariol — licenza MIT (vedi `LICENSE` in questa cartella)
- Commit importato: `d03c56b` ("Restore sentence capitals after a deleted opener")
- Importato il: 2026-11-17

Cosa è stato importato e dove:

| origine | destinazione | modifiche |
| --- | --- | --- |
| `skills/ig-*` (13 cartelle) | `.claude/skills/ig-*` | nessuna, copia identica |
| `templates/voice.md` | `voice.template.md` (qui) e `instagram/voice.md` | `instagram/voice.md` è la copia da compilare |
| `LICENSE` | `LICENSE` (qui) | nessuna |

Non importati: `.claude-plugin/` (non serve, le skill sono caricate come skill
di progetto) e il `README.md` originale.

## Aggiornare all'ultima versione

```bash
git clone --depth 1 https://github.com/Jakeschincariol/instagram-agent-skill.git /tmp/ig-src
rm -rf .claude/skills/ig-*
cp -r /tmp/ig-src/skills/ig-* .claude/skills/
cp /tmp/ig-src/LICENSE third_party/instagram-agent-skill/LICENSE
cp /tmp/ig-src/templates/voice.md third_party/instagram-agent-skill/voice.template.md
```

Poi aggiorna il commit qui sopra. `instagram/` non va toccato: contiene i dati
di FLOATING.
