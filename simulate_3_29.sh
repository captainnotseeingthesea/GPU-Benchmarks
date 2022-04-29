#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reorder_NA.txt &

sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_385_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_514_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 258/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_258_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_258_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 387/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_387_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_387_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_12291_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reorder_NA.txt &

