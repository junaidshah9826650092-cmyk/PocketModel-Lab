# Termux (Android CLI)

```sh
pkg update && pkg install python clang git wget
sh scripts/fetch-model.sh kilo     # also: kilo-hd, mega, giga, giga-hd
pip install llama-cpp-python       # compiles on device, ~10-20 min
```

No-compile alternative: ChatterUI. Tip: termux-setup-storage first so Termux can see Downloads/.
