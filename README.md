# PocketModel-Lab

![PocketModel-Lab](assets/logo.svg)

Phone-ready GGUF models + the Colab pipeline that builds them.
The 27B teacher (DavidAU/Qwen3.8-27B-TURBO-Fable-Cold-Fusion-735-882-Heretic-Uncensored-NEO-CODER-MAX-MTP-GGUF) is compressed with llama.cpp imatrix requant; small student models (Qwen3-0.6B / 1.7B) are quantized into the 300 MB - 1.1 GB band so real phones can run them.

## Build names - pick by your phone's RAM
| Build | Phone class | Base | Quant | Size* | Needs RAM |
|---|---|---|---|---|---|
| **PocketAI-Kilo** | budget (2-3 GB) | qwen3-0.6B | IQ2_M | ~0.30 GB | ~2 GB |
| **PocketAI-Kilo-HD** | low-end (2-4 GB) | qwen3-0.6B | Q3_K_M | ~0.38 GB | ~2.5 GB |
| **PocketAI-Mega** | mid (4-6 GB) | qwen3-0.6B | Q4_K_M | ~0.44 GB | ~3 GB |
| **PocketAI-Giga** | upper-mid (6-8 GB) | qwen3-1.7B | IQ2_M | ~0.75 GB | ~4 GB |
| **PocketAI-Giga-HD** | flagship (8 GB+) | qwen3-1.7B | Q4_K_M | ~1.16 GB | ~5 GB |
| **PocketModel-Titan** | emulator / PC | 27B teacher | IQ2_M | ~10-12 GB | 12 GB+ (HF only) |

*Confirmed sizes + quality live in [MODELS.md](MODELS.md) after a pipeline run.

## Direct download - works straight from a phone browser
No commands needed — tap the link for your phone, file downloads directly.  
All assets are in the GitHub Release `pocket-v1.0`:

| Build | File | Size | Direct download (click / tap) |
|---|---|---|---|
| PocketAI-Kilo | `PocketAI-Kilo-qwen3-0.6B-IQ2_M.gguf` | ~0.30 GB | [Download](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-Kilo-qwen3-0.6B-IQ2_M.gguf) |
| PocketAI-Kilo-HD | `PocketAI-KiloHD-qwen3-0.6B-Q3_K_M.gguf` | ~0.38 GB | [Download](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-KiloHD-qwen3-0.6B-Q3_K_M.gguf) |
| PocketAI-Mega | `PocketAI-Mega-qwen3-0.6B-Q4_K_M.gguf` | ~0.44 GB | [Download](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-Mega-qwen3-0.6B-Q4_K_M.gguf) |
| PocketAI-Giga | `PocketAI-Giga-qwen3-1.7B-IQ2_M.gguf` | ~0.75 GB | [Download](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-Giga-qwen3-1.7B-IQ2_M.gguf) |
| PocketAI-Giga-HD | `PocketAI-GigaHD-qwen3-1.7B-Q4_K_M.gguf` | ~1.16 GB | [Download](https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-GigaHD-qwen3-1.7B-Q4_K_M.gguf) |

Or curl any tier (Termux / PC / Mac):
```sh
curl -L -o PocketAI-Kilo.gguf \
  https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/download/pocket-v1.0/PocketAI-Kilo-qwen3-0.6B-IQ2_M.gguf
```

## Run it in a local app
| App | Platform | Guide |
|---|---|---|
| PocketPal AI | Android / iOS | [docs/pocketpal.md](docs/pocketpal.md) |
| ChatterUI | Android | [docs/chatterui.md](docs/chatterui.md) |
| Termux + llama-cpp-python | Android CLI | [docs/termux.md](docs/termux.md) |
| LM Studio / Ollama | desktop | [docs/lmstudio-ollama.md](docs/lmstudio-ollama.md) |

## Quality bar
Every build ships a manifest (ppl source -> pocket, retention %, sha256).
Retention = 100 x ppl_source / ppl_pocket vs the Q8_0 baseline; builds below 90% are dropped by the pipeline. Titan keeps its own eval in manifest.json on the HF mirror.

## Titan (27B teacher)
Too big for GitHub file hosting - mirrored on Hugging Face (private) by notebook cell 7.
Original: https://huggingface.co/DavidAU/Qwen3.8-27B-TURBO-Fable-Cold-Fusion-735-882-Heretic-Uncensored-NEO-CODER-MAX-MTP-GGUF

## Rebuild / refresh
Open the Colab notebook (Runtime -> T4 GPU), run cells 1-9, then cell 10 pushes this repo + uploads the release assets. Notebook file: pocketmodel_colab.ipynb (auto-committed when present in the session).

## Founder
Built by **Nadeem**  
- GitHub: https://github.com/junaidshah9826650092-cmyk  
- HuggingFace: https://huggingface.co/junaiidshah78634  
- Repo: https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab  

## Credits
Qwen3 (Apache-2.0) - bartowski GGUF quants - DavidAU teacher model - llama.cpp (MIT)
