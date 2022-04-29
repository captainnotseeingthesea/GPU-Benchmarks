#!/bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug
./mainApp -sing0 LPS | tee log_LPS_external_mem_1000_extreme.txt  &

./mainApp -sing0 GUPS | tee log_GUPS_external_mem_1000_extreme.txt  &
