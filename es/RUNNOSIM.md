## Ejecutar sin una instalación del simulador {#running-without-flight-simulator-installation}

Puede utilizar `littlenavmap.exe` en todos los ordenadores, sin importar si SimConnect o un simulador de vuelo están instalados o no.

Siga estos pasos si quiere instalar _Little Navmap_ en un ordenador que no contiene ninguna instalación de simulador para una configuración en red, por ejemplo. La funcionalidad no resulta afecta excepto la capacidad de conexión directa la cual no es necesaria en este caso.

Esta situación es la típica cuando se conecta al simulador de vuelo para ver el progreso de forma remota.

Los planes de vuelo se pueden crear, cargar y guardar en el ordenador cliente. Solo debe asegurarse de que estos se transfieran al ordenador con el simulador de vuelo utilizando las acciones de compartir de Windows o por otros medios.
Estas instrucciones se aplican a los ordenadores con Windows, MacOS y Linux de la misma forma.

1.  Instalar _Little Navmap_ en ambos, su ordenador de vuelo y el ordenador cliente sin el simulador de vuelo.
2.  Ejecutarlo en el ordenador de vuelo y generar la base de datos de la biblioteca de escenarios. Consultar [Diálogo de Carga de la Biblioteca de Escenarios](SCENERY.md) para obtener más información.
3.  Seleccionar `Menú Principal` -&gt; `Biblioteca de Escenarios` -&gt; `Mostrar archivos de base de datos` en el ordenador de vuelo. Esto abrirá el directorio que contiene los archivos de la base de datos en el explorador de archivos en Windows o el Finder de Apple. Encontrará uno o más archivos de bases de datos como `little_navmap_fsx.sqlite`, `little_navmap_p3dv3.sqlite` o `little_navmap_xp11.sqlite`.
4.  Salir de _Little Navmap_ en el ordenador de vuelo.
5.  Iniciar _Little Navmap_ en el ordenador cliente /remoto y seleccionar `Biblioteca de Escenarios` -&gt; `Mostrar Archivos de base de datos`.
6.  Salir de _Little Navmap_ en el ordenador cliente para que pueda copiar los archivos de base de datos.
7.  Copie los archivos de la base de datos a su ordenador cliente usando recursos compartidos de red, memorias USB o lo que desee. Utilice las ventanas del administrador de archivos abiertas por los procedimientos anteriores.
8.  Inicie _Little Navmap_ en el ordenador cliente. El menú `Biblioteca de Escenarios` debe contener una entrada para cada archivo de base de datos copiado o ninguna entrada en absoluto si solo se copió un archivo de base de datos. Los iconos del aeropuerto deberían estar visibles en el mapa en ambos casos. **No es necesario volver a cargar la base de datos de la biblioteca de escenarios ya que solo copió un archivo de base de datos completamente poblado.**

Consultar [Conexión al simulador de vuelo](CONNECT.md#remote-connection) para información sobre configuraciones en red.

