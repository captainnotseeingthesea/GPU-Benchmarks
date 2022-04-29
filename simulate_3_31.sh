#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1705/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1705_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1705_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1812/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1812_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1812_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1918/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1918_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1918_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2025/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_2025_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_2025_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6037/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6037_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6037_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6792_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6792_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7815/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7815_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7815_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8792_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8792_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5944/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5944_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5944_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6687/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6687_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6687_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 488/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_488_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_488_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 549/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_549_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_549_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1846/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1846_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1846_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2077/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2077_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2077_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2192/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2192_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2192_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_385_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 616/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_616_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_616_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 693/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_693_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_693_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_514_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 822/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_822_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_822_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 925/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_925_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_925_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 129/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_129_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_129_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 194/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_194_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_194_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 207/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_207_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_207_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 220/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_220_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_220_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 233/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_233_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_233_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 246/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_246_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_246_reorder_evict_NA.txt &

sleep 30s
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
