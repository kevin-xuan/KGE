# Unifying Knowledge Graph Learning and Recommendation Towards a Better Understanding of User Preference

This is the code of the *Unifying Knowledge Graph Learning and Recommendation Towards a Better Understanding of User Preference* in WWW'19, which proposed a model that jointly train two tasks of item recommendation and KG representation learning.

## Environment

* python 3.7
* pytorch 1.8.0
* python-gflags
* visdom
* tqdm
* pandas
* numpy

some required packages are included in *requirements.txt*.

## Run our codes

TransE
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -l2_lambda 0 -model_type transe -nohas_visualization -dataset gowalla -batch_size 256 -embedding_size 100 -learning_rate 0.001 -topn 10 -seed 3 -eval_interval_steps 9150 -training_steps 915000 -early_stopping_steps_to_wait 45750 -optimizer_type Adam -L1_flag -norm_lambda 1 -kg_lambda 1 -version scheme1
```
