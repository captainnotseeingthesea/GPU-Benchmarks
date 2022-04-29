#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 129/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_129"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_129.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 194/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_194"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_194.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599.txt &

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 129/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_129_reorder"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_129_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 194/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_194_reorder"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_194_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_reorder"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_reorder"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_reorder.txt &

#sleep 30s
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num 87/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "MRI-Q_87"/g' gpgpusim.config
#./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_87.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 50/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "MRI-Q_50"/g' gpgpusim.config
#./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_50.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 131/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "MRI-Q_131"/g' gpgpusim.config
#./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_131.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SPMV_3773"/g' gpgpusim.config
#./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SPMV_5660"/g' gpgpusim.config
#./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BFS_305"/g' gpgpusim.config
#./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BFS_458"/g' gpgpusim.config
#./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "HOSTSPOT_385"/g' gpgpusim.config
#./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_385.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "HOTSPOT_578"/g' gpgpusim.config
#./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FFT_514"/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_514.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FFT_771"/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 4933/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "PATHFINDER_4933"/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_4933.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 7400/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "PATHFINDER_7400"/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_7400.txt &

#sleep 30s
#sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
	#sed -i '183s/.*/-page_access_filename "SRADV2_12291"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_12291.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_18436"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436.txt &

#sleep 30s
#sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DS_3715"/g' gpgpusim.config
#./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DS_5572"/g' gpgpusim.config
#./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BLK_4884"/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BLK_7326"/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BP_1154"/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BP_1731"/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731.txt &

#----------------------------------------------------------------------------------------------------

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 2/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 129/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_129_reorder_2"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_129_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 194/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_194_reorder_2"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_194_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_reorder_2"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_reorder_2"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_reorder_2.txt &

sed -i '178s/.*/-dram_page_num 50/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_50_reorder_2"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_50_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 87/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_87_reorder_2"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_87_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 131/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_131_reorder_2"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_131_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_reorder_2"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reorder_2"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 230/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_230_reorder_2"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_230_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_reorder_2"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reorder_2"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385_reorder_2"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_385_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reorder_2"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514_reorder_2"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_514_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reorder_2"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4933/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_4933_reorder_2"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_4933_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7400/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_7400_reorder_2"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_7400_reorder_2.txt &

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

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_reorder_2"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reorder_2"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154_reorder_2"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154_reorder_2.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_reorder_2"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_reorder_2.txt &

#----------------------------------------------------------------------------------

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 4/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 129/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_129_reorder_4"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_129_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 194/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_194_reorder_4"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_194_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_reorder_4"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_reorder_4"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_reorder_4.txt &

sed -i '178s/.*/-dram_page_num 50/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_50_reorder_4"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_50_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 87/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_87_reorder_4"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_87_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 131/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_131_reorder_4"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_28000_131_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_reorder_4"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reorder_4"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 230/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_230_reorder_4"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_230_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_reorder_4"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reorder_4"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385_reorder_4"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_385_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reorder_4"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514_reorder_4"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_514_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reorder_4"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4933/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_4933_reorder_4"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_4933_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7400/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_7400_reorder_4"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_7400_reorder_4.txt &

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

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_reorder_4"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reorder_4"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154_reorder_4"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154_reorder_4.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_reorder_4"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_reorder_4.txt &


