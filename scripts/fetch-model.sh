#!/data/data/com.termux/files/usr/bin/sh
# PocketModel fetcher - usage: sh fetch-model.sh kilo|kilo-hd|mega|giga|giga-hd|titan
set -e
tier="${1:-kilo}"
base="https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/latest/download"
case "$tier" in
  kilo)        f="PocketAI-Kilo-Ndx-IQ2_M.gguf";;
  kilo-hd)     f="PocketAI-KiloHD-Ndx-Q3_K_M.gguf";;
  mega)        f="PocketAI-Mega-Ndx-Q4_K_M.gguf";;
  giga)        f="PocketAI-Giga-Ndx-IQ2_M.gguf";;
  giga-hd)     f="PocketAI-GigaHD-Ndx-Q4_K_M.gguf";;
  titan)       echo "Titan (27B, ~10-12 GB) lives on Hugging Face - see README.md"; exit 0;;
  *)           echo "unknown tier: $tier"; exit 1;;
esac
echo "downloading $f ..."
curl -L --progress-bar -o "$f" "$base/$f"
sha256sum "$f"
echo "done. size: $(du -h "$f" | cut -f1)"
