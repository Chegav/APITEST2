# ApiTest  

COMO LO EJECUTAMO  
1. Clonar el Repositorio  
-Abre IntelliJ IDEA.  
-Vamos a File > New > Project from Version Control.  
-Seleccionamos Git e ingresa la URL del repositorio: https://github.com/Chegav/automatizacion-E2E.  
-Hacemos clic en Clone para clonar el repositorio en la máquina local.  

2. Importa el Proyecto como un Proyecto Maven  
-Después de clonar, IntelliJ preguntará si deseamos abrir el proyecto. Hacemos clic en Yes.  
-IntelliJ debería detectar automáticamente que es un proyecto Maven y pedirá que lo importemos. Nos aseguramos de que esté seleccionado Import Maven projects automatically y hacemos clic en OK.  

3. Configuramos el SDK  
-Vamos a File > Project Structure > Project.  
-Nos aseguramos de que el Project SDK esté configurado (por ejemplo, Java 1.8 o superior). Si no lo está, seleccionamos el SDK adecuado.  

4. Verificamos las Dependencias  
-IntelliJ IDEA debería descargar automáticamente todas las dependencias definidas en el archivo pom.xml. Verificamos esto en la pestaña Maven (normalmente a la derecha).  
-Si alguna dependencia no se descarga automáticamente, hacemos clic derecho en el proyecto en la pestaña Maven y seleccionamos Reimport.  

5. Ejecuta las Pruebas de Karate  
-En el explorador de archivos del proyecto, navegamos hasta el directorio que contiene las pruebas de Karate (por ejemplo, los archivos .feature).  
-Abrimos el archivo KarateTest.java que está en el directorio de pruebas.  
-Hacemos clic derecho en la clase KarateTest y selecciona Run 'KarateTest'.  

6. Verificamos la Ejecución  
-IntelliJ ejecuta las pruebas de Karate utilizando JUnit5 y mostrará los resultados en la ventana de Run.  
-Verificamo que todas las pruebas pasen correctamente.  
