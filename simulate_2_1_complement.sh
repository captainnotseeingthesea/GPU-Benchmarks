#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

#sed -i '155s/.*/-visualizer_outputfile "FFT_1000_external_latency_21"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_external_mem_21.txt &
#
#sleep 60s
#
#sed -i '155s/.*/-visualizer_outputfile "FFT_1000_external_latency_reorder_21"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_external_mem_reorder_21.txt &
#
#
#
#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "3DS_1000_external_latency"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#./mainApp -sing0 3DS | tee log_3DS_external_mem.txt &
#
#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "3DS_1000_external_latency_reorder"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 3DS | tee log_3DS_external_mem_reorder.txt &
#
#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "BLK_1000_external_latency"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem.txt &
#
#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "BLK_1000_external_latency_reorder"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 BLK | tee log_BLK_external_mem_reorder.txt &
#
#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "BP_1000_external_latency"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_external_mem.txt &
#
#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "BP_1000_external_latency_reorder"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_external_mem_reorder.txt &
#
#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "GUPS_1000_external_latency_21"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#./mainApp -sing0 GUPS | tee log_GUPS_external_mem_21.txt &
#
#sleep 60s
#
#sed -i '155s/.*/-visualizer_outputfile "GUPS_1000_external_latency_reorder_21"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 GUPS | tee log_GUPS_external_mem_reorder_21.txt &
#
#sleep 60s

sed -i '155s/.*/-visualizer_outputfile "LPS_1000_external_latency_21_wt"/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_21_wt.txt &

sleep 60s

sed -i '155s/.*/-visualizer_outputfile "LPS_1000_external_latency_reorder_21_wt"/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_reorder_21_wt.txt &

#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "FWT_1000_external_latency"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem.txt &
#
#sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "FWT_1000_external_latency_reorder"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 FWT | tee log_FWT_external_mem_reorder.txt &
