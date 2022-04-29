#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_21_1000.txt &

./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_21_1000.txt &

./mainApp -sing0 FFT | tee log_FFT_external_mem_21_1000.txt &

/mainApp -sing0 GUPS | tee log_GUPS_external_mem_21_1000.txt &

sleep 60s
sed -i '178s/.*/-dram_address_width 22/g' gpgpusim.config

./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000.txt &

./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000.txt &

./mainApp -sing0 3DS | tee log_3DS_external_mem_1000.txt &

./mainApp -sing0 BLK | tee log_BLK_external_mem_1000.txt &

./mainApp -sing0 BP | tee log_BP_external_mem_1000.txt &

./mainApp -sing0 LPS | tee log_LPS_external_mem_1000.txt &

./mainApp -sing0 FWT | tee log_FWT_external_mem_1000.txt &

sleep 60s
sed -i '179s/.*/-external_mem_latency 2000/g' gpgpusim.config

./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_2000.txt &

./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_2000.txt &

./mainApp -sing0 3DS | tee log_3DS_external_mem_2000.txt &

./mainApp -sing0 BLK | tee log_BLK_external_mem_2000.txt &

./mainApp -sing0 BP | tee log_BP_external_mem_2000.txt &

./mainApp -sing0 LPS | tee log_LPS_external_mem_2000.txt &

./mainApp -sing0 FWT | tee log_FWT_external_mem_2000.txt &

sleep 60s
sed -i '178s/.*/-dram_address_width 21/g' gpgpusim.config

./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_21_2000.txt &

./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_21_2000.txt &

./mainApp -sing0 FFT | tee log_FFT_external_mem_21_2000.txt &

/mainApp -sing0 GUPS | tee log_GUPS_external_mem_21_2000.txt &

sleep 60s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_reorder_21_2000.txt &

./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_reorder_21_2000.txt &

./mainApp -sing0 FFT | tee log_FFT_external_mem_reorder_21_2000.txt &

/mainApp -sing0 GUPS | tee log_GUPS_external_mem_reorder_21_2000.txt &

sleep 60s
sed -i '178s/.*/-dram_address_width 22/g' gpgpusim.config

./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_reorder_2000.txt &

./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_reorder_2000.txt &

./mainApp -sing0 3DS | tee log_3DS_external_mem_reorder_2000.txt &

./mainApp -sing0 BLK | tee log_BLK_external_mem_reorder_2000.txt &

./mainApp -sing0 BP | tee log_BP_external_mem_reorder_2000.txt &

./mainApp -sing0 LPS | tee log_LPS_external_mem_reorder_2000.txt &

./mainApp -sing0 FWT | tee log_FWT_external_mem_reorder_2000.txt &

sleep 60s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 3000/g' gpgpusim.config

./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_3000.txt &

./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_3000.txt &

./mainApp -sing0 3DS | tee log_3DS_external_mem_3000.txt &

./mainApp -sing0 BLK | tee log_BLK_external_mem_3000.txt &

./mainApp -sing0 BP | tee log_BP_external_mem_3000.txt &

./mainApp -sing0 LPS | tee log_LPS_external_mem_3000.txt &

./mainApp -sing0 FWT | tee log_FWT_external_mem_3000.txt &

sleep 60s
sed -i '178s/.*/-dram_address_width 21/g' gpgpusim.config

./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_21_3000.txt &

./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_21_3000.txt &

./mainApp -sing0 FFT | tee log_FFT_external_mem_21_3000.txt &

/mainApp -sing0 GUPS | tee log_GUPS_external_mem_21_3000.txt &

sleep 60s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_reorder_21_3000.txt &

./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_reorder_21_3000.txt &

./mainApp -sing0 FFT | tee log_FFT_external_mem_reorder_21_3000.txt &

/mainApp -sing0 GUPS | tee log_GUPS_external_mem_reorder_21_3000.txt &

sleep 60s
sed -i '178s/.*/-dram_address_width 22/g' gpgpusim.config

./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_reorder_3000.txt &

./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_reorder_3000.txt &

./mainApp -sing0 3DS | tee log_3DS_external_mem_reorder_3000.txt &

./mainApp -sing0 BLK | tee log_BLK_external_mem_reorder_3000.txt &

./mainApp -sing0 BP | tee log_BP_external_mem_reorder_3000.txt &

./mainApp -sing0 LPS | tee log_LPS_external_mem_reorder_3000.txt &

./mainApp -sing0 FWT | tee log_FWT_external_mem_reorder_3000.txt &
