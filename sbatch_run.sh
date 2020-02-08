#!/bin/bash

for i in 0 1 2 3 4
do

   # Multistep episodice
   # sbatch seuss_sbatch.sh Hopper-v2 dump ${i}

   sbatch seuss_sbatch.sh Straight-v0 straight_ipo_constraint_10_t_100_min_1e-40 ${i} 750
   # sbatch seuss_sbatch.sh Swimmer-v2 swimmer_ppo_alpha_1_positive ${i} 750
   # sbatch seuss_sbatch.sh HalfCheetah-v2 halfcheetah_ppo_alpha_1_positive ${i} 750


done