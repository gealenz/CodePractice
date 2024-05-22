int *GreedyKnapsack(int n, int W,int* Weights,float* Values,float *VW){
    int i;
    /*分配空间及初始化*/
    float* x = (float*)malloc(sizeof(float)*n);
    for(i=0;i < n;i++){
        x[i] = 0;
    }
    for(i = 0;i < n;i++){
        x[i] = 1;
        W = W - Weights[i];
    }else{
        break;
    }

    if (i < n)
    {
        x[i] = W / (float)Weights[i];
    }
    return x;
    
}