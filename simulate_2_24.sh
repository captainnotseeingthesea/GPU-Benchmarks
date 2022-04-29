#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config

#sed -i '155s/.*/-visualizer_outputfile "QTC_extreme"/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "QTC"/g' gpgpusim.config
#./mainApp -sing0 QTC | tee log_QTC_external_mem_1000_extreme.txt &

#sleep 60s
sed -i '178s/.*/-dram_page_num 100/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "MRI-Q_100"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_100.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SPMV_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_extreme.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 4000/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SPMV_4000"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_4000.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 5000/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SPMV_5000"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_5000.txt &

sed -i '178s/.*/-dram_page_num 500/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SAD_500"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_1000_500.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 230/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "RED_230"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_230.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 300/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SCAN_300"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_1000_300.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 100/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "TRD_100"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "TRD"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_100.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 300/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "BFS_300"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_300.txt &

sleep 60s
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config

#sed -i '155s/.*/-visualizer_outputfile "QTC_extreme"/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "QTC"/g' gpgpusim.config
#./mainApp -sing0 QTC | tee log_QTC_external_mem_1000_extreme.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 100/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "MRI-Q_100_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_100_reorder.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 4000/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SPMV_4000_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_4000_reorder.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 5000/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SPMV_5000_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_5000_reorder.txt &

sed -i '178s/.*/-dram_page_num 500/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SAD_500_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_1000_500_reorder.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 230/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "RED_230_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_230_reorder.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 300/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "SCAN_300_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_1000_300_reorder.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 100/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "TRD_100_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "TRD"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_100_reorder.txt &

sleep 60s
sed -i '178s/.*/-dram_page_num 300/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "BFS_300_reorder"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_300_reorder.txt &
