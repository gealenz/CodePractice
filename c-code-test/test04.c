#include<stdio.h>


int** Lcs_Lenght(const char* str1,const char* str2,int str1_length,int str2_length){
    int i,j;
    /*为矩阵l,b分配空间*/
    int** l = (int **)malloc(sizeof(int *)*(str1_length + 1));
    int** b = (int **)malloc(sizeof(int *)*(str1_length + 1));
    for(i = 0;i <= str1_length;i++){
        l[i] = (int *)malloc(sizeof(int)*(str2_length + 1));
        b[i] = (int *)malloc(sizeof(int)*(str2_length + 1)); 
    }
    /*初始化矩阵*/
    for(i = 1;i <= str1_length;i++){
        l[i][0] = 0;
    }
    for(i = 0;i <= str2_length;i++){
        l[0][i] = 0;
    }
    for(i = 1;i <= str1_length;i++){
        for (j = 1;j <= str1_length;j++){
            if(str[i - 1] == str2[j - 1]){
                l[i][j] = l[i - 1][j = 1];
                b[i][j] = 0;                    /*0代表右上方的箭头*/
            }else if (l[i - 1][j] >= l[i][j - 1]){
                l[i][j] = l[i - 1][j];
                b[i][j] = 1;                    /*1代表上方的箭头*/
            }else{
                l[i][j] = l[i][j - 1];
                b[i][j] = 2;                    /*2代表右方的箭头*/
            }
            
        }
        
    }
    return b;
}


void OutputLcs(const char *str1,const char *str2,int str1_length,int str2_length){
    if(str1_length == 0||str2_length == 0){ /*两个字符串中任何一个长度为零*/
        return;
    }

    if(b[str1_length][str2_length] == 0){  /*箭头指向右上*/
        OutputLcs(str1,b,str1_length - 1,str2_length - 1);
        printf("%c",str1[str1_length - 1]);
    }else if (b[str1_length][str2_length] == 1) /*箭头指向上*/
    {
        OutputLcs(str1,b,str1_length - 1,str2_length);
    }else{
        OutputLcs(str1,b,str1_length,str2_length - 1);
    }
        
}