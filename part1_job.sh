# while IFS= read -r file; do
#     CUDA_VISIBLE_DEVICES=1 demucs "$file" --flac
# done < mp3_part_1.txt

CUDA_VISIBLE_DEVICES=1 xargs -a mp3_part_1.txt demucs --flac