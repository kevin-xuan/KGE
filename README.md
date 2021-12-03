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

## Run codes
先将scheme1.zip和scheme2.zip分别放到datasets/gowalla/kg/scheme1和datasets/gowalla/kg/scheme2下，解压后会有4个txt文件
然后将log目录下的gowalla-transe-1637901500.zip解压

TransE
这部分代码是spatial threshold为0.2km所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1
```
这部分代码是spatial threshold为3km，然后再取top 50所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2
```

TransH
这部分代码是spatial threshold为0.2km所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1 -load_ckpt_file gowalla-transe-1637901500.zip
```
这部分代码是spatial threshold为3km，然后再取top 50所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2 -load_ckpt_file gowalla-transe-1637901500.zip
```
TransR
这部分代码是spatial threshold为0.2km所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1 -load_ckpt_file gowalla-transe-1637901500.zip
```
这部分代码是spatial threshold为3km，然后再取top 50所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2 -load_ckpt_file gowalla-transe-1637901500.zip
```
