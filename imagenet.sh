#!/bin/sh

# Fill in these environment variables.
# I have tested this code with CUDA 4.0, 4.1, and 4.2. 
# Only use Fermi-generation cards. Older cards won't work.

# If you're not sure what these paths should be, 
# you can use the find command to try to locate them.
# For example, NUMPY_INCLUDE_PATH contains the file
# arrayobject.h. So you can search for it like this:
# 
# find /usr -name arrayobject.h
# 
# (it'll almost certainly be under /usr)

python convnet.py --data-path=/media/66AAFEE6AAFEB223/Users/Antonio/Downloads/imagenet10k_eccv2010.tar --save-path=../tmp --test-range=6 --train-range=1-5 --layer-def=./imagenet-layers/layers-imagenet-dropout.cfg --layer-params=./example-layers/layer-params-19pct.cfg --data-provider=imagenet --test-freq=13
