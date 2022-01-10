export SOURCE=mvrgbd_syn
# export EXPNAME=baseline
# export EXPNAME=maml
export EXPNAME=matching
# export EXPNAME=prototypical
# export EXPNAME=relationnet
export JOBNAME=${EXPNAME}_${SOURCE}

python -m meta_dataset.train \
  --records_root_dir=$RECORDS \
  --train_checkpoint_dir=${EXPROOT}/checkpoints/${JOBNAME} \
  --summary_dir=${EXPROOT}/summaries/${JOBNAME} \
  --gin_config=meta_dataset/learn/gin/default/${JOBNAME}.gin \
  --gin_bindings="Trainer.experiment_name='$JOBNAME'" \
2>&1 | tee train_${JOBNAME}.log
