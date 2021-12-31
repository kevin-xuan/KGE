## Environment

* python 3.7
* pytorch 1.8.0
* cuda 11.1.1
* python-gflags
* visdom
* tqdm
* pandas
* numpy

some required packages are included in *requirements.txt*.

## Run codes
<!-- 先将scheme1.7z和scheme2.7z压缩文件解压到datasets/gowalla/kg/scheme1和datasets/gowalla/kg/scheme2目录下，会得到4个txt文件！
然后将gowalla-transe-1637901500.7z解压到log目录下，得到gowalla-transe-1637901500.ckpt! -->
先将scheme2.zip压缩文件解压到datasets/gowalla/kg/scheme2目录下，会得到4个txt文件！
然后将gowalla-transe-1639638775.zip解压到log目录下，得到gowalla-transe-1639638775.ckpt!

TransE

<!-- 这部分代码**scheme1**是spatial threshold为0.2km所构造的KG -->
<!--
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1
```
-->
这部分代码**scheme2**是spatial threshold为3km，然后再取top 50所构造的KG
``` -->
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2
```

TransH(**用预训练好的TransE模型来继续训练**)

<!-- 这部分代码**scheme1**是spatial threshold为0.2km所构造的KG！我只提供了这部分的TransE预训练模型，即gowalla-transe-1637901500.ckpt，所以这部分可以直接运行！
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
这部分代码**scheme2**是spatial threshold为3km，然后再取top 50所构造的KG！我没有提供对应的TransE模型，**必须运行TransE保存模型之后，会得到gowalla-transe-xxxxxxxx.ckpt文件，再运行这部分代码！！！**,因此对应的**参数为-load_ckpt_file gowalla-transe-xxxxxxxx.ckpt** -->
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2 -load_ckpt_file gowalla-transe-xxxxxxxx.ckpt
```
TransR(**用预训练好的TransE模型来继续训练**)

<!-- 这部分代码**scheme1**是spatial threshold为0.2km所构造的KG!我只提供了这部分的TransE预训练模型，即gowalla-transe-1637901500.ckpt，所以这部分可以直接运行！
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
这部分代码**scheme2**是spatial threshold为3km，然后再取top 50所构造的KG!我没有提供对应的TransE模型，**必须运行TransE保存模型之后，会得到gowalla-transe-xxxxxxxx.ckpt文件，再运行这部分代码！！！**,因此对应的**参数为-load_ckpt_file gowalla-transe-xxxxxxxx.ckpt**！-->
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
