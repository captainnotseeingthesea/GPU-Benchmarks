#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '183s/.*/-page_access_filename "ATAX_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 ATAX | tee log_ATAX_external_mem_28000_extreme_NA.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BICG_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 BICG | tee log_BICG_external_mem_28000_extreme_NA.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "3DCONV_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 3DCONV | tee log_3DCONV_external_mem_28000_extreme_NA.txt &

