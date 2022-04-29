#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2/setup_environment debug

sed -i '155s/.*/-visualizer_outputfile "LUD_LUD_Space"/g' gpgpusim.config
./mainApp -apps LUD LUD | tee log_LUD_LUD_Spatial_Multiplex.txt &

sleep 20s
sed -i '155s/.*/-visualizer_outputfile "HOTSPOT_HOTSPOT_Space"/g' gpgpusim.config
./mainApp -apps HOTSPOT HOTSPOT | tee log_HOTSPOT_HOTSPOT_Spatial_Multiplex.txt &

sleep 20s
sed -i '155s/.*/-visualizer_outputfile "PATHFINDER_PATHFINDER_Space"/g' gpgpusim.config
./mainApp -apps PATHFINDER PATHFINDER | tee log_PATHFINDER_PATHFINDER_Spatial_Multiplex.txt &

sleep 20s
sed -i '155s/.*/-visualizer_outputfile "NW_NW_Space"/g' gpgpusim.config
./mainApp -apps NW NW | tee log_NW_NW_Spatial_Multiplex.txt &

sleep 20s
sed -i '155s/.*/-visualizer_outputfile "SRADV2_SRADV2_Space"/g' gpgpusim.config
./mainApp -apps SRADV2 SRADV2 | tee log_SRADV2_SRADV2_Spatial_Multiplex.txt &

sleep 20s
sed -i '155s/.*/-visualizer_outputfile "BFS2_BFS2_Space"/g' gpgpusim.config
./mainApp -apps BFS2 BFS2 | tee log_BFS2_BFS2_Spatial_Multiplex.txt &

sleep 20s
sed -i '155s/.*/-visualizer_outputfile "NN_NN_Space"/g' gpgpusim.config
./mainApp -apps NN NN | tee log_NN_NN_Spatial_Multiplex.txt &

sleep 20s
sed -i '155s/.*/-visualizer_outputfile "SAD_SAD_Space"/g' gpgpusim.config
./mainApp -apps SAD SAD | tee log_SAD_SAD_Spatial_Multiplex.txt &
