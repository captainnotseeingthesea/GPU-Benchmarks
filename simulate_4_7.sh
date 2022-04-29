#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '182s/.*/-enable_record_page_access 0/g' gpgpusim.config
sed -i '179s/.*/-external_mem_latency 28000/g' gpgpusim.config
sed -i '188s/.*/-group_cta_num 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config

sleep 30s
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_reorder_NA"/g' gpgpusim.config
./mainApp -sing0 FFT

#----------------------------------------------------------------------------------------------------
sleep 30s

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num 771/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT_771_NA"/g' gpgpusim.config
./mainApp -sing0 FFT


