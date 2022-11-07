export SEED=42

python multiple-choice/run_swag.py \
  --model_name_or_path hfl/chinese-roberta-wwm-ext-large \
  --cache_dir "cache/cs$SEED" \
  --train_file dataset/swag_train.json \
  --validation_file dataset/swag_valid.json \
  --test_file dataset/swag_test.json \
  --max_seq_length 512 \
  --output_dir "output/cs$SEED" \
  --overwrite_output_dir \
  --do_train \
  --do_eval \
  --do_predict \
  --evaluation_strategy epoch \
  --per_device_train_batch_size 2 \
  --per_device_eval_batch_size 2 \
  --gradient_accumulation_steps 2 \
  --learning_rate 3e-5 \
  --weight_decay 1e-4 \
  --num_train_epochs 1 \
  --lr_scheduler_type linear \
  --warmup_ratio 0.0 \
  --save_strategy steps \
  --save_steps 500 \
  --seed $SEED \
  --fp16 \
  --report_to all
# --eval_steps EVAL_STEPS \