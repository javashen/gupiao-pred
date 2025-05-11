#export CUDA_VISIBLE_DEVICES=2

model_name=TimesNet

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_predict/ \
  --data_path stock_000001.csv \
  --model_id STOCK-30-10 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 30 \
  --label_len 10 \
  --pred_len 20 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 5 \
  --d_model 32 \
  --d_ff 32 \
  --top_k 5 \
  --des 'Exp' \
  --target "close" \
  --freq "d" \
  --inverse \
  --itr 1


# "--task_name", "long_term_forecast", "--is_training", "1", "--root_path", "./dataset/stock_predict/", 
#             "--data_path", "stock_000001.csv", "--model_id", "STOCK-30-10", "--model", "TimesNet", "--data", "custom", 
#             "--features", "M", "--seq_len", "30", "--label_len", "10", "--pred_len", "20", "--e_layers", "2", 
#             "--d_layers", "1", "--enc_in", "5", "--dec_in", "5", "--c_out", "5", "--des", "Exp", "--itr", "1", 
#             "--freq", "d", "--target", "close", "--loss",  "MSE", "--inverse", "--d_model", "32", "--batch_size", "64"