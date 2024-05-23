#include <stdio.h>


#define N 4
#define W 5

int max(int a,int b){
    return a > b ? a : b;
}

int main(void) {

    int v[] = {0,2,4,5,6}; //��Ʒ��ֵ����
    int w[] = {0,1,2,3,4,}; //��Ʒ��������

    int f[N + 1][W + 1] = {}; //������������

    int i,j;

    for (int i = 1; i <= N ; i++) {
        for(j = 1;j <= W; j ++){
            if (j >= w[i]){ //ѡ��i����Ʒ��ǰ������
                f[i][j] = max(f[i - 1][j - w[i]] + v[i],f[i - 1][j]);
                //��ѡ��i����Ʒ��ֵ�벻ѡ��i����Ʒ��ֵ���Ƚϣ�ȡ����ֵ�����Ž�
            } else{
                f[i][j] = f[i - 1][j];//��ѡ��i����Ʒ������ֵ
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
