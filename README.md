# TALLER 1: Navegación, widgets y ciclo de vida en Flutter

* Este taller tiene como objetivo la implementación de una aplicación móvil utilizando Flutter, que abarca la creación de rutas, gestión de estados, plantillas de UI reutilizables, y navegación entre pantallas. A continuación se detallan las principales funcionalidades y componentes de la aplicación.

## Descripcion de Componentes

* **app_router.dart:** Este archivo se utiliza para definir las rutas entre las distintas pantallas de la aplicación, gestionando las transiciones entre ellas.

* **app_theme.dart:** En este archivo se definen los temas visuales de la aplicación, como los colores de la AppBar y el menú, para mantener una estética coherente en toda la aplicación.

* **base_view.dart:**  Define una plantilla básica que incluye la AppBar. Esta plantilla se reutiliza en varias pantallas, recibiendo el cuerpo y el título como parámetros para una mayor flexibilidad.

* **custom_drawer.dart:** Se encarga de la creación del menú lateral (Drawer), el cual incluye las opciones de navegación entre las distintas pantallas mediante el enrutador.

* **home_view.dart:** La pantalla principal de la aplicación, que invoca la AppBar utilizando la plantilla base y muestra un GridView para la visualización de datos organizados en celdas.

* **grid_view.dart:** En esta pantalla, se utiliza el AppBar y el Drawer para la navegación, y se agrega un GridView que muestra ciertos datos en formato de celdas.

* **tabbar_view.dart:** Esta pantalla incluye una TabBar con tres pestañas. Cada pestaña contiene un contenido específico, y una de ellas puede incluir una imagen u otro widget personalizado.

* **main.dart:** Es el archivo principal de la aplicación. Se encarga de llamar al app_router.dart, que a su vez invoca la pantalla home_view al inicio de la aplicación.

* **ciclo_vida.dart:** Este archivo maneja el ciclo de vida del widget en Flutter. Los métodos principales son:

  * **initState():** Se ejecuta una vez al crear el widget. Es ideal para inicializar variables.

  * **didChangeDependencies():** Se ejecuta cuando cambian las dependencias del widget, útil para reaccionar a cambios en el contexto.

  * **build():** Se ejecuta cada vez que se necesita actualizar la interfaz del widget.

  * **setState():** Actualiza el estado del widget y provoca la reconstrucción de la interfaz.
    
  * **dispose():** Se ejecuta cuando el widget se elimina de la memoria, permitiendo liberar recursos.
     
* **detalle_screen.dart:** Esta pantalla maneja tres formas diferentes de navegar entre pantallas, pasando parámetros de una pantalla a otra:

  * **'go':** Navega a una nueva pantalla sin la opción de regresar a la anterior.

  * **'push':** Agrega una nueva pantalla a la pila de navegación, permitiendo regresar.

  * **'replace':** Reemplaza la pantalla actual con una nueva, sin opción de volver a la anterior.

# TALLER 2: Future, Timer e Isolate
## Descripción
* En este taller se implementan nuevas funcionalidades en Flutter, incluyendo el uso de Future, Isolates y Timers para mejorar la gestión de datos y la ejecución de procesos en segundo plano. También se han añadido mejoras al menú de navegación (custom_drawer).

## Componentes principales

* **future_view.dart**
  *  Se crea un arreglo vacío al iniciar la pantalla.
  *  Se llama al método obtenerDatos() automaticamente al ejecutarse la pantalla.
  *  Este método invoca cargarDatos(), que llena la lista con nombres.
  *  Mientras la lista vacía, se muestra un indicador de carga circular.
  *  Una vez cargados los datos, se muestran en un ListView para su visualización.
    
* **isolate_view.dart**
  *  Implementa un hilo secundario (Isolate) para ejecutar una sumatoria de 1 hasta 5000
  *  El resultado de la operación se muestra en pantalla.
  *  Permite seguir usando la aplicaci+on sin bloquear la interfaz, incluso mientras el cálculo se ejecuta en segundo plano.

* **timer_view.dart**
  *  Implementa un contador que inicia desde 0.
  *  Métodos principales:
    *  iniciarTemporizador(): Uncrementa el contador en 1 cada segundo.
    *  reiniciarTemporizador(): Restablece el contador en 0.
    *  pausarTemporizador(): Detiene el contador sin reiniciarlo.
  *  Estos metodos se vinculan a botones para su ejecución manual.
* **custom_drawer.dart**
  * Se han añadido nuevas funciones al menú lateral (Drawer).
  * Ahora incluye accesos directos a las nuevas vistas:
    * **FutureView**
    * **IsolateView**
    * **TimerView**
  * Permite navegar facilmente entre las distintas funcionalidades implementadas.
