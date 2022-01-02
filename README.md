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

## Data Preparation
将KGE_model.zip放到log文件夹下然后解压，会有3个pkl文件。
然后将foursquare_scheme1.zip和foursquare_scheme1.zip放到datasets/foursquare/kg/目录下然后解压，
同样将gowalla_scheme2.zip放到datasets/gowalla/kg/目录下然后解压

## Run codes
先运行gowalla_transh.sh，因为我在里面安装了新的第三方库(pip install -r requirements.txt)
### gowalla

```
bash gowalla_transh.sh
```

```
bash gowalla_transr.sh
```
### foursquare

```
bash foursquare_scheme1_transh.sh
```

```
bash foursquare_scheme1_transr.sh
```

```
bash foursquare_scheme2_transh.sh
```

```
bash foursquare_scheme2_transr.sh
```

<!--TransE


```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1
```


``` 
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme2
```
-->

<!--TransH(**用预训练好的TransE模型来继续训练**)

<!--
```
python run_knowledge_representation.py -data_path ./datasets/ -log_path ./log/ -kg_test_files test.txt -model_type transe -dataset gowalla -batch_size 128 -optimizer_type Adam -version scheme1 -load_ckpt_file gowalla-transe-1637901500.ckpt
```
-->
