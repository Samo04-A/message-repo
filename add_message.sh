#!/bin/bash

# Cerem utilizatorului să introducă mesajul și link-ul
echo "Introdu mesajul:"
read message
echo "Introdu link-ul:"
read link

# Validare simplă
if [[ -z "$message" || -z "$link" ]]; then
  echo "Mesajul și link-ul sunt obligatorii!"
  exit 1
fi

# Adăugăm datele în fișierul `messages.md`
file="messages.md"

echo -e "\n- **Mesaj:** $message\n  **Link:** [$link]($link)\n" >> $file

# Adăugăm, confirmăm și trimitem modificările
git add $file
git commit -m "Adăugat un mesaj nou: $message"
git push

echo "Mesajul și link-ul au fost salvate și trimise în repository!"
