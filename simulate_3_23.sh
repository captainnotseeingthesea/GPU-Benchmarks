#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 979/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_979_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_979_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1468/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1468_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1468_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1566/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1566_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1566_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1664/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1664_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1664_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 577/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_577_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_577_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 866/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_866_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_866_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 924/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_924_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_924_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 981/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_981_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_981_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8193/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_8193_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_8193_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 12290/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_12290_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_12290_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 13109/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_13109_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_13109_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 13929/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_13929_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_13929_reorder_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 979/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_979_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_979_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1468/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1468_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1468_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1566/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1566_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1566_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1664/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1664_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1664_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 577/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_577_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_577_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 866/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_866_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_866_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 924/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_924_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_924_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 981/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_981_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_981_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 8193/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_8193_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_8193_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 12290/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_12290_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_12290_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 13109/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_13109_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_13109_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 13929/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT_13929_NA"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_28000_13929_NA.txt &




