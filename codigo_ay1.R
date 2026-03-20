# ============================================================
# AYUDANTÍA 1 · Introducción a R y RStudio
# Métodos Cuantitativos para la Administración Pública
# FAGOB · 20 de marzo de 2026
# ============================================================


# PARTE 1: R COMO CALCULADORA ----

2 + 2
100 / 4
sqrt(144)        # raíz cuadrada
log(100)         # logaritmo natural
2^10             # potencia


# PARTE 2: OBJETOS Y VARIABLES ----

puntaje <- 85
nombre  <- "Ana"

puntaje
nombre

puntaje + 10
puntaje * 2


# PARTE 3: CARGAR PAQUETES ----

# Los paquetes se instalan UNA sola vez:
install.packages("readr")

# Y se cargan en cada sesión:
library(readr)

# PARTE 4: CARGAR LA BASE DE DATOS ----

# Opción A: cargar directo desde GitHub (sin descargar)
casen <- read_csv("https://raw.githubusercontent.com/Cristobal-Mejias-G/Clase-1-FAGOB-26/main/input/casen_ay1.csv")

# Opción B: si descargaste el archivo, cárgalo desde tu carpeta input/
# casen <- read_csv("input/casen_ay1.csv")


# PARTE 5: EXPLORAR LA BASE ----

# ¿Cuántas filas y columnas tiene?
dim(casen)

# ¿Qué variables tiene?
names(casen)

# Ver las primeras 6 filas
head(casen)

# Resumen estadístico de todas las variables
summary(casen)


# PARTE 6: EXPLORAR VARIABLES ESPECÍFICAS ----

# Tabla de frecuencias por región
table(casen$region)

# Distribución por sexo
table(casen$sexo)

# Condición de pobreza
table(casen$pobreza)

# Tabla cruzada: pobreza según sexo
table(casen$sexo, casen$pobreza)

# Promedio de edad
mean(casen$edad, na.rm = TRUE)

# Promedio de ingreso per cápita
mean(casen$ypchtotcor, na.rm = TRUE)
