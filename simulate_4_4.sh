#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1705/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1705_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1705_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1812/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1812_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1812_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1918/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1918_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1918_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2025/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_2025_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_2025_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6037/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6037_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6037_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6792_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6792_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7815/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7815_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7815_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8792_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8792_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5944/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5944_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5944_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6687/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6687_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6687_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 488/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_488_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_488_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 549/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_549_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_549_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1846/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1846_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1846_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2077/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2077_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2077_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2192/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2192_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2192_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_385_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 616/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_616_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_616_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 693/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_693_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_693_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_514_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 822/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_822_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_822_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 925/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_925_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_925_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 129/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_129_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_129_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 194/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_194_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_194_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 207/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_207_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_207_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 220/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_220_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_220_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 233/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_233_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_233_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 246/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_246_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_246_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_12291_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 19665/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_19665_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_19665_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 22123/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_22123_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_22123_optimal_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_optimal_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_optimal_reorder_evict_NA.txt &
