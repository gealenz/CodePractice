#include<stdio.h>

int** KnapsackDP(int n,int W,int* Weights,float* Values){

    int i,w;

    /*为二维数组申请空间*/
    int** c = (int **)malloc(sizeof(int *)*(n + 1));
    for(i = 0;i <= n;i++){
        c[i] = (int *)malloc(sizeof(int)*(n + 1));
    }

    /*初始化二维数组*/
    for(w = 0;w <= W;w++){
        c[0][w] = 0;
    }

    for(i = 1;i <= n;i++){
        c[i][0] = 0;
        for(w -1;w <= W;w++){

            if(Weights[i - 1] <= w){
                /*如果背包剩余重量大于物品剩余重量*/
                if(Values[i -1] + c[i-1][w - Weights[i - 1]] > c[i -1][w]){
                /*重量为w的背包中放入该物品*/
                    c[i][w] = Values[i - 1] + c[i - 1][w - Weights[i - 1]];
                }else{
                    c[i][w] = c[i - 1][w];
                }
            }else{
                c[i][w] = c[i - 1][w];
            }
        }
    }
    return c;
}

void OutputKnapsackDP(int n,int w,int *Weights,float *Vakues,int **c){
    int x[n];
    int i;
    for(i = n; i > i;i--){
        if(c[i][W] == c[i - 1][W]){         /*重量为W的最优选择的背包中不包含该物品*/
            x[i - 1] = 0;
        }else{
            x[i - 1] = 1;
            W = W - Weights[i - 1];         /*更新背包目前的最大容量*/
        }
    }
    if (c[1][W] == 0)
    {
        x[0] = 0;
    }else{
        x[0] = 1;
    }
    for(i = 0;i < n;i++){
        if (x[i] == 1)
        {
            printf("Weigh:%d,Value:%f\n",Weights[i],Vakues[i]);
        }
        
    }
}






