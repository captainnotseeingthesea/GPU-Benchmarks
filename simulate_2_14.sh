#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '155s/.*/-visualizer_outputfile "PATHFINDER_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "PATHFINDER"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER | tee log_PATHFINDER_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "SRADV2_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "SRADV2"/g' gpgpusim.config
./mainApp -sing0 SRADV2 | tee log_SRADV2_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "3DS_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "3DS"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BLK_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BLK"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BP_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BP"/g' gpgpusim.config
./mainApp -sing0 BP | tee log_BP_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "LPS_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "LPS"/g' gpgpusim.config
./mainApp -sing0 LPS | tee log_LPS_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FWT"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BFS2_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "BFS2"/g' gpgpusim.config
./mainApp -sing0 BFS2 | tee log_BFS2_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "HOTSPOT_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "HOTSPOT"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT | tee log_HOTSPOT_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FFT_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "FFT"/g' gpgpusim.config
./mainApp -sing0 FFT | tee log_FFT_external_mem_1000_invalidateL2_extreme.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS_1000_invalidateL2_extreme"/g' gpgpusim.config
sed -i '183s/.*/-page_access_filename "GUPS"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_external_mem_1000_invalidateL2_extreme.txt &

