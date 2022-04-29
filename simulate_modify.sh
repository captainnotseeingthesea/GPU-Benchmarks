#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sleep 30s
sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse_NA.txt &

#--------------------------------------------------------------------------------------------

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse++_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse++_NA.txt &

#-----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse_etc_NA.txt &

#----------------------------------------------------------------------------------------------------
sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 578/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_578_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_578_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 655/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_655_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_655_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 732/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT_732_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_28000_732_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_771_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_873_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_873_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_976_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_28000_976_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 18436/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 1/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_18436_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_18436_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 20894/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_20894_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_20894_reverse++_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 23352/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2_23352_reverse++_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_28000_23352_reverse++_etc_NA.txt &

