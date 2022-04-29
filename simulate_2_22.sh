#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#sed -i '184s/.*/-reorder_CTA_issue_order_pool_size -1/g' gpgpusim.config
#sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config
#
#sed -i '155s/.*/-visualizer_outputfile "FWT_7000_1000"/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num 7000/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem_7000_1000.txt &
#
#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "FWT_6000_1000"/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num 6000/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem_6000_1000.txt &
#
#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "FWT_8000_1000"/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num 8000/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem_8000_1000.txt &
#
#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "GUPS_600_1000"/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num 600/g' gpgpusim.config
#./mainApp -sing0 GUPS | tee log_GUPS_external_mem_600_1000.txt &
#
#sleep 60s
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#
#sed -i '155s/.*/-visualizer_outputfile "GUPS_reorder_600_1000"/g' gpgpusim.config
#sed -i '178s/.*/-dram_page_num 600/g' gpgpusim.config
#./mainApp -sing0 GUPS | tee log_GUPS_external_mem_reorder_600_1000.txt &
#
#sleep 60s
#sed -i '178s/.*/-dram_page_num 8192/g' gpgpusim.config
#sed -i '184s/.*/-reorder_CTA_issue_order_pool_size 100/g' gpgpusim.config
#sed -i '155s/.*/-visualizer_outputfile "BLK_reorder_8192_1000_invalidateL2_100"/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem_reorder_8192_1000_invalidateL2_100.txt &

make clean
make

sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '182s/.*/-enable_record_page_access 1/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 1000/g' gpgpusim.config

sed -i '155s/.*/-visualizer_outputfile "SAD_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_1000_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "QTC_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "QTC"/g' gpgpusim.config
./mainApp -sing0 QTC | tee log_QTC_external_mem_1000_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "RED_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "RED"/g' gpgpusim.config
./mainApp -sing0 RED | tee log_RED_external_mem_1000_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "SCAN_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_1000_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "SRAD_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRAD"/g' gpgpusim.config
./mainApp -sing0 SRAD | tee log_SRAD_external_mem_1000_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "TRD_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "TRD"/g' gpgpusim.config
./mainApp -sing0 TRD | tee log_TRD_external_mem_1000_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BFS_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS"/g' gpgpusim.config
./mainApp -sing0 BFS | tee log_BFS_external_mem_1000_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "MRI-Q_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "MRI-Q"/g' gpgpusim.config
./mainApp -sing0 MRI-Q | tee log_MRI-Q_external_mem_1000_extreme.txt

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "SPMV_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SPMV"/g' gpgpusim.config
./mainApp -sing0 SPMV | tee log_SPMV_external_mem_1000_extreme.txt &
