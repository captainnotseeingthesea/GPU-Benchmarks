#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config

sed -i '155s/.*/-visualizer_outputfile "SRADV2_26_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 26/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_26_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BLK_25_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 25/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_25_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT_24_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 24/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_24_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "3DS_24_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 24/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_24_1000.txt &

sleep 60s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SRADV2_reorder_26_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 26/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_reorder_26_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BLK_reorder_25_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 25/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_reorder_25_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT_reorder_24_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 24/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_reorder_24_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "3DS_reorder_24_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_address_width 24/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_reorder_24_1000.txt &
