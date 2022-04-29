#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug
#make clean && make
#
#sed -i '155s/.*/-visualizer_outputfile "BP"/g' gpgpusim.config
#./mainApp -sing0 BP | tee log_BP_V2.txt &
#
#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "FFT"/g' gpgpusim.config
#./mainApp -sing0 FFT | tee log_FFT_V2.txt &
#
#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "LPS"/g' gpgpusim.config
#./mainApp -sing0 LPS | tee log_LPS_V2.txt &
#
#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "LIB"/g' gpgpusim.config
#./mainApp -sing0 LIB | tee log_LIB_V2.txt &

#sleep 60s
#sed -i '155s/.*/-visualizer_outputfile "JPEG"/g' gpgpusim.config
#./mainApp -sing0 JPEG | tee log_JPEG_V2.txt &

#sleep 60s
sed -i '155s/.*/-visualizer_outputfile "CONS"/g' gpgpusim.config
./mainApp -sing0 CONS | tee log_CONS_V2.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "FWT"/g' gpgpusim.config
./mainApp -sing0 FWT | tee log_FWT_V2.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "GUPS"/g' gpgpusim.config
./mainApp -sing0 GUPS | tee log_GUPS_V2.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "3DS_3DS_Time"/g' gpgpusim.config
./mainApp -apps 3DS 3DS | tee log_3DS_3DS_Time_Multiplex_V2.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "3DS_3DS_Prioritize"/g' gpgpusim.config
sed -i '176s/.*/-prioritize_main_stream 1/g' gpgpusim.config
./mainApp -apps 3DS 3DS | tee log_3DS_3DS_Prioritize.txt &

