# PocketPal AI (Android / iOS) - easiest phone runner

1. Install **PocketPal AI** from Play Store / App Store.
2. Download the GGUF for your phone (see README table) - it lands in `Downloads/`.
3. PocketPal -> **Settings -> Local Models -> + -> Load from phone** -> pick the file.
4. Context: 4096 (use 2048 on 3 GB phones). Threads: number of big cores.
5. Chat. Tip: Qwen3 supports `/no_think` in a prompt to skip the reasoning step and answer faster.

Notes:
- First load takes a while (mmap warm-up); keep the app in RAM to avoid a cold reload.
- All PocketModel-Kilo/Mega builds load without any conversion - they are standard GGUF.
