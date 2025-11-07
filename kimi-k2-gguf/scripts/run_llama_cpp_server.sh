export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

./llama.cpp/llama-server \
  --model models/kimi-k2-gguf/UD-Q2_K_XL/Kimi-K2-Instruct-UD-Q2_K_XL-00001-of-00008.gguf \
  --n-gpu-layers 999 \
  --tensor-split 1,1,1,1,1,1,1,1 \
  --main-gpu 0 \
  --threads 32 \
  --batch-size 512 \
  --ubatch-size 256 \
  --ctx-size 32768 \
  --cache-type-k q4_0 \
  --cache-type-v q4_0 \
  --host 0.0.0.0 \
  --port 8000 \
  --jinja
  --alias kimi-k2-instruct
