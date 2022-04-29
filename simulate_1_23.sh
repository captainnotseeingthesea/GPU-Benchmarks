#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '155s/.*/-visualizer_outputfile "3DS_3DS_Time"/g' gpgpusim.config
./mainApp -apps 3DS 3DS | tee log_3DS_3DS_Time_Multiplex.txt &

sleep 60s

sed -i '155s/.*/-visualizer_outputfile "BLK_BLK_Time"/g' gpgpusim.config
./mainApp -apps BLK BLK | tee log_BLK_BLK_Time_Multiplex.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "3DS"/g' gpgpusim.config
./mainApp -sing0 3DS | tee log_3DS_V2.txt &

sleep 60s
sed -i '155s/.*/-visualizer_outputfile "BLK"/g' gpgpusim.config
./mainApp -sing0 BLK | tee log_BLK_V2.txt &

sleep 60s
sed -i '169s/.*/-stream_num 3/g' gpgpusim.config
sed -i '170s/.*/-sm_num_per_stream "0,15,15"/g' gpgpusim.config
sed -i '155s/.*/-visualizer_outputfile "3DS_3DS_Space"/g' gpgpusim.config
./mainApp -apps 3DS 3DS | tee log_3DS_3DS_Spatial_Multiplex.txt &

sleep 60s

sed -i '155s/.*/-visualizer_outputfile "BLK_BLK_Space"/g' gpgpusim.config
./mainApp -apps BLK BLK | tee log_BLK_BLK_Spatial_Multiplex.txt &


