#!/usr/bin/env bash
python run_asr.py \
--output_dir="./wav2vec2-large-lv60-timit-asr" \
--num_train_epochs="30" \
--per_device_train_batch_size="2" \
--per_device_eval_batch_size="2" \
--gradient_accumulation_steps="4" \
--evaluation_strategy="steps" \
--save_steps="500" \
--eval_steps="100" \
--logging_steps="50" \
--learning_rate="5e-4" \
--warmup_steps="3000" \
--model_name_or_path="facebook/wav2vec2-large-lv60" \
--fp16 \
--dataset_name="timit_asr" \
--train_split_name="train" \
--validation_split_name="test" \
--orthography timit \
--preprocessing_num_workers="$(nproc)" \
--group_by_length \
--freeze_feature_extractor \
--verbose_logging \
.
