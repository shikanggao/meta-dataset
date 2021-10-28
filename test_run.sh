export EXPNAME=baseline_omniglot
export JOBNAME=${EXPNAME}
python -m meta_dataset.train \
--records_root_dir=$RECORDS \
--train_checkpoint_dir=${EXPROOT}/checkpoints/${JOBNAME} \
--summary_dir=${EXPROOT}/summaries/${JOBNAME} \
--gin_config=meta_dataset/learn/gin/default/${JOBNAME}.gin \
--gin_bindings="Trainer.experiment_name='$EXPNAME'"
