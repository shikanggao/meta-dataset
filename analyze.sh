export SOURCE=mvrgbd_syn
# export EXPNAME=baseline
# export EXPNAME=maml
export EXPNAME=matching
# export EXPNAME=prototypical
# export EXPNAME=relationnet
export JOBNAME=${EXPNAME}_${SOURCE}

python -m meta_dataset.analyze \
  --alsologtostderr \
  --eval_finegrainedness=False \
  --eval_finegrainedness_split=train \
  --root_dir=. \
2>&1 | tee analyze_${JOBNAME}.log
