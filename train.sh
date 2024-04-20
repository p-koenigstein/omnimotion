#!/bin/bash
BASEDIR=/home/peter/git/MT-GMM/data/epic
for seq in seq1 seq2 seq3 seq4 seq5 seq6 seq7 seq8 seq9 seq10 seq11 seq12 seq13 seq14 
do
#	cd preprocessing/
#	python main_processing.py --data_dir $BASEDIR/$seq --chain
#	cd ..
	python omnimotion/train.py --config omnimotion/configs/default.txt --i_weight 5000 --save_dir omnimotion/out/ --data_dir $BASEDIR/$seq
done
# shutdown -h now
