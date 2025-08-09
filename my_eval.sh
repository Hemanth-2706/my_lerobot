#!/bin/bash
export PYTHONPATH=$PYTHONPATH:~/Desktop/my_lerobot
truncate -s 0 logs/*.log


# start_time=$(date +%s)
# echo "⏱️ Evaluation started at: $(date)"

# python -m lerobot.scripts.eval \
#   --policy.path=lerobot/vqbet_pusht \
#   --policy.device=cuda \
#   --env.type=pusht \
#   --env.task=PushT-v0 \
#   --eval.n_episodes=1 \
#   --eval.batch_size=1 \
#   --output_dir=outputs/sim_inference_results/vqbet_pusht__PushT-v0_temp

# end_time=$(date +%s)
# echo "✅ Evaluation completed at: $(date)"

# duration=$((end_time - start_time))
# hh=$((duration / 3600))
# mm=$(((duration % 3600) / 60))
# ss=$((duration % 60))
# time_str=$(printf "%02d:%02d:%02d (HH:MM:SS)" $hh $mm $ss)

# echo "🕒 Total time taken: $time_str"

# # Save to output file
# output_dir="outputs/sim_inference_results/pi0fast_base__PushT-v0"
# mkdir -p "$output_dir"
# echo "$time_str" > "$output_dir/time_taken.txt"

python src/lerobot/scripts/eval_LIBERO.py --policy_path=lerobot/smolvla_base
