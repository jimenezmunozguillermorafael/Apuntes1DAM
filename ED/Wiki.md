# WIKI ED

## ÍNDICE

- [WIKI ED](#wiki-ed)
  - [ÍNDICE](#índice)
  - [1. Fundamentos avanzados de git](#1-fundamentos-avanzados-de-git)
  - [1.1 Concepto de repositorio](#11-concepto-de-repositorio)
  - [1.2 Crear un repositorio local](#12-crear-un-repositorio-local)
  - [1.3 Ciclo de Vida de los Archivos en Git](#13-ciclo-de-vida-de-los-archivos-en-git)
  - [1.4 Comandos Básicos de Git: git init, git add, git commit](#14-comandos-básicos-de-git-git-init-git-add-git-commit)
  - [1.4.1 Inicializar un repositorio](#141-inicializar-un-repositorio)
  - [1.4.2. Agregar archivos al área de preparación (staging area)](#142-agregar-archivos-al-área-de-preparación-staging-area)
  - [1.4.3 Hacer un commit (confirmar cambios)](#143-hacer-un-commit-confirmar-cambios)
  - [1.5 Seguimiento de Cambios con git status y git log](#15-seguimiento-de-cambios-con-git-status-y-git-log)
  - [1.5.1 Ver el estado actual del repositorio con git status](#151-ver-el-estado-actual-del-repositorio-con-git-status)
  - [1.5.2 Ver el historial de commits con git log](#152-ver-el-historial-de-commits-con-git-log)

  

## 1. Fundamentos avanzados de git

## 1.1 Concepto de repositorio

- **Repositorio local** : Es el repositorio que resides en tu máquina personal. Aquí es donde realizas tus cambios, pruebas y commits antes de compartirlos con el equipo.

- **Repositorio remoto**: Este tipo de repositorio se aloja en un servidor externo o en una plataforma como GitHub, GitLab, o Bitbucket.

## 1.2 Crear un repositorio local

- **Repositorio local** : Es el repositorio que resides en tu máquina personal. Aquí es donde realizas tus cambios, pruebas y commits antes de compartirlos con el equipo.

- **Repositorio remoto**: Este tipo de repositorio se aloja en un servidor externo o en una plataforma como GitHub, GitLab, o Bitbucket.

## 1.3 Ciclo de Vida de los Archivos en Git

- **Untracked (No rastreados)**: Archivos nuevos que Git aún no sigue; se agregan al área de preparación para empezar a rastrearlos.

- **Modified (Modificados)**: Archivos que cambiaron tras un commit, pero aún no están en el área de preparación.

- **Staged (Preparados)**: Archivos listos para el próximo commit, ya agregados al área de preparación.

- **Committed** (Confirmados): Archivos almacenados en el historial del repositorio, formando parte del historial permanente.

## 1.4 Comandos Básicos de Git: git init, git add, git commit

## 1.4.1 Inicializar un repositorio

El comando git init inicializa un repositorio en tu directorio actual, como ya hemos visto:

```bash
#Iniciar un repositorio en git
git init 
```

## 1.4.2. Agregar archivos al área de preparación (staging area)

```bash
#Agremamos un archivo 
git add
```

Agregar un archivo específico:

```bash
#Para poner un archivo con alguna extensión. Ejemplo txt
git add archivo.txt
```

Para agregar todos los archivos modificados o nuevos:

```bash
#Todos los archivos modificados a uno 
git add .
```

(El comando git add . es especialmente útil cuando has realizado múltiples cambios en varios archivos y deseas preparar todos esos cambios de una vez).

## 1.4.3 Hacer un commit (confirmar cambios)

Confirmar cambios:

- Usa la opción -m para añadir una descripción clara del cambio.

- Los mensajes deben explicar el propósito del cambio, facilitando el seguimiento del proyecto.

```bash
#"-m" se usa para añadir una descripción del mismo cambio  
git commit-m 
```

## 1.5 Seguimiento de Cambios con git status y git log

Muestra el estado actual del repositorio:

- Archivos modificados.

- Archivos en el área de preparación (staged).

- Archivos sin seguimiento.

```bash
#Mostrar cambios
git log
```

Muestra el historial de commits (puntos de guardado):

- Lista de commits ordenados del más reciente al más antiguo.

- Incluye autor, fecha y mensaje de cada commit.

- Permite ver el ID único de cada commit.

**Importancia:**
Estos comandos son esenciales para entender qué está sucediendo en el repositorio (status) y cómo ha evolucionado el proyecto a lo largo del tiempo (log).

## 1.5.1 Ver el estado actual del repositorio con git status

Muestra el estado actual del repositorio.

Información que proporciona:

- Archivos modificados

- Archivos preparados (staged) listos para commit

- Archivos no rastreados (untracked)

```bash
#Verificar cambios antes de hacer commit
git status
```

**Utilidad principal:**

- Verificar los cambios realizados antes de hacer commit o push

- Confirmar qué archivos están listos para ser confirmados

## 1.5.2 Ver el historial de commits con git log


