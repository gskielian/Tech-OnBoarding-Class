#!/bin/bash


# Usage:
# `bash convert_h5_to_tflite.sh keras_model_file.h5`
# will convert
# `keras_model_file.h5` and create `keras_model_file.tflite`
input_file=$1

tflite_convert --output_file="${input_file%.*}.tflite" --keras_model_file="${input_file}"
