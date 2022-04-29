#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1705/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1705_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1705_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1812/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1812_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1812_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6037/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6037_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6037_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7815/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7815_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7815_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5944/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5944_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5944_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 488/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_488_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_488_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1846/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1846_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1846_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 616/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_616_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_616_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 822/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_822_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_822_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 207/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_207_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_207_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 220/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_220_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_220_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 19665/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_19665_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_19665_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reorder_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '178s/.*/-dram_page_num 1705/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1705_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1705_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1812/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1812_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1812_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6037/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6037_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6037_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7815/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7815_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7815_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5944/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5944_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5944_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 488/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_488_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_488_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1846/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1846_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1846_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 616/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_616_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_616_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 822/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_822_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_822_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 207/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_207_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_207_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 220/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_220_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_220_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 19665/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_19665_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_19665_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_NA.txt &


#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 2/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1705/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1705_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1705_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1812/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1812_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1812_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6037/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6037_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6037_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7815/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7815_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7815_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5944/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5944_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5944_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 488/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_488_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_488_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1846/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1846_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1846_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 616/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_616_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_616_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 822/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_822_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_822_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 207/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_207_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_207_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 220/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_220_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_220_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 19665/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_19665_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_19665_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reorder_2_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 4/g' gpgpusim.config

sleep 30s
sed -i '178s/.*/-dram_page_num 7815/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7815_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7815_reorder_4_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reorder_4_NA.txt &

sleep 30s
sed -i '188s/.*/-group_cta_num 8/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 5944/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5944_reorder_8_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5944_reorder_8_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reorder_8_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reorder_8_NA.txt &

sleep 30s
sed -i '188s/.*/-group_cta_num 16/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 488/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_488_reorder_16_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_488_reorder_16_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reorder_16_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reorder_16_NA.txt &

sleep 30s
sed -i '188s/.*/-group_cta_num 4/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 1846/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1846_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1846_reorder_4_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_reorder_4_NA.txt &

sleep 30s
sed -i '188s/.*/-group_cta_num 43/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 616/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_616_reorder_43_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_616_reorder_43_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reorder_43_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reorder_43_NA.txt &

sleep 30s
sed -i '188s/.*/-group_cta_num 64/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 19665/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_19665_reorder_64_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_19665_reorder_64_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reorder_64_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reorder_64_NA.txt &



