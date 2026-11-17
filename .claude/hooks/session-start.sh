#!/bin/bash
# Collega la memoria Instagram delle skill (~/.claude/instagram) alla cartella
# instagram/ di questo repository, così voice.md, swipe.md, plan.md e log.md
# restano versionati e sopravvivono alla fine della sessione.
#
# Le skill in .claude/skills/ig-* sono copie non modificate dell'originale e
# leggono/scrivono ~/.claude/instagram/. Questo link fa arrivare quei percorsi
# nel repository senza toccare i file delle skill.
#
# Idempotente e non distruttivo: se ~/.claude/instagram esiste già come
# cartella vera, i file che non esistono nel repo vengono copiati in instagram/
# e la cartella originale viene rinominata come backup, mai cancellata.
set -euo pipefail

project="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "$0")/../.." && pwd)}"
data="$project/instagram"
link="$HOME/.claude/instagram"

mkdir -p "$data" "$HOME/.claude"

if [ -L "$link" ]; then
  # Link già presente: va bene se punta qui, altrimenti lo aggiorna.
  if [ "$(readlink -f "$link")" = "$(readlink -f "$data")" ]; then
    exit 0
  fi
  rm "$link"
elif [ -e "$link" ]; then
  # Cartella vera con dati di una sessione precedente: unisci e fai backup.
  cp -rn "$link"/. "$data"/ 2>/dev/null || true
  mv "$link" "$link.backup-$(date +%Y%m%d%H%M%S)"
fi

ln -s "$data" "$link"
echo "instagram: ~/.claude/instagram -> $data"
