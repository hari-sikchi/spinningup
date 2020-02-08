#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=100:00:00
#SBATCH -o /home/hsikchi/work/TD3/sbatch_out/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --partition=CLUSTER
#SBATCH --exclude=compute-0-[11]
#SBATCH --mem=4G
#SBATCH --cpus-per-task=4
# module load cuda-91 
module load singularity
singularity exec \
  /home/hsikchi/ubuntu2.simg bash -c \
  'source ~/.bashrc && cd /home/hsikchi/work/spinningup && source activate spinningup && \
 	python -m spinup.run ipo_pytorch --env '${1}' --exp_name '${2}' --seed '${3}' --epochs '${4}''

#   'source ~/.bashrc && cd /home/hsikchi/work/TD3 && source activate world_model && \
#  	python main_multistep.py --policy "TD3" --env '${3}' \
# 	--seed '${1}' --start_timesteps '${2}'\
# 	--exp_name '${4}' '


#   'source ~/.bashrc && cd /home/hsikchi/work/TD3 && source activate world_model && \
#  	python main_ddpgfd.py --policy "TD3" --env '${3}' \
# 	--seed '${1}' --start_timesteps '${2}'\
# 	--save_model --exp_name '${4}' --oracle '$5' --oracle_episodes '$6' --lambda '$7''

#   'source ~/.bashrc && cd /home/hsikchi/work/TD3 && source activate world_model && \
#  	python main_prior.py --policy "TD3" --env '${3}' \
# 	--seed '${1}' --start_timesteps '${2}'\
# 	--save_model --exp_name '${4}' --oracle '$5''

 #  --policy_evaluation Exp0321_TD3_multi_step_HalfCheetah-v2_one_step_step_5-0/model \
