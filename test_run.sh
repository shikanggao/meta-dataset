export JOBNAME=baseline_imagenet
export EXPROOT=/home/skgao/dev/meta-dataset/exproot
python -m meta_dataset.train \
--records_root_dir=$RECORDS \
--train_checkpoint_dir=${EXPROOT}/checkpoints/${JOBNAME} \
--summary_dir=${EXPROOT}/summaries/${JOBNAME} \
--gin_config=meta_dataset/learn/gin/best/${JOBNAME}.gin \
--gin_bindings="Trainer.experiment_name='$EXPNAME'"