#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 6792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6792_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6792_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8792_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8792_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6687/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6687_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6687_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 22123/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_22123_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_22123_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reorder_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 6792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_6792_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_6792_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7169/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_7169_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_7169_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8792/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_8792_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_8792_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 9280/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_9280_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_9280_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 6687/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_6687_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_6687_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7058/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_7058_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_7058_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 22123/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_22123_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_22123_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_NA.txt &

