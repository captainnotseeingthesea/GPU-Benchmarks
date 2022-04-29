#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config

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
sed -i '178s/.*/-dram_page_num 1762/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1762_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1762_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1860/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1860_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1860_reorder_NA.txt &

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
sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1039_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1097/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1097_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1097_reorder_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
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
sed -i '178s/.*/-dram_page_num 1762/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1762_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1762_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1860/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1860_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1860_NA.txt &

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
sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1039_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1097/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1097_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1097_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 979/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_979_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_979_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1468/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1468_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1468_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1566/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1566_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1566_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1664/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1664_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1664_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1762/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1762_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1762_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1860/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1860_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1860_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 577/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_577_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_577_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 866/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_866_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_866_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 924/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_924_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_924_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 981/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_981_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_981_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1039_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_reorder_evict_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1097/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1097_reorder_evict_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1097_reorder_evict_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 1/g' gpgpusim.config
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
sed -i '178s/.*/-dram_page_num 1762/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1762_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1762_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1860/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS_1860_NA"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_28000_1860_NA.txt &

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
sed -i '178s/.*/-dram_page_num 1039/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1039_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1039_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1097/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_1097_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_1097_NA.txt &

#----------------------------------------------------------------------------------------
sleep 30s
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_28000_extreme_NA.txt &



