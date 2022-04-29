#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_12291_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 19665/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_19665_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_19665_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 22123/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_22123_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_22123_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reorder_evict_NA.txt &
