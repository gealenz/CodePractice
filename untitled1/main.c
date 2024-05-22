#include<stdio.h>
#include<math.h>

#define N 10

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

void queen() { //求解N皇后的方案
    int i;
    for (i = 1; i <= N; i ++ ) {
        q[i] = 0;
    }

    int answer = 0; //方案数

    int j = 1; //表示正在摆放在第j个皇后
    while (j >= 1){
        q[j] = q[j] + 1; //皇后的位置往后摆放一列

        while(q[j] <= N && !check(j)){ //检查皇后的位置是否合法
            q[j] = q[j] + 1; //皇后的位置往后摆放一列
        }

        if(q[j] <= N){ //表示第j个皇后的位置为合法位置

            if(j == N){ //表示找到了N皇后的一组解

                answer = answer + 1;
                printf("\n 方案%d: ", answer);
                for(i = 1; i <= N ;i ++){
                    printf("%d ",q[i]);
                }

            } else{ //继续摆放下一个皇后
                j = j + 1;
            }

        } else{ //表示第j个皇后找不到一个合法的摆放位置
            q[j] = 0; //还原第j个皇后的位置
            j = j - 1; //回溯到第j - 1 个皇后的位置

        }
    }
}

int main(){
    queen();

    return 0;
}