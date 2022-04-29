#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-load_page_latency 42000/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config

sed -i '183s/.*/-page_access_filename "FFT_42000_873_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_42000_873_baseline_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 56000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_56000_873_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_56000_873_baseline_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 70000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_70000_873_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_70000_873_baseline_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-load_page_latency 42000/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 873/g' gpgpusim.config

sed -i '183s/.*/-page_access_filename "FFT_42000_873_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_42000_873_flip++_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 56000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_56000_873_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_56000_873_flip++_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 70000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_70000_873_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_70000_873_flip++_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-load_page_latency 42000/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config

sed -i '183s/.*/-page_access_filename "FFT_42000_976_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_42000_976_baseline_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 56000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_56000_976_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_56000_976_baseline_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 70000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_70000_976_baseline_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_70000_976_baseline_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '179s/.*/-load_page_latency 42000/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 976/g' gpgpusim.config

sed -i '183s/.*/-page_access_filename "FFT_42000_976_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_42000_976_flip++_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 56000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_56000_976_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_56000_976_flip++_NA.txt &

sleep 30s
sed -i '179s/.*/-load_page_latency 70000/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_70000_976_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_70000_976_flip++_NA.txt &
