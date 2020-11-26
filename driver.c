#include <stdio.h>

int PAR(int a);

int main(int a){
	int array[250];
	int cant = 0;
	int res = 0;
	int i = 0;
	for(i = 0; i < 10 ; i++){
		array[i] = i;
		cant++;
	}
	for(i = 0 ; i < cant ; i++){
		printf("%d - ", array[i]);
	}
	for(i = 0; i < cant ; i++){
		if(PAR(array[i])){
			res = res + array[i];
		}
	}
	printf("\nLa suma de pares es: %d",res);
	return 0;
}
