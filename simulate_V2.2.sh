#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

#sed -i 's/#-flip_CTA_issue_order/-flip_CTA_issue_order/g' gpgpusim.config
#sed -i 's/#-reorder_CTA_issue_order/-reorder_CTA_issue_order/g' gpgpusim.config
#sed -i 's/#-l2_prioritize_store/-l2_prioritize_store/g' gpgpusim.config
#
#sed -i '155s/.*/-visualizer_outputfile "LUD_reorder"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_reorder_V2_2.txt
#sed -i '155s/.*/-visualizer_outputfile "HOTSPOT_reorder"/g' gpgpusim.config
#./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_reorder_V2_2.txt
#sed -i '155s/.*/-visualizer_outputfile "PATHFINDER_reorder"/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_reorder_V2_2.txt
#sed -i '155s/.*/-visualizer_outputfile "NW_reorder"/g' gpgpusim.config
#./mainApp -sing0 NW | tee log_NW_reorder_V2_2.txt
#sed -i '155s/.*/-visualizer_outputfile "SRADV2_reorder"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_reorder_V2_2.txt
#sed -i '155s/.*/-visualizer_outputfile "BFS2_reorder"/g' gpgpusim.config
#./mainApp -sing0 BFS2 | tee log_BFS2_reorder_V2_2.txt
#sed -i '155s/.*/-visualizer_outputfile "NN_reorder"/g' gpgpusim.config
#./mainApp -sing0 NN | tee log_NN_reorder_V2_2.txt
#sed -i '155s/.*/-visualizer_outputfile "SAD_reorder"/g' gpgpusim.config
#./mainApp -sing0 SAD | tee log_SAD_reorder_V2_2.txt
#
#sed -i 's/-flip_CTA_issue_order/#-flip_CTA_issue_order/g' gpgpusim.config
#sed -i 's/-reorder_CTA_issue_order/#-reorder_CTA_issue_order/g' gpgpusim.config
#sed -i 's/-l2_prioritize_store/#-l2_prioritize_store/g' gpgpusim.config
#
#sed -i '155s/.*/-visualizer_outputfile "LUD"/g' gpgpusim.config
#./mainApp -sing0 LUD | tee log_LUD_V2.txt
#sed -i '155s/.*/-visualizer_outputfile "HOTSPOT"/g' gpgpusim.config
#./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_V2.txt
#sed -i '155s/.*/-visualizer_outputfile "PATHFINDER"/g' gpgpusim.config
#./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_V2.txt
#sed -i '155s/.*/-visualizer_outputfile "NW_reorder"/g' gpgpusim.config
#./mainApp -sing0 NW | tee log_NW_V2.txt
#sed -i '155s/.*/-visualizer_outputfile "SRADV2"/g' gpgpusim.config
#./mainApp -sing0 SRADV2 | tee log_SRADV2_V2.txt
#sed -i '155s/.*/-visualizer_outputfile "BFS2"/g' gpgpusim.config
#./mainApp -sing0 BFS2 | tee log_BFS2_V2.txt
sed -i '155s/.*/-visualizer_outputfile "NN"/g' gpgpusim.config
./mainApp -sing0 NN | tee log_NN_V2.txt
sed -i '155s/.*/-visualizer_outputfile "SAD"/g' gpgpusim.config
./mainApp -sing0 SAD | tee log_SAD_V2.txt
