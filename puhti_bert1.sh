cd /scratch/project_2001426
mkdir SOME-DIRECTORY-NAME
cd SOME-DIRECTORY-NAME
git clone https://github.com/spyysalo/bert-span-classifier.git
cd bert-span-classifier/
./scripts/get-models.sh	
mkdir $HOME/venv
module load tensorflow
python3 -m venv $HOME/venv/span-bert
source $HOME/venv/span-bert/bin/activate
pip install -r requirements.txt
mkdir logs
sbatch slurm/slurm-run.sh models/cased_L-12_H-768_A-12/bert_model.ckpt example-data 64 16 3e-5 2
