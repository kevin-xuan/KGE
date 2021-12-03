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
先将datasets/gowalla/kg/scheme1和datasets/gowalla/kg/scheme2目录下的train.zip解压，得到train.txt文件
然后将log目录下的gowalla-transe-1637901500.zip解压得到gowalla-transe-1637901500.ckpt!

TransE

这部分代码**scheme1**是spatial threshold为0.2km所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1
```
这部分代码**scheme2**是spatial threshold为3km，然后再取top 50所构造的KG
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2
```

TransH(**用预训练好的TransE模型来继续训练**)

这部分代码**scheme1**是spatial threshold为0.2km所构造的KG！我只提供了这部分的TransE预训练模型，即gowalla-transe-1637901500.ckpt，所以这部分可以直接运行！
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
这部分代码**scheme2**是spatial threshold为3km，然后再取top 50所构造的KG！我没有提供对应的TransE模型，**必须先运行TransE，再运行这部分代码！！！**
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
TransR

这部分代码**scheme1**是spatial threshold为0.2km所构造的KG!我只提供了这部分的TransE预训练模型，即gowalla-transe-1637901500.ckpt，所以这部分可以直接运行！
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
这部分代码**scheme2**是spatial threshold为3km，然后再取top 50所构造的KG!我没有提供对应的TransE模型，**必须先运行TransE，再运行这部分代码！！！**
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
