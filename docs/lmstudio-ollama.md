# LM Studio (desktop)

1. LM Studio -> My Models -> Import -> select PocketModel-*.gguf.
2. Load with context 4096; GPU offload as available. Same files as the phone builds.

# Ollama (desktop)

```sh
ollama create pocket-kilo -f Modelfile.ollama   # gguf in the same folder
ollama run pocket-kilo
```

Swap the FROM line for any other tier.
