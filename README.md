![Robot Framework Logo](https://upload.wikimedia.org/wikipedia/commons/e/e4/Robot-framework-logo.png)

# Proyecto de automatización de pruebas para Web

## [Contenido](#Contenido)

- [Características](##Características)
- [Requerimientos](##Requerimientos)
- [¿Como utilizar?](##¿Como-utilizar?)
    - [Ejecución de test](###Ejecución-de-test)
    - [Definir donde ejecutar las pruebas](###Definir-donde-ejecutar-las-pruebas)
    - [Definir capabilities propias](###Definir-capabilities-propias)
    - [Mejores practicas de ejecución](###Mejores-practicas-de-ejecución)
- [Estructura de directorios y archivos](##Estructura-de-directorios-y-archivos)
- [Confluence](##Confluence)
- [Links de referencia](##Links-de-referencia)


## Características

Este repositorio tiene lo necesario para realizar las automatizaciones Web del sitio Privado, cuenta con funcionalidades genéricas como el login, uso interacción con el menú, y otras. El marco del proyecto esta separado de modo que se pueda realizar las siguientes actividades:

- Crear proyecto de automatización utilizando las funcionalidades comunes para preocuparnos solo de nuestras funcionalidades a automatizar. (Si identificamos que otro desarrollador pueda necesitar alguna funcionalidad debe ser trabajado en este proyecto, pero bajo aprobación de los administradores del framework) 
- Realizar pruebas local o remota. (Aun está como un deseable, pero cuando se aplique debe definirse **aquí** cómo se hará)


## Requerimientos

Para correr Robot Framework primero es necesario contar con algunos componentes instalados previamente. 

1. Python3

```
brew install python3
```

Si hay algún inconveniente con los certificados en python, recomendamos ejecutar este comando. Cambiar el path dependiendo de la versión de python instalada. 
```
/Applications/Python\ 3.9/Install\Certificates.command
```

2. Robot Framework y librerías de trabajo
Para realizar la instalación de robot framework ejecutamos el siguiente comando, desde la raiz del proyecto
```
python3 -m pip install -r requirements.txt
```

3. Descargar y configurar el webdriver correspondiente, para mas información puede consultar el siguiente instructivo https://github.com/robotframework/SeleniumLibrary/#browser-drivers


## ¿Como utilizar?
Para crear un nuevo proyecto se recomienda el uso de forks, de esta forma, cuando el repositorio sufra algun cambio se pueden descargar sin afectar la funcionalidad en desarrollo, para que esto sea posible es necesario deshacer los cambios base del proyecto, como el directorio Common y MainTest
<br/>
<br/>
Es necesario considerar que para mantener un lenguaje común en los Keywords se están usando palabras como: **Abro**, **Cierro**, **Espero**, **Presiono**, **Escribo**, **Selecciono**

### Ejecución de test

Ejecutar todos los test
```
robot -d Report TestSuites
```

Ejecutar un conjunto de TestSuites de un Feature o funcionalidad
```
robot -d Report TestSuites/Login
```

Ejecutar un solo TestSuite
```
robot -d Report TestSuites/Login/Login.robot
```

<br/>

<!--### Definir dónde ejecutar las pruebas

Para ejecutar las pruebas **Local**
```
export ENV=Local
```

Para ejecutar las pruebas **Remote**
```
export ENV=Remote
```

*Valores por defecto:*
```
ENV=Local
```

<br/>-->

### Mejores practicas de ejecución
* Correr los test con el argumento **-d Report** para tener siempre en ese directorio los reportes y screenshots
* Exportar las variables de ambiente según las pruebas que vayas a ejecutar 
* Modificar los archivos de configuración de capabilities y recordar no subir sus credenciales a bitbucket.  


## Estructura de directorios y archivos
|Directorio |Función                                        |
|-----------|-----------------------------------------------|
|Common|Contiene los Keywords y PageObjects (KW, PO) comunes para la web privada, si se ve necesario esta irá creciendo según la generalidad de su uso|
|rf-web-base|Contiene la base del framework relacionados con el navegador y la interacción con los elementos, también cuenta con algunas configuraciones|

## Confluence

En esta sección podras encontras más información, acuerdos de equipo y mejores practicas, how-to, entre otras cosas.

[Confluence](https://link)


## Links de referencia

|Descripción | Link|
|------------|-----|
|Presentación de mejores practicas|https://es.slideshare.net/pekkaklarck/robot-framework-dos-and-donts|
|Documentación de Keyword de RobotFramework|https://robotframework.org/robotframework/|
|Documentación de Keywords de SeleniumLibrary|https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top|
|Recopilación de enlaces | https://github.com/fkromer/awesome-robotframework|

La idea de este repo es que no sea modificado, solo ante mejoras de uso comun debe ser regulado por PR a Francisco Troncoso y  Gabrielle Huchet