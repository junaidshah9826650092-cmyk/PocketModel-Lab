# PocketModel-Lab

Phone-ready GGUF models + the Colab pipeline that builds them.
Small student models (Qwen3-0.6B / 1.7B) are imatrix-quantized into the 300 MB - 1.1 GB band so real phones can run them. The 27B teacher (Titan) build needs a GPU session — see the main notebook.

## Build names - pick by your phone's RAM
| Build | Phone class | Base | Quant | Size* | Needs RAM |
|---|---|---|---|---|---|
| **PocketModel-Kilo** | budget (2-3 GB) | qwen3-0.6B | IQ2_M | ~0.28 GB | ~2 GB |
| **PocketModel-Kilo-HD** | low-end (2-4 GB) | qwen3-0.6B | Q3_K_M | ~0.36 GB | ~2.5 GB |
| **PocketModel-Mega** | mid (4-6 GB) | qwen3-0.6B | Q4_K_M | ~0.45 GB | ~3 GB |
| **PocketModel-Giga** | upper-mid (6-8 GB) | qwen3-1.7B | IQ2_M | ~0.75 GB | ~4 GB |
| **PocketModel-Giga-HD** | flagship (8 GB+) | qwen3-1.7B | Q4_K_M | ~1.05 GB | ~5 GB |
| **PocketModel-Titan** | emulator / PC | 27B teacher | IQ2_M | ~10-12 GB | 12 GB+ (needs GPU to build) |

*Confirmed sizes + quality live in [MODELS.md](MODELS.md) after a pipeline run.

## Direct download - works straight from a phone browser
Tap the link in MODELS.md, or curl. `releases/latest/download` always points at the newest build:

```sh
curl -L -o PocketModel-Kilo.gguf \
  https://github.com/junaidshah9826650092-cmyk/PocketModel-Lab/releases/latest/download/PocketModel-Kilo-qwen3-0.6B-IQ2_M.gguf
```

Termux shortcut: `sh scripts/fetch-model.sh kilo`

## Run it in a local app
| App | Platform | Guide |
|---|---|---|
| PocketPal AI | Android / iOS | [docs/pocketpal.md](docs/pocketpal.md) |
| ChatterUI | Android | [docs/chatterui.md](docs/chatterui.md) |
| Termux + llama-cpp-python | Android CLI | [docs/termux.md](docs/termux.md) |
| LM Studio / Ollama | desktop | [docs/lmstudio-ollama.md](docs/lmstudio-ollama.md) |

## Quality bar
Every build ships a manifest (ppl source -> pocket, retention %, sha256).
Retention = 100 x ppl_source / ppl_pocket vs the Q8_0 baseline; target is 90%+.

## Rebuild / refresh
- CPU session (no GPU needed): run pocketmodel_colab_cpu.ipynb cells 1-6 — builds the 5 phone tiers.
- GPU session (Titan 27B path): run pocketmodel_colab.ipynb when GPU quota is available.

## Credits
Qwen3 (Apache-2.0) - bartowski GGUF quants - DavidAU teacher model - llama.cpp (MIT)
