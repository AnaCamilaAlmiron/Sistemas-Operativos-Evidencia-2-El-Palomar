<div align="center">
  <h1><strong style="font-size: 24px;">🧰 Sistemas-Operativos - Evidencia 2 : Toolkit El-Palomar 🧰</strong></h1>
</div>

<p align="center"; width=100%;"><img src="https://github.com/user-attachments/assets/70120028-b73a-4695-9d65-53a1568f87ab" alt="" width="600px" height="400px" /></p>

---

Este programa se desarrollo con el objetivo de ayudar a una pequeña Pyme 

Muchas veces sin personal técnico especializado, se necesitan soluciones simples para monitorear los sistemas operativos / realizar procesos que a priori para una persona con nulo o poco conocimiento tecnico costaria mucho.

> Se creó una herramienta simple de consola (en Bash, con extensión `.sh`) que permite ver, consultar y controlar procesos del sistema de manera simple e intuitiva.
---

## 🤔 ¿Por que se eligio este problema / necesidad ?
Nos parecio que este problema al cual estamos dando una solucion es algo comun en el día a día , no solo de las pymes sino tambien de pequeñas empresas o negocios. Por eso nos resulto
llamativa , atrapante e interesante abordar esta problematica.

Una buena gestión de procesos permite :
- Detectar problemas de rendimiento o fallos en la ejecucion de los procesos
- Controlar cuellos de botella
- Terminar procesos innecesarios o que esten provocando inconvenientes

Automatizar esta gestión contribuye al funcionamiento óptimo de las aplicaciones.

>⚠️ **Nota:** Actualmente sigue en desarrollo el toolkit , se iran agregando cada vez mas funcionalidades para que el resultado final sea
una herramienta eficaz, eficiente , versatil y muy util

## 💻 ¿ Como ejecutar el programa ?
1. Clonar el repositorio :
<pre>git clone https://github.com/AnaCamilaAlmiron/Sistemas-Operativos-Evidencia-2-El-Palomar.git</pre> 
2. Entrar a la carpeta del repositorio :
<pre>cd nombre-repositorio Ej : cd Sistemas-Operativos-Evidencia-2-El-Palomar</pre>
3. Brindar permisos para ejecutar los scripts :
<pre>chmod +x main_toolkit.sh procesos.sh </pre>
4. Ejecutar el programa/toolkit :
<pre>./main_toolkit.sh</pre>

### 🚀 Funcionalidades - Scripts

- **`main_toolkit.sh :`**

Este es el script principal del sistema.

Funciona como un menú interactivo desde el cual se puede acceder a las funcionalidades del toolkit.

Permite al usuario elegir entre:

1. Mostrar procesos en ejecución
1. Consultar información de un proceso
1. Finalizar un proceso 


- **`procesos.sh :`**

Este script es llamado por main_toolkit.sh y se encarga de realizar las acciones relacionadas con la gestión de procesos.

Su funcionamiento depende del parámetro que se le pase:

**_mostrar_** → Muestra todos los procesos del sistema utilizando ps aux.

**_consultar_** → Solicita al usuario un PID y muestra información detallada del proceso si está activo.

**_eliminar_** → Permite al usuario enviar una señal (como SIGTERM) a un proceso mediante su PID.
