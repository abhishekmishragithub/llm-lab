A collection of my experiments running large language models locally — with llama.cpp, vLLM, Kimi CLI, OpenCode, and other tools. Each model or setup has its own folder with scripts, config, screenshots, and gotchas.

## Models/Experiments

| Model / Setup       | Description                                                                 | Link | Blog |
|---------------------|-----------------------------------------------------------------------------|------|------|
| **Kimi-K2 (GGUF)**  | Run quantized Kimi-K2 with llama.cpp + Kimi CLI + OpenCode CLI              | [🔗](./kimi-k2-gguf/README.md) | NA |

## Stack Used

- [llama.cpp](https://github.com/ggerganov/llama.cpp)
- [Kimi CLI](https://kimi.moonshot.cn/)
- [OpenCode CLI](https://github.com/OpenCodeAI/opencode)
- [E2E TIR platform](https://tir.e2enetworks.com/) for GPU
- [Cloudflare Tunnels](developers.cloudflare.com/cloudflare-one/networks/connectors/cloudflare-tunnel/get-started/create-remote-tunnel/)
- [HuggingFace](https://huggingface.co/)

> Most models run offline and locally, optionally tunneled with Cloudflare.
