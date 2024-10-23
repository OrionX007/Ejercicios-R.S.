                            #Ejercicios 
#numero 1

#1
numeros <- numeric(10)
#2
#for (i in 1:10) {
#cat("Introduce el número", i, ": ")
#numeros[i] <- as.numeric(readline())
#}
for (i in 1:10) {
  cat("Introduce el número", i, ": ")
  numeros[i] <- as.numeric(readline())
}

#3
for (i in 1:10) {
  if (numeros[i] > 0) {
    cat(numeros[i], "es positivo.\n")
  } else if (numeros[i] < 0) {
    cat(numeros[i], "es negativo.\n")
  } else {
    cat(numeros[i], "es cero.\n")
  }
  numeros
}

#numero 2
#1
numeros <- sample(-100:100, 100, replace = TRUE)
#2
pares <- 0
impares <- 0
#3
for (i in 1:100) {
  if (numeros[i] %% 2 == 0) {
    pares <- pares + 1
  } else {
    impares <- impares + 1
  }
}

cat("Total de números pares:", pares, "\n")
cat("Total de números impares:", impares, "\n")


#numero 3
#1
cat("Introduce un número N: ")
N <- as.numeric(readline())
#2
suma <- 0
#3
for (i in 1:N) {
  suma <- suma + i
}

cat("La suma de los primeros", N, "números es:", suma, "\n")

#numero 4
#1
a <- 0
b <- 1

cat("Los primeros 20 números de la secuencia de Fibonacci son:\n")
count <- 1
#2
while (count <= 20) {
  cat(a, "\n")
  siguiente <- a + b
  a <- b
  b <- siguiente
  count <- count + 1
}

#numero 5
#1
cat("Introduce un número n: ")
n <- as.numeric(readline())

#2
factorial <- 1
#3
for (i in 1:n) {
  factorial <- factorial * i
}

cat("El factorial de", n, "es:", factorial, "\n")

#numero 6
#1
numero_secreto <- sample(1:100, 1)
intento <- as.integer(readline("Adivina el número entre 1 y 100: "))
#2
while (intento != numero_secreto) {
  if (intento > numero_secreto) {
    intento <- as.integer(readline("El número es menor, intenta de nuevo: "))
  } else {
    intento <- as.integer(readline("El número es mayor, intenta de nuevo: "))
  }
}
cat("¡Felicidades, adivinaste el número!")

#numero 7
#1
password_correcta <- "Albert123"
intentos <- 0
max_intentos <- 3
#2
while (intentos < max_intentos) {
  password_ingresada <- readline("Introduce la contraseña: ")
  if (password_ingresada == password_correcta) {
    cat("Acceso concedido.\n")
    break
  } else {
    intentos <- intentos + 1
    cat("Contraseña incorrecta. Intento ", intentos, " de ", max_intentos, ".\n")
  }
  
  if (intentos == max_intentos) {
    cat("Usuario bloqueado. Demasiados intentos fallidos.\n")
  }
}

#numero 8
#1
numero <- as.integer(readline("Introduce un número entero: "))
suma <- 0
#2
while (numero > 0) {
  digito <- numero %% 10
  suma <- suma + digito
  numero <- numero %/% 10
}

cat("La suma de los dígitos es: ", suma, "\n")

#numero 9
#1
filas <- as.integer(readline("Introduce el número de filas: "))
#2
for (i in 1:filas) {
  for (j in 1:i) {
    cat("*")
  }
  cat("\n")
}

#numero 10
#1
for (num in 2:100) {
  es_primo <- TRUE
  
  for (div in 2:(num - 1)) {
    if (num %% div == 0) {
      es_primo <- FALSE
      break
    }
  }
  
  if (es_primo) {
    cat(num, " ")
  }
}
