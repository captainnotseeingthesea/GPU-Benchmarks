#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 1066/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1066_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1066_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1599/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER_1599_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_28000_1599_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3773/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_3773_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_3773_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5660/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV_5660_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_28000_5660_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_4884_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_28000_7326_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_3715_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_28000_5572_reorder_NA.txt &

sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_305_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_28000_458_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1154/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1154_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1154_reorder_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 1731/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP_1731_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_28000_1731_reorder_NA.txt &

sleep 30s
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 305/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_305_NA"/g' gpgpusim.config
./mainApp -sing0 BFS

sleep 30s
sed -i '178s/.*/-dram_page_num 458/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS_458_NA"/g' gpgpusim.config
./mainApp -sing0 BFS

sleep 30s
sed -i '178s/.*/-dram_page_num 4884/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_4884_NA"/g' gpgpusim.config
./mainApp -sing0 BLK

sleep 30s
sed -i '178s/.*/-dram_page_num 7326/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK_7326_NA"/g' gpgpusim.config
./mainApp -sing0 BLK

sleep 30s
sed -i '178s/.*/-dram_page_num 3715/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_3715_NA"/g' gpgpusim.config
./mainApp -sing0 3DS 

sleep 30s
sed -i '178s/.*/-dram_page_num 5572/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS_5572_NA"/g' gpgpusim.config
./mainApp -sing0 3DS

