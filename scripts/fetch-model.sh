#!/data/data/com.termux/files/usr/bin/sh
# PocketModel fetcher - usage: sh fetch-model.sh kilo|kilo-hd|mega|giga|giga-hd|titan
set -e
tier="${1:-kilo}"
base="https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/latest/download"
case "$tier" in
  kilo)        f="NadeemAI-Kilo-qwen3-0.6B-IQ2_M.gguf";;
  kilo-hd)     f="NadeemAI-KiloHD-qwen3-0.6B-Q3_K_M.gguf";;
  mega)        f="NadeemAI-Mega-qwen3-0.6B-Q4_K_M.gguf";;
  giga)        f="NadeemAI-Giga-qwen3-1.7B-IQ2_M.gguf";;
  giga-hd)     f="NadeemAI-GigaHD-qwen3-1.7B-Q4_K_M.gguf";;
  titan)       echo "Titan (27B, ~10-12 GB) lives on Hugging Face - see README.md"; exit 0;;
  *)           echo "unknown tier: $tier"; exit 1;;
esac
echo "downloading $f ..."
curl -L --progress-bar -o "$f" "$base/$f"
sha256sum "$f"
echo "done. size: $(du -h "$f" | cut -f1)"
