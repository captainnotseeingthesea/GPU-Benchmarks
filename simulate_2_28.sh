#! /bin/bash

source ~/gpgpu-sim_distribution_V2.2_debug/setup_environment debug

sed -i '175s/.*/-reorder_CTA_issue_order 0/g' gpgpusim.config

sed -i '183s/.*/-page_access_filename "PATHFINDER"/g' gpgpusim.config
./mainApp -sing0 PATHFINDER &

sleep 30s
sed -i '183s/.*/-page_access_filename "SRADV2"/g' gpgpusim.config
./mainApp -sing0 SRADV2  &

sleep 30s
sed -i '183s/.*/-page_access_filename "3DS"/g' gpgpusim.config
./mainApp -sing0 3DS  &

sleep 30s
sed -i '183s/.*/-page_access_filename "BLK"/g' gpgpusim.config
./mainApp -sing0 BLK  &

sleep 30s
sed -i '183s/.*/-page_access_filename "BP"/g' gpgpusim.config
./mainApp -sing0 BP  &

sleep 30s
sed -i '183s/.*/-page_access_filename "LPS"/g' gpgpusim.config
./mainApp -sing0 LPS  &

sleep 30s
sed -i '183s/.*/-page_access_filename "FWT"/g' gpgpusim.config
./mainApp -sing0 FWT  &

sleep 30s
sed -i '183s/.*/-page_access_filename "BFS2"/g' gpgpusim.config
./mainApp -sing0 BFS2  &

sleep 30s
sed -i '183s/.*/-page_access_filename "HOTSPOT"/g' gpgpusim.config
./mainApp -sing0 HOTSPOT  &

sleep 30s
sed -i '183s/.*/-page_access_filename "FFT"/g' gpgpusim.config
./mainApp -sing0 FFT  &

sleep 30s
sed -i '183s/.*/-page_access_filename "GUPS"/g' gpgpusim.config
./mainApp -sing0 GUPS  &

sleep 30s
sed -i '183s/.*/-page_access_filename "SPMV"/g' gpgpusim.config
./mainApp -sing0 SPMV  &

sleep 30s
sed -i '183s/.*/-page_access_filename "BFS"/g' gpgpusim.config
./mainApp -sing0 BFS  &

sleep 30s
sed -i '183s/.*/-page_access_filename "MRI-Q"/g' gpgpusim.config
./mainApp -sing0 MRI-Q  &

sleep 30s
sed -i '183s/.*/-page_access_filename "TRD"/g' gpgpusim.config
./mainApp -sing0 TRD  &

sleep 30s
sed -i '183s/.*/-page_access_filename "RED"/g' gpgpusim.config
./mainApp -sing0 RED  &
