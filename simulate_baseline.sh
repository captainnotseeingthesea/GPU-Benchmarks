#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_baseline_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_baseline_NA.txt &

#-----------------------------------------------------------------------------------------------------------------------------------
sleep 30s

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_etc_NA.txt &

#--------------------------------------------------------------------------------------------------------

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse_NA.txt &

#--------------------------------------------------------------------------------------------

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse++_NA.txt &

#-----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse_etc_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse++_etc_NA.txt &

#---------------------------------------------------------------------------------------------------------------
sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6315_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_519_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_580_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_flip_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_flip_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_flip_etc_NA.txt &





