<p align="center">
  <img src="assets/banner.svg" alt="PocketAI Banner" width="100%"/>
</p>

<h1 align="center">
  <img src="assets/icon.svg" alt="PocketAI" width="64"/>
  <br/>PocketAI
</h1>
<p align="center"><b>Phone-ready GGUF language models — compressed for speed, built for mobile.</b></p>

<p align="center">
  <a href="https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases"><img src="https://img.shields.io/github/release/junaidshah9826650092-cmyk/PocketModel-Lab?color=%2338bdf8&label=Latest%20Release" alt="Release"/></a>
  <a href="https://huggingface.co/junaiidshah78634/PocketModel-Lab"><img src="https://img.shields.io/badge/HuggingFace-Model-%23a855f7?logo=huggingface" alt="HF Model"/></a>
  <a href="https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/blob/main/LICENSE.md"><img src="https://img.shields.io/badge/License-Apache%202.0-%2322c55e" alt="License"/></a>
  <a href="https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/issues"><img src="https://img.shields.io/github/issues/junaidshah9826650092-cmyk/PocketModel-Lab?color=%23f472b6" alt="Issues"/></a>
</p>

---

## 📱 Pick Your Build

| Build | Phone | Base | Quant | Size | RAM |
|---|---|---|---|---|---|
| **PocketAI-Kilo** | Budget (2–3 GB) | Ndx-0.6B | IQ2_M | ~0.30 GB | ~2 GB |
| **PocketAI-Kilo-HD** | Low-end (2–4 GB) | Ndx-0.6B | Q3_K_M | ~0.38 GB | ~2.5 GB |
| **PocketAI-Mega** | Mid (4–6 GB) | Ndx-0.6B | Q4_K_M | ~0.44 GB | ~3 GB |
| **PocketAI-Giga** | Upper-mid (6–8 GB) | Ndx-1.7B | IQ2_M | ~0.75 GB | ~4 GB |
| **PocketAI-Giga-HD** | Flagship (8 GB+) | Ndx-1.7B | Q4_K_M | ~1.16 GB | ~5 GB |
| **PocketAI-Titan** | Emulator / PC | 27B Teacher | IQ2_M | ~10–12 GB | 12 GB+ |

---

## 🚀 Direct Download

No terminal. No commands. Just tap the link on your phone.

All assets in GitHub Release **`pocket-v1.0`**:

- [PocketAI-Kilo-Ndx-IQ2_M.gguf](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-Kilo-Ndx-IQ2_M.gguf)
- [PocketAI-KiloHD-Ndx-Q3_K_M.gguf](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-KiloHD-Ndx-Q3_K_M.gguf)
- [PocketAI-Mega-Ndx-Q4_K_M.gguf](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-Mega-Ndx-Q4_K_M.gguf)
- [PocketAI-Giga-Ndx-IQ2_M.gguf](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-Giga-Ndx-IQ2_M.gguf)
- [PocketAI-GigaHD-Ndx-Q4_K_M.gguf](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-GigaHD-Ndx-Q4_K_M.gguf)

> **Tip:** Use `releases/latest/download/` to always grab the newest build.

---

## 📲 Run on Your Phone

| App | Platform | How |
|---|---|---|
| **PocketPal AI** | Android / iOS | Settings → Local Models → + → Load from phone → pick `.gguf` |
| **ChatterUI** | Android | Manage → Models → + → Import GGUF → Template: Qwen3 / ChatML |
| **Termux** | Android CLI | `sh scripts/fetch-model.sh kilo` (optional) |
| **LM Studio** | Desktop | My Models → Import → select `.gguf` |
| **Ollama** | Desktop | `ollama create pocket-ai -f Modelfile.ollama` |

**Settings:** Context 4096 (2048 on 2–3 GB phones). Threads = your big CPU cores.

---

## 🏗️ Built With

1. **Source:** Qwen/Qwen3-0.6B & Qwen3-1.7B Q8_0 GGUF (bartowski)
2. **Calibration:** wikitext-2-raw validation set
3. **Compression:** llama.cpp `llama-imatrix` + `llama-quantize` (IQ2_M / Q3_K_M / Q4_K_M)
4. **Evaluation:** Perplexity vs Q8_0 baseline — retention target 90%+
5. **Packaging:** Standard GGUF — no conversion on-device

---

## 🏆 Founder

**Nadeem**  
- GitHub: https://github.com/junaidshah9826650092-cmyk  
- HuggingFace: https://huggingface.co/junaiidshah78634  
- Repo: https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab  

---

## 📄 License

Apache-2.0 · Qwen3 (Apache-2.0) · bartowski GGUF quants · llama.cpp (MIT)
