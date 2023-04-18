/*
Calculo de forma serial el producto de matrices en base a la tarea siguiente

2) Para aprovechar al máximo la próxima clase, escriban un programa serial en C, que aloque memoria, inicialice y multiplique dos matrices cuadradas de NxN, A y B, de forma que 

C = A.B 

sino se acuerdan googleenlo, o preguntenle a chatgpt :-p. Agreguenle los timers de cpu que usamos en suma vectores, compilen, y si pueden miren como escalea tcpu vs N. ¿Como debería?

Piensen una estrategia para paralelizar la multiplicacion.

*/
//Importo librerías
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <time.h>


#define SIZE 1024


int main(int argc, char **argv)
{
	int N;
    //Para permitir que el usuario ingrese el tamaño
	if(argc==2) N=atoi(argv[1]);
	else N=SIZE;
    // printf("N = {%d}", N);

    //Creo punteos a las matrices de tamaño NxN
    int **A, **B, **C;

    //Aloco memoria
    A = (int**) malloc(N * sizeof(int*));
    for(int i = 0; i < N; i++){
        A[i] = (int*) malloc(N * sizeof(int));
    }

    B = (int**) malloc(N * sizeof(int*));
    for(int i = 0; i < N; i++){
        B[i] = (int*) malloc(N * sizeof(int));
    }

    C = (int**) malloc(N * sizeof(int*));
    for(int i = 0; i < N; i++){
        C[i] = (int*) malloc(N * sizeof(int));
    }

    //Asigno nros aleatorios a las matrices A y B
    for(int i = 0;i < N; i += 1){
        for(int j = 0; j < N; j += 1){
            A[i][j] = rand()%10;
            B[i][j] = rand()%10;
        }
    }


    //Multiplico las matrices A*B

    //Calculo el tiempo de cómputo
    clock_t start = clock();

    

    //Accedo a cada elemento de C
    for(int i = 0;i < N; i += 1){
        for(int j = 0; j < N; j += 1){
            //Hago el producto vectorial correspondiente
            for(int k = 0; k < N; k += 1){
                C[i][j] += A[i][k]*B[k][j];
            }
        }
    }

    //Calculo el tiempo de cómputo en segundos
    double time = (double)(clock() - start) / CLOCKS_PER_SEC;
    printf("Tiempo de cómputo para N = %d: %f segundos \n", N, time);



    //Imprimo la matriz C
    // for(int i = 0;i < N; i += 1){
    //     for(int j = 0; j < N; j += 1){
    //         printf("%d ",C[i][j]);
    //     }
    //     printf("\n");
    // }


    //Libero memoria
    free(A);
    free(B);
    free(C);


    return 0;
}


