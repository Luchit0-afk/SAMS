#include <stdio.h>

int calcSum ( int n);
int elevarCubo ( int x );

	void main ( ) {
		int n ;
		printf ( "Sumar enteros hasta : " ) ;
		scanf ( "%d" ,&n ) ;
		int sum = calcSum (n) ;
		printf(" Sum es %d\n ",sum ) ;
	}

	int calcSum ( int n) {
		int acum =0;
		int i ;
		for ( i =1; i<=n ; i ++){
			acum = acum + elevarCubo (i);
		}
		return acum;
	}

	int elevarCubo ( int x ) {
		return x*x*x ;
	}