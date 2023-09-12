## Environment

* python 3.7
* pytorch 1.8.0
* cuda 11.1.1
* python-gflags
* visdom
* tqdm
* pandas
* numpy

Some required packages are included in *requirements.txt*.
Moreover, **datasets** and **log** folders need to be manually created (e.g., datasets/foursquare/kg/foursquare_scheme2/e_map.txt).


## Run codes
### gowalla

#### TransE
```
bash submit/gowalla_scheme1_transe.sh
```

```
bash submit/gowalla_scheme2_transe.sh 
```
#### TransH or TransR
```
bash submit/gowalla_scheme1_transh.sh  # need pre-trained transe model
bash submit/gowalla_scheme1_transr.sh
```

```
bash submit/gowalla_scheme2_transh.sh   # need pre-trained transe model
bash submit/gowalla_scheme2_transr.sh
```
### foursquare
#### TransE
```
bash submit/foursquare_scheme1_transe.sh
```

```
bash submit/foursquare_scheme2_transe.sh 
```
#### TransH or TransR
```
bash submit/foursquare_scheme1_transh.sh  # need pre-trained transe model
bash submit/foursquare_scheme1_transr.sh
```

```
bash submit/foursquare_scheme2_transh.sh   # need pre-trained transe model
bash submit/foursquare_scheme2_transr.sh
```

