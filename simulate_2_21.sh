#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size 100/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 16384/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SRADV2_reorder_16384_1000_invalidateL2_100"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_reorder_16384_1000_invalidateL2_100.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 8192/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "BLK_reorder_8192_1000_invalidateL2_100"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_reorder_8192_1000_invalidateL2_100.txt &

sleep 60s
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size 200/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 16384/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SRADV2_reorder_16384_1000_invalidateL2_200"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_reorder_16384_1000_invalidateL2_200.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 8192/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "BLK_reorder_8192_1000_invalidateL2_200"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_reorder_8192_1000_invalidateL2_200.txt &
