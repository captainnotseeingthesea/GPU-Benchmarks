#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '155s/.*/-visualizer_outputfile "BFS2_1000_external_latency_21_wt"/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_21_wt.txt &

sleep 60s

sed -i '155s/.*/-visualizer_outputfile "BFS2_1000_external_latency_reorder_21_wt"/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_reorder_21_wt.txt &



sleep 60s

sed -i '155s/.*/-visualizer_outputfile "HOTSPOT_1000_external_latency_21"/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_21.txt &

sleep 60s

sed -i '155s/.*/-visualizer_outputfile "HOTSPOT_1000_external_latency_reorder_21"/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_reorde_21.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "PATHFINDER_1000_external_latency"/g' gpgpusim.config
sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem.txt &

sleep 60s

#sed -i '155s/.*/-visualizer_outputfile "PATHFINDER_1000_external_latency_reorder"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_reorder.txt &

#sleep 60s
#
#sed -i '155s/.*/-visualizer_outputfile "SRADV2_1000_external_latency"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem.txt &

#sleep 60s
#
#sed -i '155s/.*/-visualizer_outputfile "SRADV2_1000_external_latency_reorder"/g' gpgpusim.config
#sed -i '175s/.*/-reorder_CTA_issue_order 1/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_reorder.txt &

