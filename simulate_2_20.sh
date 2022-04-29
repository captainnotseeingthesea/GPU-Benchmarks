#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1024/g' gpgpusim.config
sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size 100/g' gpgpusim.config

sed -i '155s/.*/-visualizer_outputfile "PATHFINDER_reorder_1000_invalidateL2_100"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_reorder_1000_invalidateL2_100.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "3DS_reorder_1000_invalidateL2_100"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_reorder_1000_invalidateL2_100.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BP_reorder_1000_invalidateL2_100"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_reorder_1000_invalidateL2_100.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 512/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "HOTSPOT_reorder_1000_invalidateL2_100"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_21_reorder_1000_invalidateL2_100.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FFT_reorder_1000_invalidateL2_100"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_21_reorder_1000_invalidateL2_100.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 1024/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size 200/g' gpgpusim.config

sed -i '155s/.*/-visualizer_outputfile "PATHFINDER_reorder_1000_invalidateL2_200"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_reorder_1000_invalidateL2_200.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BP_reorder_1000_invalidateL2_200"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_reorder_1000_invalidateL2_200.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 512/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "HOTSPOT_reorder_1000_invalidateL2_200"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_21_reorder_1000_invalidateL2_200.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FFT_reorder_1000_invalidateL2_200"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_21_reorder_1000_invalidateL2_200.txt &
