# ChatterUI (Android)

1. Get the latest APK from https://github.com/Vali-98/ChatterUI/releases and install.
2. **Manage -> Models -> + -> Import GGUF** -> pick `PocketModel-*.gguf` from Downloads.
3. Template: recent ChatterUI versions auto-detect Qwen3 from GGUF metadata; otherwise pick **ChatML**.
4. Inference: context 4096, threads = big cores, quant KV cache q8_0 on 3 GB phones.
5. Optional: the Remote tab can point at a `llama-server` running on a PC for the heavy Titan build.

No account, no cloud - the model runs fully offline after import.
