Algoritmo condicionalesejemplo1
    Definir nota Como Real;
    
    Escribir "Ingrese la nota del estudiante:";
    Leer nota;
    
    Si nota >= 90 Entonces
        Escribir "Calificación: A";
    Sino
        Si nota >= 80 Entonces
            Escribir "Calificación: B";
        Sino
            Si nota >= 70 Entonces
                Escribir "Calificación: C";
            Sino
                Si nota >= 60 Entonces
                    Escribir "Calificación: D";
                Sino
                    Escribir "Calificación: F (Reprobado)";
                FinSi
            FinSi
        FinSi
    FinSi
FinAlgoritmo