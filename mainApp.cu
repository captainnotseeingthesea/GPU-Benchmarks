#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <cutil_inline.h>
#include <unistd.h>
#include "benchmark_common.h"
#include <iomanip>

struct app_data
{
	long streamid;
	char *app_name;
	bool flag;
	bool mode;

};


cudaStream_t *stream;
pthread_mutex_t mutexapp;

cudaEvent_t app1_local_event;
cudaEvent_t app2_local_event;
cudaEvent_t app3_local_event;
cudaEvent_t singleapp_local_event;

cudaEvent_t app1_global_event;
cudaEvent_t app2_global_event;
cudaEvent_t app3_global_event;

cudaEvent_t final_event;

int relaunch_count_1 = 1;
int relaunch_count_2 = 1;
int relaunch_count_3 = 1;

void callApp(char *app_name,cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag){
	if(strcmp(app_name,"VECTORADD")== 0)
		mainVectorAdd(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"VECTORADDONE")== 0)
		mainVectorAddOne(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"LUD")==0)
		main_LUD(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "HOTSPOT")==0)
		main_HOTSPOT(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "NW")== 0)
		main_NW(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "PATHFINDER")== 0)
		main_PATHFINDER(stream_app, mutexapp, flag); // has problems when running two apps concurrently
	else if(strcmp(app_name, "KMEANS")== 0) // can not run simultaneously due to synchronous symbol copy
	;
		// main_KMEANS(stream_app,mutexapp, flag);
	else if(strcmp(app_name, "SRADV1") == 0) // Has some problems
		main_SRADV1(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "SRADV2") == 0)
		main_SRADV2(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "BFS2") == 0)
		main_BFS2(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "NN") == 0)
		main_NN(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "SAD") == 0)
		main_SAD(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "3DS") == 0)
		main_threeDS(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "BLK") == 0)
		main_BlackScholes(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "BP") == 0)
		main_BP(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "CFD") == 0)
		main_cfd(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "CONS") == 0)
		main_CONS(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "FWT") == 0)
		main_FWT(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "FFT") == 0)
		main_fft(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "GUPS") == 0)
		main_gups(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "JPEG") == 0)
		main_JPEG(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "LPS") == 0)
		main_LPS(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "LIB") == 0)
		main_lib(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "LUH") == 0)
		main_lulesh(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "CN") == 0)
		main_CN(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "GRU") == 0)
		main_GRU(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "LSTM") == 0)
		main_LSTM(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"MUM") ==0)
		main_MUM(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"QTC") == 0)
		main_QTC(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"RED") ==0)
		main_RED(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"SC") ==0)
		main_streamcluster(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"SCAN") ==0)
		main_scan(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"SRAD") == 0)
		main_SRAD(stream_app, mutexapp, flag);
	else if(strcmp(app_name,"TRD") ==0)
		main_TRD(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "BFS") == 0)
		main_BFS(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "MRI-Q") == 0)
		main_mri_q(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "SPMV") == 0)
		main_SPMV(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "ATAX") == 0)
		main_ATAX(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "BICG") == 0)
		main_BICG(stream_app, mutexapp, flag);
	else if(strcmp(app_name, "3DCONV") == 0)
		main_3DCONV(stream_app, mutexapp, flag);
}

