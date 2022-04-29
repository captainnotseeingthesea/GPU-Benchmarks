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
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 129/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_129_reorder"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_129_reorder.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 194/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED_194_reorder"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_28000_194_reorder.txt &

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
