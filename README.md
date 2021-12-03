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
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1
```
TransH
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1
```
TransR
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1
```