void *app_1(void *app_arg) 
{
	pthread_mutex_lock (&mutexapp);
	struct app_data *my_data;
	
	my_data = (struct app_data *) app_arg; 
	bool appflag = my_data->flag;
    long mystreamid = my_data->streamid;

    cutilSafeCall(cudaStreamCreate(&stream[mystreamid]));
    char *name = my_data->app_name;
	bool modeflag = my_data -> mode;
    start_app1:
    cutilSafeCall(cudaEventCreate(&app1_local_event));
    
	callApp(name,stream[mystreamid], &mutexapp, appflag);

    cutilSafeCall(cudaEventRecord(app1_local_event, stream[mystreamid]));
    cutilSafeCall(cudaEventRecord(app1_global_event, stream[mystreamid]));
    
    loop_back_1:
	if ((!modeflag && (cudaEventQuery(app1_local_event) == cudaSuccess) && (cudaEventQuery(app2_global_event) != cudaSuccess)) || (modeflag && (cudaEventQuery(app1_local_event) == cudaSuccess) && (cudaEventQuery(app2_global_event) != cudaSuccess) && (cudaEventQuery(app3_local_event) != cudaSuccess))) {
		printf("I am relaunching App-1 (App-1 ran for %d times till now)\n", relaunch_count_1);
		relaunch_count_1++;
		cudaEventDestroy(app1_local_event);
		goto start_app1;
	}
    
	if ((!modeflag && (cudaEventQuery(app1_global_event) == cudaSuccess) && (cudaEventQuery(app2_global_event) == cudaSuccess)) || (modeflag && (cudaEventQuery(app1_global_event) == cudaSuccess) && (cudaEventQuery(app2_global_event) == cudaSuccess) && (cudaEventQuery(app3_global_event) == cudaSuccess) ))  {
		cutilSafeCall(cudaEventRecord(final_event, 0));
		
		
		printf("Both Applications completed once from app1\n");
		printf("App-1 ran for %d times\n", relaunch_count_1);
		printf("App-2 ran for %d times\n", relaunch_count_2);
		if(modeflag)
			printf("App-3 ran for %d times\n", relaunch_count_3);

		pthread_exit((void*) mystreamid);
		
		return NULL;
	}
    goto loop_back_1;
}

void *app_2(void *app_arg) 
{
	pthread_mutex_lock (&mutexapp);
	struct app_data *my_data;
	
	my_data = (struct app_data *) app_arg;
	
    bool appflag = my_data->flag;
    long mystreamid = my_data->streamid;

    cutilSafeCall(cudaStreamCreate(&stream[mystreamid]));
    char *name = my_data->app_name;
	bool modeflag = my_data->mode;

    start_app2:
    cutilSafeCall(cudaEventCreate(&app2_local_event));
    
	callApp(name,stream[mystreamid], &mutexapp, appflag);
    
    cutilSafeCall(cudaEventRecord(app2_local_event, stream[mystreamid]));
    cutilSafeCall(cudaEventRecord(app2_global_event, stream[mystreamid]));
    
    loop_back_2:
	if ((!modeflag && (cudaEventQuery(app1_local_event) != cudaSuccess) && (cudaEventQuery(app2_global_event) == cudaSuccess)) || (modeflag && (cudaEventQuery(app1_local_event) != cudaSuccess) && (cudaEventQuery(app2_global_event) == cudaSuccess) && (cudaEventQuery(app3_local_event) != cudaSuccess))) {
		printf("I am relaunching App-2 (App-2 ran for %d times till now)\n", relaunch_count_2);
		relaunch_count_2++;
		cudaEventDestroy(app2_local_event);
		goto start_app2;
    }
	
    if ((!modeflag && (cudaEventQuery(app1_global_event) == cudaSuccess) && (cudaEventQuery(app2_global_event) == cudaSuccess)) || (modeflag && (cudaEventQuery(app1_global_event) == cudaSuccess) && (cudaEventQuery(app2_global_event) == cudaSuccess) && (cudaEventQuery(app3_global_event) == cudaSuccess)))  {
		
		cutilSafeCall(cudaEventRecord(final_event, 0));
		
		printf("Both Applications completed once from app2\n");
		printf("App-1 ran for %d times\n", relaunch_count_1);
		printf("App-2 ran for %d times\n", relaunch_count_2);
		if(modeflag)
			printf("App-3 ran for %d times\n", relaunch_count_3);
		pthread_exit((void*) mystreamid);
		
		
		return NULL;
	}
    goto loop_back_2;
}

