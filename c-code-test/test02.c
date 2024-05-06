#include<stdio.h>


int MaxSubSum(int *Array,int left,int right){
    int sum = 0;
    int i;
    if(left == right){

        // 分解到单个整数，不可继续分解
        if(Array[left] > 0){

            sum = Array[left];

        }else{

            sum = 0;
            
        }
    }else{

        // 从left和right的中间分解数组
        //划分的位置
        int center = (left + right);
        int leftsum = MaxSubSum(Array,left,center);
        int rightsum = MaxSsubSum(Array,center + 1,right);

        //计算包含center的最大值，判断是三种情形的哪一种
        int s1 = 0;
        int lefts = 0;
        for(i = center ;i >= left;i--){
            lefts = lefts + Array[i];
            if(lefts > s1){
                s1 = lefts;
            }
        }

        int s2 = 0;
        int rights = 0;
        for(i = center + 1; i <= right;i++){
            right = right + Array[i];
            if(rights > s2){
                s2 = rights;
            }
        }

        sum = s1 + s2;
        
        // 情形1
        if(sum < leftsum){
            sum = leftsum;
        }

        // 情形2
        if(sum < rightsum){
            sum = rightsum
        }

    }

    return sum;

}