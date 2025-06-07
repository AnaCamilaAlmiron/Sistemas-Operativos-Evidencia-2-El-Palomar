<div align="center">
  <h1><strong style="font-size: 24px;">🧰 Sistemas-Operativos : Toolkit El-Palomar 🧰</strong></h1>
</div>

<p align="center"; width=100%;"><img src="https://github.com/user-attachments/assets/70120028-b73a-4695-9d65-53a1568f87ab" alt="" width="600px" height="400px" /></p>

---

Este programa se desarrollo con el objetivo de ayudar a una pequeña Pyme 

Muchas veces sin personal técnico especializado, se necesitan soluciones simples para monitorear los sistemas operativos / realizar procesos que a priori para una persona con nulo o poco conocimiento tecnico costaria mucho.

> Se creó una herramienta simple de consola (en Bash, con extensión `.sh`) que permite ver, consultar y controlar procesos ,consultar el uso de memoria y analizar el espacio en disco , todo desde un menu muy intuitivo e interactivo.
---

## 🤔 ¿Por que se eligio este problema / necesidad ?
Nos parecio que este problema al cual estamos dando una solucion es algo comun en el día a día , no solo de las pymes sino tambien de pequeñas empresas o negocios. Por eso nos resulto
llamativa , atrapante e interesante abordar esta problematica.

Una buena gestión de procesos permite :
- Detectar problemas de rendimiento o fallos en la ejecucion de los procesos
- Controlar cuellos de botella
- Terminar procesos innecesarios o que esten provocando inconvenientes
- Monitorear la memoria RAM y el espacio en el disco

Automatizar esta gestión contribuye al funcionamiento óptimo y la eficiencia de los sistemas.

## 💻 ¿ Como ejecutar el programa ?
1. Clonar el repositorio :
<pre>git clone https://github.com/AnaCamilaAlmiron/Sistemas-Operativos-Evidencia-2-El-Palomar.git</pre> 
2. Entrar a la carpeta del repositorio :
<pre>cd nombre-repositorio Ej : cd Sistemas-Operativos-Evidencia-2-El-Palomar</pre>
3. Brindar permisos para ejecutar los scripts :
<pre>chmod +x main_toolkit.sh procesos.sh disco.sh memoria.sh </pre>
4. Ejecutar el programa/toolkit :
<pre>./main_toolkit.sh</pre>

### 🚀 Funcionalidades - Scripts

- **`main_toolkit.sh :`**

Este es el script principal del sistema.

Funciona como un menú interactivo desde el cual se puede acceder a las funcionalidades del toolkit.

Permite al usuario elegir entre:

1. Opcion referida a **Procesos**
1. Opcion referida a **Memoria**
1. Opcion referida a **Disco**

>❗ Todos los scripts incluyen pausas interactivas para que el usuario pueda revisar los datos antes de volver al menú principal.

- **`procesos.sh :`**

Este script es llamado por main_toolkit.sh y se encarga de realizar las acciones relacionadas con la gestión de procesos.

Su funcionamiento depende del parámetro que se le pase:

**_mostrar_** → Muestra todos los procesos del sistema utilizando ps aux.

**_consultar_** → Solicita al usuario un PID y muestra información detallada del proceso si está activo.

**_eliminar_** → Permite al usuario enviar una señal (como SIGTERM y/o SIGKILL) a un proceso mediante su PID.

- **`memoria.sh :`**
 
Este script es ejecutado desde main_toolkit.sh y brinda información relevante sobre la memoria del sistema.

Muestra datos como:

**_Memoria física (RAM)_** → Uso actual de la memoria física mediante el comando top.

**_Memoria virtual_** → Estadísticas detalladas del uso de la memoria virtual con vm_stat.

**_Uso de swap_** → Información sobre el espacio de intercambio (swap) en uso con sysctl vm.swapusage.

- **`disco.sh :`**

Este script es llamado por main_toolkit.sh y permite consultar el uso del espacio en disco.

Incluye las siguientes funcionalidades:

**_Espacio libre y ocupado_** → Muestra el estado actual de todos los sistemas de archivos con df -h.

**_Espacio ocupado por una ruta específica_** → Solicita al usuario una ruta y muestra cuánto espacio utiliza (du -sh).

**_Listado de archivos y permisos_** → Permite al usuario ingresar un directorio para listar sus archivos y ver sus permisos con ls -l.

También incluye validaciones para verificar que las rutas o directorios ingresados existan.


## 🕊️ ¿Quienes Somos ?
**_El Palomar  - Estudiantes del ISPC / Tecnicatura en Desarrollo de Software_**

- Almiron Ana Camila
- Aquino Marialis
- Avila Fabrizio
- Huallpa Carlos
- Gonzalez Ezequiel


<p align="center"; width=100%;"><img src="https://github.com/user-attachments/assets/38717c75-119a-4af4-ae62-02f62f49f886" alt="" width="400px" height="400px" /></p>
