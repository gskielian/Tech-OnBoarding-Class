#!/usr/bin/env python
# -*- coding: utf-8 -*-

##########################################
# https://www.tensorflow.org/guide/keras #
##########################################

import tensorflow as tf
from tensorflow.keras import layers

print(tf.keras.__version__)

# allows saving as HDF5 Format
save_format='h5'

#########################################
# TEMPLATE DNN FROM TENSORFLOW.ORG SITE #
#########################################

model = tf.keras.Sequential()
# Adds a densely-connected layer with 64 units to the model:
model.add(layers.Dense(64, activation='tanh'))
# Add another:
model.add(layers.Dense(64, activation='tanh'))
# Add a softmax layer with 10 output units:
model.add(layers.Dense(10, activation='softmax'))


##############################
# CONFIGURE LEARNING PROCESS #
##############################

model.compile(optimizer=tf.train.AdamOptimizer(0.001),
                      loss='categorical_crossentropy',
                      metrics=['accuracy'])

################################
# CONFIGURE MODEL FOR TRAINING # 
################################

# Configure a model for mean-squared error regression.
model.compile(optimizer=tf.train.AdamOptimizer(0.01),
                      loss='mse',       # mean squared error 
                      metrics=['mae'])  # mean absolute error


# TODO research different methods for training configuring training. e.g. rms, adam, etc.

###########################################
# CREATE MOCK DATA FROM NUMPY TO TRAIN ON #
###########################################

import numpy as np

"""
training_directory = 'data/training'
validation_directory = 'data/validation'

number_of_training_images = 
number_of_validation_images =
number_of_classes =
number_of_channels = 3
number_of_epochs = 10
batch_size = 32

"""



data = np.random.random((1000, 32))
labels = np.random.random((1000, 10))

model.fit(data, labels, epochs=10, batch_size=32)


# Save tf.keras model in the HDF5 format 

keras_file = 'keras_model.h5'
tf.keras.models.save_model(model, keras_file)

# convert hdf5 to tensorflowlite model

converter = tf.lite.TFLiteConverter.from_keras_model_file(keras_file)
tflite_model = converter.convert()
open('converted_model.tflite','wb').write(tflite_model)

# Save model architecture as json
"""
model_architecture=open('model_architecture.json', 'w')
model_architecture.write(model.to_json())
model_architecture.close()
"""
