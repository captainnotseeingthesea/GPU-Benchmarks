#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

#sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
#sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
#sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
#sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
#sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
#sed -i '197s/.*/-enable_jit_issue_CTA 1/g' gpgpusim.config
#
#sed -i '178s/.*/-dram_page_num 52/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_52_jit"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_52_jit.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 59/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_59_jit"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_59_jit.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 66/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_66_jit"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_66_jit.txt &
#
#sleep 30s
#sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
#sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
#sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
#sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
#sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
#sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config
#
#sed -i '178s/.*/-dram_page_num 52/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_52_NA"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_52_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 59/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_59_NA"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_59_NA.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 66/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_66_NA"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_66_NA.txt &
#
#sleep 30s
#sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
#sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
#sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
#sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
#sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
#sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config
#
#sed -i '178s/.*/-dram_page_num 52/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_52_flip"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_52_flip.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 59/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_59_flip"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_59_flip.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 66/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_66_flip"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_66_flip.txt &
#
#sleep 30s
#sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
#sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
#sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
#sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
#sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
#sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config
#
#sed -i '178s/.*/-dram_page_num 52/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_52_flip++"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_52_flip++.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 59/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_59_flip++"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_59_flip++.txt &
#
#sleep 30s
#sed -i '178s/.*/-dram_page_num 66/g' gpgpusim.config
#sed -i '183s/.*/-page_access_filename "LUD_66_flip++"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_66_flip++.txt &

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 52/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LUD_52_etc"/g' gpgpusim.config
./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_52_etc.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 59/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LUD_59_etc"/g' gpgpusim.config
./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_59_etc.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 66/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LUD_66_etc"/g' gpgpusim.config
./mainApp -sing0 LUD | tee log_LUD_external_mem_28000_66_etc.txt &
