#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

#sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SPMV_5660_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SPMV_6415_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SPMV_7169_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BLK_7326_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BLK_8303_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BLK_9280_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DS_5572_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 6315/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DS_6315_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6315_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DS_7058_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BFS_458_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 519/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BFS_519_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_519_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 580/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BFS_580_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_580_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "HOTSPOT_578_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "HOTSPOT_655_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "HOTSPOT_732_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FFT_771_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FFT_873_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FFT_976_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_18436_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_jit_NA.txt &

#sleep 30s
#sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_20894_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "SRADV2_23352_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1468/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LPS_1468_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1468_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1664/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LPS_1664_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1664_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1860/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LPS_1860_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1860_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1705/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "PATHFINDER_1705_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1705_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 674/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DCONV_674_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 3DCONV | tee log_3DCONV_external_mem_28000_674_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 764/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DCONV_764_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 3DCONV | tee log_3DCONV_external_mem_28000_764_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 854/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "3DCONV_854_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 3DCONV | tee log_3DCONV_external_mem_28000_854_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 384/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FWT_384_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_384_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 436/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FWT_436_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_436_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 486/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "FWT_486_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_486_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BP_1154_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BP_1731_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1846/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "BP_1846_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_external_mem_28000_1846_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 866/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "GUPS_866_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_866_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 981/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "GUPS_981_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_981_jit_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "GUPS_1039_jit_NA"/g' gpgpusim.config
#./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_jit_NA.txt &

sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_jit_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_jit_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2192/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2192_jit_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2192_jit_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_jit_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_jit_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2192/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2192_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2192_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 866/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_866_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_866_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 981/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_981_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_981_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1039_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LUD_extreme"/g' gpgpusim.config
./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_extreme.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 866/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_866_flip_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_866_flip_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 981/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_981_flip_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_981_flip_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1039_flip_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_flip_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_flip_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_flip_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_flip_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_flip_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2192/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2192_flip_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2192_flip_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 866/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_866_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_866_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 981/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_981_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_981_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1039_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1961/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1961_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1961_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 2192/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_2192_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_2192_flip++_NA.txt &
