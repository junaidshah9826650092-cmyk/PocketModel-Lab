# Direct Downloads & App Install Guide

No terminal needed — just download the .gguf file and import it into your app.

## Step 1: Download the right file for your phone

Open your phone browser and tap one link:

| Phone RAM | Build | Download |
|---|---|---|
| 2–3 GB (budget) | PocketModel-Kilo (0.30 GB) | [Kilo](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketModel-Kilo-qwen3-0.6B-IQ2_M.gguf) |
| 2–4 GB (low-end) | PocketModel-Kilo-HD (0.38 GB) | [Kilo-HD](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketModel-KiloHD-qwen3-0.6B-Q3_K_M.gguf) |
| 4–6 GB (mid) | PocketModel-Mega (0.44 GB) | [Mega](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketModel-Mega-qwen3-0.6B-Q4_K_M.gguf) |
| 6–8 GB (upper-mid) | PocketModel-Giga (0.75 GB) | [Giga](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketModel-Giga-qwen3-1.7B-IQ2_M.gguf) |
| 8 GB+ (flagship) | PocketModel-Giga-HD (1.16 GB) | [Giga-HD](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketModel-GigaHD-qwen3-1.7B-Q4_K_M.gguf) |

File lands in **Downloads/**.

## Step 2: Import into your app

### PocketPal AI (Android / iOS) — recommended
1. Install PocketPal AI from Play Store / App Store.
2. Open app → **Settings → Local Models → + → Load from phone**.
3. Pick the downloaded `.gguf` file.
4. Chat. Qwen3 tip: add `/no_think` to skip reasoning and answer faster.

### ChatterUI (Android)
1. Install latest APK from https://github.com/Vali-98/ChatterUI/releases.
2. **Manage → Models → + → Import GGUF** → choose the file from Downloads.
3. Template: Qwen3 (auto-detected; else pick **ChatML**).

### Termux (Android CLI)
```sh
pkg update && pkg install python clang git wget
sh scripts/fetch-model.sh kilo      # also: kilo-hd, mega, giga, giga-hd
pip install llama-cpp-python
```
Or download manually with your browser — no command needed.

### LM Studio / Ollama (desktop)
- **LM Studio:** My Models → Import → select the `.gguf`.
- **Ollama:** Put the `.gguf` next to `Modelfile.ollama`, then `ollama create pocket-kilo -f Modelfile.ollama`.

## Step 3: Settings
- Context: 4096 (use 2048 on 2–3 GB phones)
- Threads: number of big CPU cores
- KV cache: q8_0 on low RAM phones

## Notes
- All files are standard GGUF — **no conversion**, no commands, no CLI needed for PocketPal / ChatterUI.
- CLI tool (`scripts/fetch-model.sh`) is optional, only for Termux power users.
- Titan (27B teacher) is too big for GitHub — see README for HF mirror.
