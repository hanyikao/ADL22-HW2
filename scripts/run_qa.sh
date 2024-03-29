python question-answering/run_qa.py \
  --model_name_or_path hfl/chinese-roberta-wwm-ext-large \
  --cache_dir "cache/chinese-roberta-wwm-ext-large" \
  --train_file dataset/squad_train.json \
  --validation_file dataset/squad_valid.json \
  --max_seq_length 512 \
  --doc_stride 128 \
  --n_best_size 20 \
  --max_answer_length 30 \
  --output_dir "output/chinese-roberta-wwm-ext-large/qa" \
  --overwrite_output_dir \
  --do_train \
  --do_eval \
  --evaluation_strategy epoch \
  --per_device_train_batch_size 4 \
  --per_device_eval_batch_size 4 \
  --gradient_accumulation_steps 2 \
  --learning_rate 3e-5 \
  --weight_decay 1e-4 \
  --num_train_epochs 5 \
  --lr_scheduler_type linear \
  --warmup_ratio 0.0 \
  --save_strategy steps \
  --save_steps 500 \
  --seed 42 \
  --fp16 \
  --report_to all
