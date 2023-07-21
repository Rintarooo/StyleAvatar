#!/bin/bash

cd styleunet
# test, --skin_whiten 0-1 if you want, --use_alignment if your input image is not a 1024x1024 aligned portriat image, --iter 1~3 for iterations of face retouching (only for mode 2)
python3 test.py --input_dir input/inpainting --ckpt pretrained/inpainting_g_ema.pt --save_dir output/inpainting --mode 0
python3 test.py --input_dir input/superresolution --ckpt pretrained/superresolution_g_ema.pt --save_dir output/superresolution --mode 1
python3 test.py --input_dir input/retouching --ckpt pretrained/retouching_g_ema.pt --save_dir output/retouching --mode 2 --skin_whiten 0.5 --iter 2 --use_alignment
python3 test.py --input_dir input/tdmm --ckpt pretrained/tdmm_lizhen.pt --save_dir output/tdmm --mode 3