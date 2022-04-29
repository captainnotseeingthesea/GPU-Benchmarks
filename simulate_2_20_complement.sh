#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config

sed -i '155s/.*/-visualizer_outputfile "FWT_7000_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 7000/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_7000_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT_6000_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 6000/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_6000_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT_8000_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 8000/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_8000_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "LPS_1930_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1930/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_1930_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "LPS_1920_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1920/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_1920_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS_700_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 700/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_700_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS_800_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 800/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_800_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS_900_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 900/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_900_1000.txt &

sleep 60s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config

sed -i '155s/.*/-visualizer_outputfile "FWT_reorder_6000_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 6000/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_reorder_6000_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT_reorder_7000_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 7000/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_reorder_7000_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT_reorder_8000_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 8000/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_reorder_8000_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "LPS_reorder_1920_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1920/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_reorder_1920_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "LPS_reorder_1930_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1930/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_reorder_1930_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS_reorder_700_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 700/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_reorder_700_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS_reorder_800_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 800/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_reorder_800_1000.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS_reorder_900_1000"/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 900/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_reorder_900_1000.txt &
