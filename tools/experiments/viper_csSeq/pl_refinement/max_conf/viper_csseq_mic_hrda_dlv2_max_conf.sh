#!/bin/bash
EXP_NAME=viper_csSeq_mic_hrda_dlv2_pl_refinement_max_conf
python ./tools/train.py configs/mic/viperHR2csHR_mic_hrda_deeplab.py --launcher=slurm --l-warp-lambda=0.0 --l-mix-lambda=1.0 --warp-cutmix True --bottom-pl-fill True --max-confidence True --seed 1 --deterministic --work-dir=./work_dirs/viper/$EXP_NAME --auto-resume True --wandbid $EXP_NAME$T
