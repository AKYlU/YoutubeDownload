#!/data/data/com.termux/files/usr/bin/bash

# Garante que tem acesso ao armazenamento
termux-setup-storage

# Caminho para a pasta Downloads do Android
cd ~/storage/downloads

# Link da playlist
PLAYLIST_URL="https://youtube.com/playlist?list=PLbu_dbhoauLj-QCblkVFsCXwlWJCosaWw&si=qpf5wgNuLIBBhaad"

# Baixar todos os vídeos como MP3, com nome ordenado
yt-dlp \
  --yes-playlist \
  --extract-audio \
  --audio-format mp3 \
  --output "%(playlist_index)s - %(title)s.%(ext)s" \
  --download-archive baixados.txt \
  "$PLAYLIST_URL"

