#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 2/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 979/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_979_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_979_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1468/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1468_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1468_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1566/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1566_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1566_reorder_2_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1664/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1664_reorder_2_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1664_reorder_2_NA.txt &

#----------------------------------------------------------------------------------------------------
sed -i '188s/.*/-group_cta_num 4/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 979/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_979_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_979_reorder_4_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1468/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1468_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1468_reorder_4_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1566/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1566_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1566_reorder_4_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1664/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1664_reorder_4_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1664_reorder_4_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_extreme_NA.txt &

