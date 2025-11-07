#### With more VRAM, you can run MUCH bigger models.

- Q2_K_XL (current, on H200): ~20-30 tokens/s
- Q4_K_M (588GB, on H200): ~15-25 tokens/s, better quality
- Q8_0 (1.09TB, on H200): ~10-20 tokens/s, best quality* (near original)



## Pure CPU Setup (No GPU)

**RAM Requirements:**

| Model      | RAM Needed | Quality |
| ---------- | ---------- | ------- |
| UD-TQ1_0   | **256GB**  | Low     |
| UD-Q2_K_XL | **400GB**  | Medium  |
| Q3_K_XL    | **480GB**  | Good    |
| Q4_K_M     | **600GB**  | Better  |
| Q8_0       | **1.2TB**  | Best    |


**Key CPU Optimizations:**

- `--mlock` - Lock model in RAM (prevent swap)
- `--threads 64` - Use all available CPU cores
- `--threads-batch 64` - Batch processing threads
- `--numa distribute` - NUMA-aware distribution
- Smaller batch sizes (512 vs 4096)

ref:
