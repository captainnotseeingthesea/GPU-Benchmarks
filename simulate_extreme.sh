#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config

sed -i '183s/.*/-page_access_filename "SPMV_extreme"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BLK_extreme"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "3DS_extreme"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BFS_extreme"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "HOTSPOT_extreme"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "FFT_extreme"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "SRADV2_extreme"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "LPS_extreme"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "PATHFINDER_extreme"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "3DCONV_extreme"/g' gpgpusim.config
./mainApp -sing0 3DCONV | tee log_3DCONV_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "FWT_extreme"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BP_extreme"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "GUPS_extreme"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "LUD_extreme"/g' gpgpusim.config
./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_extreme.txt &

