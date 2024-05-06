#include<stdio.h>
#include<limits.h>

//归并排序

void MergeSort(int A[],int p,int r){
    int q;
    if(p < r){
        // 分解
        q = (p + r) / 2;

        // 分别求解
        MergeSort(A,p,q);
        MergeSort(A,q+1,r);

        // 合并
        Merge(A,p,q,r);
        
    }
}

void Merge( int A[],int p,int q,int r){
    int n1 = q - p + 1,n2 = r - q,i,j,k;
    int L[50],R[50];
    for(i = 0;i < n1;i++){
        L[i] = A[p + i];
    }
    for(j = 0;j < n2;j++){
        L[j] = A[q + j + 1];
    }
    L[n1] = INT_MAX;
    R[n2] = INT_MAX;
    i = 0;
    j = 0;
    for(k = p;k < r;k++){
        if(L[i] < R[j]){
            A[k] = L[i];
            i++;
        }else{
            A[k] = R[j];
            j++;
        }
    }

}