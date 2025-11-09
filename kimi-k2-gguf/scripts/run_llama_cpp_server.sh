export CUDA_VISIBLE_DEVICES=0,1,2,3 # for 4 gpus

# export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 --> for 8 gpus

./llama.cpp/llama-server \
  --model models/kimi-k2-gguf/UD-Q2_K_XL/Kimi-K2-Instruct-UD-Q2_K_XL.gguf \
  --host 0.0.0.0 --port 8000 \
  --n-gpu-layers 61 \
  --tensor-split 1,1,1,1 \
  --main-gpu 0 \
  --threads 96 \
  --numa distribute \
  --batch-size 2048 --ubatch-size 512 \
  --ctx-size 32768 \
  --parallel 4 --cont-batching \
  --cache-type-k q4_0 --cache-type-v q4_0 \
  --flash-attn \
  --temp 0.6 --min-p 0.01 \
  --jinja
  --alias kimi-k2-instruct


# For more concurrency: increase –parallel to 6–8, then reduce –ctx-size to 16k–24k or lower batch-size to avoid OOM under load
# For larger context: raise –ctx-size to 65536 or 131072; keep KV q4_0, and reduce –parallel to 2–3 while monitoring VRAM
# For slightly higher quality KV: `--cache-type-k q5_k --cache-type-v q5_k
# Edge-case checks:
# If flash-attn fails to initialize, rebuild llama.cpp with CUDA/Hopper kernels up to date and ensure you’re on a recent commit
# If you see CPU mmap overhead or slow startup, you can keep memory-mapped IO (default) for fast load. Avoid ‎`--no-mmap` unless necessary.
