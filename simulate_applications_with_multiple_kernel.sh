#! /bin/bash
  
source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config
sed -i '178s/.*/-dram_page_num -1/g' gpgpusim.config

sed -i '183s/.*/-page_access_filename "CFD_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 CFD | tee log_CFD_external_mem_28000_extreme_NA.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "CONS_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 CONS | tee log_CONS_external_mem_28000_extreme_NA.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "NW_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 NW | tee log_NW_external_mem_28000_extreme_NA.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "SAD_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_extreme_NA.txt &

sleep 30s
sed -i '183s/.*/-page_access_filename "SCAN_extreme_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_extreme_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 637/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_637_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_637_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 722/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_722_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_722_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 807/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_807_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_807_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 386/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_386_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_386_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 437/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_437_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_437_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 489/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_489_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_489_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 1/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 1/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 637/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_637_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_637_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 722/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_722_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_722_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 807/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_807_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_807_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 386/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_386_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_386_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 437/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_437_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_437_flip++_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 489/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_489_flip++_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_489_flip++_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 1/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 637/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_637_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_637_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 722/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_722_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_722_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 807/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_807_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_807_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 386/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_386_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_386_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 437/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_437_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_437_etc_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 489/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_489_etc_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_489_etc_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 0/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 1/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 637/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_637_jit_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_637_jit_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 722/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_722_jit_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_722_jit_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 807/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_807_jit_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_807_jit_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 386/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_386_jit_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_386_jit_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 437/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_437_jit_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_437_jit_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 489/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_489_jit_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_489_jit_NA.txt &

sleep 30s
sed -i '174s/.*/-flip_CTA_issue_order 0/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
sed -i '189s/.*/-optimal_performance 1/g' gpgpusim.config
sed -i '190s/.*/-enable_evict_reverse 0/g' gpgpusim.config
sed -i '193s/.*/-enable_proactive_evict 0/g' gpgpusim.config
sed -i '194s/.*/-enable_mem_compression 0/g' gpgpusim.config
sed -i '196s/.*/-enable_random_issue_CTA 0/g' gpgpusim.config
sed -i '197s/.*/-enable_jit_issue_CTA 0/g' gpgpusim.config

sed -i '178s/.*/-dram_page_num 637/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_637_oracle_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_637_oracle_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 722/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_722_oracle_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_722_oracle_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 807/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SAD_807_oracle_NA"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_external_mem_28000_807_oracle_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 386/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_386_oracle_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_386_oracle_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 437/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_437_oracle_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_437_oracle_NA.txt &

sleep 30s
sed -i '178s/.*/-dram_page_num 489/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SCAN_489_oracle_NA"/g' gpgpusim.config
./mainApp -sing0 SCAN | tee log_SCAN_external_mem_28000_489_oracle_NA.txt &
