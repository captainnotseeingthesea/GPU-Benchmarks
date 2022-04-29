#!/bin/bash
  
source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "LPS_1940_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1940/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_1940_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "LPS_1950_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1950/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_1950_1000.txt &

sleep 60s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "LPS_reorder_1940_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1940/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_reorder_1940_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "LPS_reorder_1950_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1950/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_reorder_1950_1000.txt &
