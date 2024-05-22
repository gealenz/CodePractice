#include<stdio.h>

int OptimalSubset[100];
/*递归贪心算法*/
int RecursiveActivitySelector(int* s,int *f,int index,int n){

    int m = index + 1;
    static int activity_number = 0;
    while(m <= n && s[m] <= f[index]){
        m++;
    }

    if (m <= n){
        OptimalSubset[activity_number++] = m;
        RecursiveActivitySelector(s,f,m,n);
    }else{
        return activity_number;
    }
    
}

/*迭代贪心算法*/

int GreedyActivitySelector(int *s,int *f,int n){
    int activity_number = 0;
    OptimalSubset[activity_number++] = 1;
    int index = 1;
    int m;
    for(m = 2;m <= n;m++){
        if (s[m] >= f[index])
        {
            OptimalSubset[activity_number++] = m;
            index = m;
        }
        
    }
    return activity_number;
}