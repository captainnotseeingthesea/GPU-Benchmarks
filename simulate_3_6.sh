#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_reorder"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_reorder"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_reorder"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reorder"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_reorder"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_reorder"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reorder"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reorder.txt &

#sleep 30s
#sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_12291_reorder"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291_reorder.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_18436_reorder"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reorder.txt &

#-------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config

#sleep 30s
#sed -i '183s/.*/-page_access_filename "SRADV2_extreme"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "3DS_extreme"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_extreme.txt &

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_12291"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_18436"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660.txt &


#----------------------------------------------------------------------------------------------------

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 2/g' gpgpusim.config

#sleep 30s
#sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_12291_reorder_2"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291_reorder_2.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_18436_reorder_2"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_reorder_2"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reorder_2"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reorder_2.txt &

#----------------------------------------------------------------------------------

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 4/g' gpgpusim.config

#sleep 30s
#sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_12291_reorder_4"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291_reorder_4.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_18436_reorder_4"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_reorder_4"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reorder_4"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reorder_4.txt &

#----------------------------------------------------------------------------------

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 8/g' gpgpusim.config

sleep 30s
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_reorder_8"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305_reorder_8.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reorder_8"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reorder_8.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385_reorder_8"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_385_reorder_8.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reorder_8"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reorder_8.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514_reorder_8"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_514_reorder_8.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reorder_8"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reorder_8.txt &
