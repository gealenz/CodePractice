#include <stdio.h>
#include <math.h>

#define N 4

int answar = 0;
int q[N + 1]; //存储皇后的列号

int check(int j){ //检查第j个皇后是否合法

    int i;
    for (i = 1; i < j;i ++){
        if(q[i] == q[j] || abs(i - j) == abs( q[i] - q[j])){
            // 判断是否在同一斜线上
            return  0;
        }
    }
    return 1;
}

void queen(int j){
    int i;
    for (i = 1 ; i <= N ; i ++){
        q[j] = i;
        if(check(j)){ //皇后位置合法时
            if (j == N){ //找到N皇后的一组解
                answar = answar + 1;
                printf("方案%d: ", answar);

                for (int i = 0; i < N; ++i) {
                    printf("%d ",q[i]);
                }
                printf("\n");
            } else {
                queen(j + 1); //递归摆放下一个皇后的位置
            }

        }

    }
}

int main(void) {
    queen(1);
    return 0;
}
