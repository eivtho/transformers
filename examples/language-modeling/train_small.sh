export TRAIN_FILE=dataset/small.train
export TEST_FILE=dataset/small.eval

poetry run python run_language_modeling.py \
    --output_dir=output \
    --model_type=xlm-roberta \
    --model_name_or_path=xlm-roberta-base \
    --do_train \
    --train_data_file=$TRAIN_FILE \
    --do_eval \
    --eval_data_file=$TEST_FILE \
    --mlm \
    --per_device_train_batch_size=8 \
    #--fp16
