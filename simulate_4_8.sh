#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 979/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_979_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_979_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1468/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1468_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1468_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1566/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1566_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1566_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1664/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1664_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1664_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1762/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1762_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1762_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1860/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1860_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1860_optimal_reorder_evict_NA.txt &

