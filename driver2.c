#include<stdio.h>

int num;
int res;

void CMAIN(int n);

int main(void){
	printf("Ingresa un numero: \n");
	scanf("%d",&num);
	CMAIN(num);
	if(num==0){
		printf("El numero es impar\n");
	}
	else{
		printf("El numero es par\n");
	}
	return 0;
}