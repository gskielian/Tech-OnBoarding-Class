# Notes for running tensorflow lite sample on RPI4

Takes a little work, and things are still changing rapidly.

## Step 0 of 3: install tensorflow via binary

For our setup we used the following:

`tensorflow-1.14.0-cp37-cp37m-linux_armv7l.whl`

[https://github.com/PINTO0309/Tensorflow-bin](https://github.com/PINTO0309/Tensorflow-bin)

## Step 1 of 3: alter the import in `label_image.py`


From root of tensorflow git repo, vim/nano/emacs into the `label_image.py` script:

```sh
vim tensorflow/tensorflow/lite/examples/python/label_image.py
```

Make the following change to reflect the recent changes in import path:


```python
#from tensorflow.lite.python.interpreter import Interpreter
from tflite_runtime.interpreter import Interpreter
```


## Step 2 of 3: Grabbing Deps (Network Model, Sample Image, Labels)

grab the dependencies for the example

```sh
# Get photo
curl https://raw.githubusercontent.com/tensorflow/tensorflow/master/tensorflow/lite/examples/label_image/testdata/grace_hopper.bmp > /tmp/grace_hopper.bmp
# Get model
curl https://storage.googleapis.com/download.tensorflow.org/models/mobilenet_v1_2018_02_22/mobilenet_v1_1.0_224.tgz | tar xzv -C /tmp
# Get labels
curl https://storage.googleapis.com/download.tensorflow.org/models/mobilenet_v1_1.0_224_frozen.tgz  | tar xzv -C /tmp  mobilenet_v1_1.0_224/labels.txt

mv /tmp/mobilenet_v1_1.0_224/labels.txt /tmp/
```

## Step 3 of 3: Run the sample

Finally, run the sample below and you should be good:

```python
python3 label_image.py \
  --model_file /tmp/mobilenet_v1_1.0_224.tflite \
  --label_file /tmp/labels.txt \
  --image /tmp/grace_hopper.bmp
```

Results should look something like this:

```sh
0.728693: military uniform
0.116163: Windsor tie
0.035517: bow tie
0.014874: mortarboard
0.011758: bolo tie
```

## testing the implementation
https://github.com/tensorflow/tensorflow/tree/master/tensorflow/lite/examples/python
