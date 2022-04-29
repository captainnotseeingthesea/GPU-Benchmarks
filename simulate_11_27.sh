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
sed -i '183s/.*/-page_access_filename "SPMV_5660_profile_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_profile_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6415/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6415_profile_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6415_profile_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_profile_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_profile_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_profile_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_profile_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8303/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8303_profile_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8303_profile_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_profile_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_profile_NA.txt &

#sleep 30s
#sed -i '199s/.*/-enable_profile_issue_CTA 0/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_extreme"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_extreme.txt &
