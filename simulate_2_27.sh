#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '182s/.*/-enable_record_page_access 1/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 87/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_87"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_87.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 131/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_131"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_131.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_3773.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_5660.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 258/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_258"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_258.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 387/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_387"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_387.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 257/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "TRD_257"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_257.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 386/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "TRD_386"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_386.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_305.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_458.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_1000_385.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_1000_578.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_1000_514.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_1000_771.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4933/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_4933"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000_4933.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7400/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_7400"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000_7400.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_12291"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000_12291.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000_18436.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_1000_3715.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_1000_5572.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_1000_4884.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_1000_7326.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_1000_1154.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_1000_1731.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_extreme"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "MRI-Q_extreme"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "SPMV_extreme"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "SPMV_extreme"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "RED_extreme"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "RED_extreme"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "TRD_extreme"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "TRD_extreme"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BFS_extreme"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BFS_extreme"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "HOSTSPOT_extreme"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "HOTSPOT_extreme"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "FFT_extreme"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "FFT_extreme"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "PATHFINDER_extreme"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "PATHFINDER_extreme"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "SRADV2_extreme"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "SRADV2_extreme"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "3DS_extreme"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "3DS_extreme"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BLK_extreme"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BLK_extreme"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BP_extreme"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_1000_extreme.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "BP_extreme"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_1000_extreme.txt &

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 87/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_87_reorder"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_87_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 131/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q_131_reorder"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_131_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_reorder"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_3773_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reorder"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_5660_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 258/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_258_reorder"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_258_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 387/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_387_reorder"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_387_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 257/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "TRD_257_reorder"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_257_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 386/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "TRD_386_reorder"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_386_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_reorder"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_305_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reorder"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_458_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 385/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOSTSPOT_385_reorder"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_1000_385_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reorder"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_1000_578_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 514/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_514_reorder"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_1000_514_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reorder"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_1000_771_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4933/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_4933_reorder"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000_4933_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7400/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_7400_reorder"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000_7400_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 12291/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_12291_reorder"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000_12291_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reorder"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000_18436_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_reorder"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_1000_3715_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reorder"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_1000_5572_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_reorder"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_1000_4884_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reorder"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_1000_7326_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154_reorder"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_1000_1154_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_reorder"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_1000_1731_reorder.txt &