void *app_3(void *app_arg) 
{
	pthread_mutex_lock (&mutexapp);
	struct app_data *my_data;
	
	my_data = (struct app_data *) app_arg; 
	bool appflag = my_data->flag;
    long mystreamid = my_data->streamid;

    cutilSafeCall(cudaStreamCreate(&stream[mystreamid]));
	printf("Hello from app3\n");
    char *name = my_data->app_name;
    start_app3:
    cutilSafeCall(cudaEventCreate(&app3_local_event));
    
	
	callApp(name,stream[mystreamid], &mutexapp, appflag);


    cutilSafeCall(cudaEventRecord(app3_local_event, stream[mystreamid]));
    cutilSafeCall(cudaEventRecord(app3_global_event, stream[mystreamid]));
    
    loop_back_3:
	if ((cudaEventQuery(app1_local_event) != cudaSuccess) && (cudaEventQuery(app2_global_event) != cudaSuccess)&& (cudaEventQuery(app3_global_event) != cudaSuccess)) {
		printf("I am relaunching App-3 (App-3 ran for %d times till now)\n", relaunch_count_3);
		relaunch_count_3++;
		cudaEventDestroy(app3_local_event);
		goto start_app3;
	}
    
	if ((cudaEventQuery(app1_global_event) == cudaSuccess) && (cudaEventQuery(app2_global_event) == cudaSuccess) && (cudaEventQuery(app3_global_event) == cudaSuccess))  {
		cutilSafeCall(cudaEventRecord(final_event, 0));
		
		
		printf("Both Applications completed once from app1\n");
		printf("App-1 ran for %d times\n", relaunch_count_1);
		printf("App-2 ran for %d times\n", relaunch_count_2);
		printf("App-3 ran for %d times\n", relaunch_count_2);
		pthread_exit((void*) mystreamid);
		
		return NULL;
	}
    goto loop_back_3;
}

 void *single_app(void *app_arg){
    pthread_mutex_lock (&mutexapp);
	struct app_data *my_data;
	
	my_data = (struct app_data *) app_arg;
	
    bool appflag = my_data->flag;
    long mystreamid = my_data->streamid;

    cutilSafeCall(cudaStreamCreate(&stream[mystreamid]));
    char *name = my_data->app_name;
    cutilSafeCall(cudaEventCreate(&app1_local_event));
    
	callApp(name,stream[mystreamid], &mutexapp, appflag);  


	cutilSafeCall(cudaEventRecord(final_event, 0));
	printf("Single app is completed\n");
	pthread_exit((void*) mystreamid);		
	return NULL;

 }
 void *single0_app(void *app_arg){
	pthread_mutex_lock (&mutexapp);
	struct app_data *my_data;
	
	my_data = (struct app_data *) app_arg; 
    long mystreamid = my_data->streamid;
	char *name = my_data->app_name;
	bool appflag = my_data->flag;
	callApp(name,0, &mutexapp, appflag);
	
	cutilSafeCall(cudaEventRecord(final_event, 0));
	printf("Single app with 32 is completed\n");
	pthread_exit((void*) mystreamid);		
	return NULL;
 
 }

 
