#include <stdio.h>


#define N 4
#define W 5

int max(int a,int b){
    return a > b ? a : b;
}

int main(void) {

    int v[] = {0,2,4,5,6}; //物品价值数组
    int w[] = {0,1,2,3,4,}; //物品重量数组

    int f[N + 1][W + 1] = {}; //子问题解的数组

    int i,j;

    for (int i = 1; i <= N ; i++) {
        for(j = 1;j <= W; j ++){
            if (j >= w[i]){ //选第i个物品的前提条件
                f[i][j] = max(f[i - 1][j - w[i]] + v[i],f[i - 1][j]);
                //将选第i个物品的值与不选第i个物品的值做比较，取最大价值作最优解
            } else{
                f[i][j] = f[i - 1][j];//不选第i个物品的最大价值
            }
        }
    }

    printf("%d\n",f[N][W]);

    for (i= 0; i <= N; i++) {
        for ( j = 0; j <= W ; j++) {
            printf("%d ",f[i][j]);
        }
        printf("\n");
    }

    return 0;

}
