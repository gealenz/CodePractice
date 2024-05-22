#include <stdio.h>
#include <math.h>

#define N 4

int answar = 0;
int q[N + 1]; //�洢�ʺ���к�

int check(int j){ //����j���ʺ��Ƿ�Ϸ�

    int i;
    for (i = 1; i < j;i ++){
        if(q[i] == q[j] || abs(i - j) == abs( q[i] - q[j])){
            // �ж��Ƿ���ͬһб����
            return  0;
        }
    }
    return 1;
}

void queen(int j){
    int i;
    for (i = 1 ; i <= N ; i ++){
        q[j] = i;
        if(check(j)){ //�ʺ�λ�úϷ�ʱ
            if (j == N){ //�ҵ�N�ʺ��һ���
                answar = answar + 1;
                printf("����%d: ", answar);

                for (int i = 0; i < N; ++i) {
                    printf("%d ",q[i]);
                }
                printf("\n");
            } else {
                queen(j + 1); //�ݹ�ڷ���һ���ʺ��λ��
            }

        }

    }
}

int main(void) {
    queen(1);
    return 0;
}