int main(int argc, char *argv[])
{

	typedef void* (*ptFunction)(void*);
	ptFunction functions[3];
	functions[0] = &app_1;
	functions[1]= &app_2;
	functions[2]= &app_3;
	void *status_single;
	pthread_t threads_single;
	struct app_data app_data_array_single;
	
	cutilSafeCall(cudaEventCreate(&app1_global_event));
	cutilSafeCall(cudaEventCreate(&app2_global_event));
	cutilSafeCall(cudaEventCreate(&app3_global_event));
	cutilSafeCall(cudaEventCreate(&final_event));
	pthread_mutex_init(&mutexapp, NULL);
	
    if(strcmp(argv[1],"-sing0")==0){

		printf("In main: creating thread %ld\n", 0);
		app_data_array_single.streamid = 0;
		app_data_array_single.app_name = argv[2];
		app_data_array_single.flag = false;
		app_data_array_single.mode = false;
		

	    (void) pthread_create(&threads_single, NULL,single0_app , (void *) &app_data_array_single);
		(void) pthread_join(threads_single, &status_single);
		printf("Main: completed join with thread %ld having a status of %ld\n",0,(long)status_single);
		
	}
	else if(strcmp(argv[1],"-sing") == 0){

		stream = (cudaStream_t *)malloc(sizeof(cudaStream_t));
		printf("In main: creating thread %ld\n", 0);
		app_data_array_single.streamid = 0;
		app_data_array_single.app_name = argv[2];
		app_data_array_single.flag = true;
		app_data_array_single.mode = false;
	    (void) pthread_create(&threads_single, NULL,single_app , (void *) &app_data_array_single);
		(void) pthread_join(threads_single, &status_single);
		printf("Main: completed join with thread %ld having a status of %ld\n",0,(long)status_single);
		cudaStreamDestroy(stream[0]);
	}
	else if (strcmp(argv[1], "-apps")== 0){
		int num_thread=2;
	   	void *status[num_thread];
		struct app_data app_data_array[num_thread];
		pthread_t threads[num_thread];
		stream = (cudaStream_t *)malloc(num_thread * sizeof(cudaStream_t));
		for(long t=0; t<2; t++) {
			printf("In main: creating thread %ld\n", t);
			app_data_array[t].streamid = t;
			app_data_array[t].app_name = argv[2+t];
			app_data_array[t].flag = true;
			app_data_array[t].mode = false;
		}
	
	    (void) pthread_create(&threads[0], NULL, *functions[0], (void *) &app_data_array[0]);
		//sleep(1);
		(void) pthread_create(&threads[1], NULL, *functions[1], (void *) &app_data_array[1]);
		(void) pthread_join(threads[0], &status[0]);
		printf("Main: completed join with thread %ld having a status of %ld\n",0,(long)status[0]);
		(void) pthread_join(threads[1], &status[1]);
		printf("Main: completed join with thread %ld having a status of %ld\n",1,(long)status[1]);
		cudaStreamDestroy(stream[0]);
		cudaStreamDestroy(stream[1]);
	
	}
	else if (strcmp(argv[1], "-apps3")== 0){
		int num_thread=3;
	   	void *status[num_thread];
		struct app_data app_data_array[num_thread];
		pthread_t threads[num_thread];
		stream = (cudaStream_t *)malloc(num_thread * sizeof(cudaStream_t));
		for(long t=0; t<3; t++) {
			printf("In main: creating thread %ld\n", t);
			app_data_array[t].streamid = t;
			app_data_array[t].app_name = argv[2+t];
			app_data_array[t].flag = true;
			app_data_array[t].mode = true;
			
		}
	
	    (void) pthread_create(&threads[0], NULL, *functions[0], (void *) &app_data_array[0]);
		sleep(1);
		(void) pthread_create(&threads[1], NULL, *functions[1], (void *) &app_data_array[1]);
		sleep(1);
		(void) pthread_create(&threads[2], NULL, *functions[2], (void *) &app_data_array[2]);
		(void) pthread_join(threads[0], &status[0]);
		printf("Main: completed join with thread %ld having a status of %ld\n",0,(long)status[0]);
		(void) pthread_join(threads[1], &status[1]);
		printf("Main: completed join with thread %ld having a status of %ld\n",1,(long)status[1]);
		(void) pthread_join(threads[2], &status[2]);
		printf("Main: completed join with thread %ld having a status of %ld\n",2,(long)status[2]);
		cudaStreamDestroy(stream[0]);
		cudaStreamDestroy(stream[1]);
		cudaStreamDestroy(stream[2]);
	
	}else if(strcmp(argv[1], "-list")== 0){
		printf("List of supported benchmarks\n");

		
	}
	else{
		printf("Usage: %s -apps app1 app2 OR Usage: %s -apps app1", argv[0],argv[0]);
		return 1;		
	}

	cudaEventDestroy(app1_global_event);
	cudaEventDestroy(app2_global_event);
	cudaEventDestroy(app3_global_event);
	cudaEventDestroy(final_event);

	pthread_mutex_destroy(&mutexapp);
	printf("Main: program completed. Exiting.\n");
		
	return 0;
}
