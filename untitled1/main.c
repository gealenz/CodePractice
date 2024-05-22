#include<stdio.h>
#include<math.h>

#define N 10

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

void queen() { //���N�ʺ�ķ���
    int i;
    for (i = 1; i <= N; i ++ ) {
        q[i] = 0;
    }

    int answer = 0; //������

    int j = 1; //��ʾ���ڰڷ��ڵ�j���ʺ�
    while (j >= 1){
        q[j] = q[j] + 1; //�ʺ��λ������ڷ�һ��

        while(q[j] <= N && !check(j)){ //���ʺ��λ���Ƿ�Ϸ�
            q[j] = q[j] + 1; //�ʺ��λ������ڷ�һ��
        }

        if(q[j] <= N){ //��ʾ��j���ʺ��λ��Ϊ�Ϸ�λ��

            if(j == N){ //��ʾ�ҵ���N�ʺ��һ���

                answer = answer + 1;
                printf("\n ����%d: ", answer);
                for(i = 1; i <= N ;i ++){
                    printf("%d ",q[i]);
                }

            } else{ //�����ڷ���һ���ʺ�
                j = j + 1;
            }

        } else{ //��ʾ��j���ʺ��Ҳ���һ���Ϸ��İڷ�λ��
            q[j] = 0; //��ԭ��j���ʺ��λ��
            j = j - 1; //���ݵ���j - 1 ���ʺ��λ��

        }
    }
}

int main(){
    queen();

    return 0;
}