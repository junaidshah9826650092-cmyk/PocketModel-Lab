# LM Studio (desktop)

1. LM Studio -> **My Models -> Import** -> select `PocketModel-*.gguf`.
2. Load with context 4096; GPU offload as available.
3. Same files as the phone builds - one GGUF runs everywhere.

# Ollama (desktop)

```sh
# put the chosen .gguf next to Modelfile.ollama, then:
ollama create pocket-kilo -f Modelfile.ollama
ollama run pocket-kilo
```

Swap the `FROM` line in Modelfile.ollama for any other tier (Mega / Giga / Giga-HD).
