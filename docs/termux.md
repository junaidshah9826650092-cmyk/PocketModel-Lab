# Termux (Android CLI)

```sh
pkg update && pkg install python clang git wget
sh scripts/fetch-model.sh kilo     # downloads PocketModel-Kilo...gguf (also: mega, giga, giga-hd)
pip install llama-cpp-python       # compiles on device, ~10-20 min
```

Quick chat test:

```python
from llama_cpp import Llama
llm = Llama(model_path="PocketModel-Kilo-qwen3-0.6B-IQ2_M.gguf", n_ctx=4096, n_threads=4)
while True:
    out = llm.create_chat_completion(messages=[{"role": "user", "content": input("you> ")}], max_tokens=256)
    print(out["choices"][0]["message"]["content"])
```

Tips:
- No-compile alternative: ChatterUI (docs/chatterui.md).
- Heavy Titan build: run `llama-server` on a PC and open `http://PC-IP:8080` from the phone browser.
- Termux needs the model in Termux-visible storage: `termux-setup-storage` first.
