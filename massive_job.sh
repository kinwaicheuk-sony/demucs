## Too massive that my machine crashes
# gpus=(0 1 2 3)
# i=0
# for part in mp3_part_*; do
#     gpu=${gpus[$((i % ${#gpus[@]}))]}
#     CUDA_VISIBLE_DEVICES=$gpu xargs -a "$part" demucs --flac &
#     i=$((i+1))
# done
# wait

# gpus=(0 1 2 3)
# i=0
# for part in mp3_part_{00..08}; do
#     gpu=${gpus[$((i % ${#gpus[@]}))]}
#     CUDA_VISIBLE_DEVICES=$gpu xargs -a "$part" demucs --flac &
#     i=$((i+1))
# done
# wait


gpus=(0 1 2 3)
i=0
for part in mp3_part_{00..07}; do
    gpu=${gpus[$((i % ${#gpus[@]}))]}
    CUDA_VISIBLE_DEVICES=$gpu xargs -a "$part" demucs --flac &
    i=$((i+1))
done
wait