# Inicio del Proyecto 1.

#### SPRINT 0: Hacer presentacion individual de cada colaborador del equipo. (Lo más pronto posible para terminar de cerrar el sprint)
#### SPRINT 1: Tareas a hacer cada uno de los 10 colaboradores: Asignarse 2 tareas y realizarlas hasta el dia miercoles proximo 22/06 ya que la idea es cerrar el sprint cumpliendo con cierto plazo.

1) Christian Murua. Se asignó tarea 1 y 2.
2) Lorena Delgado. Se asignó tarea 3 y 4.
3) Matías Oscar Varela. Se asignó tarea 5 y 6.
4) Lucas de la Rosa. Se asignó tarea 7 y 8.
5) Cristian Nicolás Ortiz. Se asignó tarea 9 y 10.
6) Paloma Montani. Se asignó tarea 12 y 13.
7) Alejandra Colqui Sueldo. Se asignó tarea 14 y 15.

## Tarea 1 - ALGUNOS CONCEPTOS BASICOS DE PROGRAMACION EN PYTHON
Variables, tipos de datos, cometarios en python, asignaciones de valores, operadores, conversiones entre tipos de datos, entrada y salida por consola. 

● Variables:
Un programa está compuesto por instrucciones que operan sobre información, y por dicha información, que se almacena en celdas de memoria llamadas variables a las que se accede a través de un nombre.
En Python el nombre de una variable puede contener letras, cifras, y símbolos unicode, pero no puede comenzar por un número, ni contener operadores, ni ser una palabra reservada del lenguaje de programación. Por ejemplo: i , año , x1, dni_alumno.

● Tipos de datos:
La información almacenada en variables y procesada por instrucciones puede ser de varios tipos. En Python estos son:
- int : 5 , 0x10 , 0b10 , 123123123123123123123123123123123123123123123123
- float : 0.5 , 0.5e7 , 1.79e308 , 1.8e308 , -1.8e308 , 5e-324 , 1e-325
- complex : 0.5 + 2j
- boolean : True / False
- string : 'hola mon' , "hola mon" , '' , 'hola\tadeu\n'
- lista : ['dll', 'dm', 'x', 'dj', 'dv', 'dss', 'dg']
- tupla : ('dll', 'dm', 'x', 'dj', 'dv', 'dss', 'dg')
- diccionario : {'Ana':20, 'Bob':40, 'Pep':30}
 
● Comentarios:
Los comentarios son un texto que añadimos al programa y que, a diferencia de las instrucciones, no se ejecuta. Su único propósito es aportar información a las personas que lean el código fuente del programa. El compilador o intérprete ignora los comentarios. En Python tenemos comentarios de una línea:  
instrucción # comentario
*Por ejemplo: # Esto es un comentario
Y también tenemos comentarios de varias líneas:
''' comentarios '''
*Por ejemplo:
''' Este comentario
comenzó en la línea de arriba
y acaba en esta línea '''
 
● Asignación:
 variable = expresión
Por ejemplo:
 x = 4
 x = y = 0
 x , y = 4 , 5
 x , y = [4 , 5]
 z = x - y
 a = 'hola'
 b = 'ase'
 c = a + ' k ' + b
 d = '-' * 100
 e = f'El resultado es {x}'
La instrucción de asignación evalúa una expresión “a la derecha del =” y la almacena en la variable “a la izquierda del =”, modificando el contenido de dicha variable. No confundir el = con una comparación o equivalencia.

● Operadores:
- aritméticos: + , - , * , / , // , % , **
- lógicos: < , <= , > , >= , == , != , and , or , not.
En caso de no recordar la precedencia, puedes utilizar paréntesis para agrupar operaciones.

● Conversión entre tipos de datos:
- a entero (tipo de datos “int”): int('25') , int(25.9) , round(25.9)
- a real (tipo de datos “float”): float('25.5') , float(25)
- a cadena (tipo de datos “string”): str(25.5)

● Entrada por teclado:
variable = input('texto a imprimir')
*Por ejemplo:
nombre = input('¿Cómo te llamas? ')
edad = int( input('¿Cuántos años tienes? ') )
r = float( input('¿Qué mide el radio? ') )
 
● Salida por consola:
print('text a imprimir', variables, ...)
Por ejemplo:
print('Hola', nombre)
print(a, b, c, sep='|', end=' ')
print('resultado','\t',3*5,'\n')
print('''
Este texto
ocupa varias líneas
''')
print('El nombre es %s y la edad %d años' % (nombre, edad))
print(f'El nombre es {nombre} y la edad {edad} años')
print(f'Área: {(PI*r*r):7.2f}')

## Tarea 2 - ALGUNOS CONCEPTOS MAS DE PROGRAMACION EN PYTHON
Bucles: for y while, matriz, instruccion break y continue

● Instrucción iterativa de condición inicial while … :
 while condición:
 instrucciones
Las instrucciones “desplazadas” unos espacios bajo el while sólo se repiten si la condición es
cierta. Cuando la condición deje de ser cierta no se ejecutarán más. Puede ser que no se ejecuten
nunca, si de buen comienzo la condición es falsa. Por ejemplo:
 i = 10
 while i > 0:
 print(i)
 i = i - 1
● Instrucción iterativa repetitiva for … :
 for variable in lista / string / range(inicio, final, incremento):
 instrucciones
Las instrucciones “desplazadas” unos espacios bajo el for se ejecutan para todos los elementos
de la lista, para todos los caracteres de la cadena de caracteres, o para todos los números del
rango. La variable tomará cada uno de los valores, del primero al último, y entonces se
ejecutarán las instrucciones de la iteración para dicho valor. Por ejemplo:
 for i in range(10, 0, -1):
 print(i)
 for c in 'Hola mundo':
 print(c)
 for e in ['manzana', 'fresa', 'platano']:
 print(e, len(e))
Otros ejemplos más complejos:
 a = ['Mary', 'had', 'a', 'little', 'lamb']
 for i in range(len(a)):
 print(i, a[i])
 for x in range(1, 11):
 for y in range(1, 11):
 print(f'{x:2} * {y:2} = {(x*y):3}')
 print()
 
 matriz = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
 for lista in matriz:
 for elem in lista:
 print(elem)
 
● Instrucción break que finaliza bucles:
Dicha instrucción sale inmediatamente del bucle while o for que se estaba ejecutando. El
siguiente ejemplo escribe “s t r Adios”:
 for val in 'string':
 if val == 'i':
 break # Finaliza las iteraciones
 print(val)
 print('Adios')
● Instrucción continue que finaliza iteraciones:
Dicha instrucción sale inmediatamente de la actual iteración del bucle while o for para pasar a
la siguiente. El siguiente ejemplo escribe “s t r n g Adios”:
 for val in 'string':
 if val == 'i':
 continue # Se va a la siguiente iteración sin acabar esta
 print(val)
 print('Adios')


## Tarea 3 - CONCEPTOS DE SCRUM 
Definición de conceptos vinculados a la metodología "Scrum". 

### CEREMONIAS
Existen 4 tipos de ceremonias en Scrum que son: 

- **SPRINT PLANNING MEETING (Reunión de planificación del sprint):**  
    Se realiza al iniciar cada Sprint y tiene como objetivo decidir lo que se va a incluir en el sprint.
- **DAILY SCRUM MEETING (Reunión Períodica):**  
    Se realiza en forma diaria y tiene una duración aproximada de 20 minutos. El objetivo de esta reunión se centra en responder estas 3 preguntas:
    - ¿Qué se hizo?
    - ¿Qué se va a hacer?
    - ¿Qué problemas se encontraron?
- **SPRINT REVIEW MEETING (Reunión de Revisión del Sprint):**  
    Se realiza al finalizar el Sprint y y tiene como objetivo definir qué es lo que se completó y qué es lo que quedó pendiente del Sprint.
    En esta  reunión debe estar presente el "Product owner".
- **SPRINT RETROSPECTIVE MEETING (Reunión de Retrospectiva del Sprint):**  
    Se realiza al finalizar el Sprint y su objetivo es dejar documentado qué es lo que funcionó y qué es lo que no, para permitir al equipo enfocarse en lo que salió       bien y en lo que se debe mejorar, pero no se enfoca al equipo en lo que salió mal.
  
 ### LOS ARTEFACTOS 
 Existen 3 tipos de artefactos en el Sprint que son:
  
 - **PRODUCT BACKLOG (Pila del Producto):**  
    Consiste en una lista con todos los requerimientos iniciales del producto que se va a desarrollar. Esta lista es dinámica, debido a que va evolucionando a medida       que lo hace el producto y el entorno del proyecto. Contiene la descripción de las tareas que se van a realizar para la ejecución de cada requisito, y están             organizadas en función de sus prioridades. También se indica una estimación del tiempo en que se va a desarrollar cada tarea. 
 - **SPRINT BACKLOG (Pila del Sprint):**  
    Consite en una lista formada por elementos seleccionados del Product Backlog, para ser desarrollados en el trasncurso de los diferentes Sprints del proyecto.
    El equipo identificará las funcionaidades principales para priorizar las que se entregarán en el Sprint.
    Se representa a través de una tablero de tareas, para que todo el equipo pueda conocer y hacer seguimiento de las tareas que tiene asignadas y a su grado de           desarrollo.
 - **INCREMENT (Incremento o Product Increment):**  
    Es la suma de todos los elementos del Product Backlog que fueron completados durante el Sprint. Es presentado en cada Sprint Review.
    Para definir de manera formal es estado del Increment se utiliza el **Definition of Done (Definición de terminado)**.
    Se trata de un acuerdo común que sirve para determinar cuando un elemento de la lista del producto está finalizado.
    Si un elemento del Product Backlog no cumple con la "Definition of Done", no se puede presentar en la Sprint Review.
  
 ### ROLES
 
 - **PRODUCT OWNER (Dueño del producto):**  
    Es el que representa la voz del cliente y es encargado de maximizar el valor del producto.
    Representa las partes interesadas (stakeholders) internas y externas y debe apoyar las necesidades, tanto de todos los usuarios del negocio, como las del equipo       scrum.
    Es el responsable de la aceptación del "Incremento". Se revisan los tiempos y que no se modofique lo que ya fue definido en el Sprint.
 - **SCRUM MASTER:**  
    Es responsable de promover y apoyar ayudando a todos a entender las reglas y valores de scrum.
    Se lo considera como al "guardían" del enfoque metodológico.
    Es un líder que está al servicio del Scrum Team, dado que es un coach, un faciltador y no un jefe. El equipo se auto-organiza.
    Y es el que se ocupa de resolver y levantar los impedimentos que puedan surgir durante el desarrollo del proyecto.
 - **SCRUM TEAM (Development Team / Equipo de Desarrollo):**  
    Está formado por profesionales como "Developers", "QA Testers" y "UX/UI Designers", que realizan el trabajo de entregar el "Incremento de Producto" (terminado),       para que se que se pueda poner en Producción al final de cada Sprint. Se trata de un equipo auto-organizado y que se autolidera.
    Sólo los miembros del Scrum Team participan en la creación del "Incremento del Producto", que es necesario y obligatorio para ser entregado en la "Sprint Review".
   
Link al documento de cátedra: https://drive.google.com/file/d/1pWzqXT_frVxdZ9GMLL0FNbEOYceqR0V5/view?usp=sharing

## Tarea 4 - CONCEPTOS DE BASE DE DATOS

**BASE DE DATOS y SQL:**  
Una base de datos es una herramienta para recopilar y organizar información. Las bases de datos pueden almacenar información sobre personas, productos, pedidos u otras cosas. Muchas bases de datos comienzan como una lista en una hoja de cálculo o en un programa de procesamiento de texto. A medida que la lista aumenta su tamaño, empiezan a aparecer redundancias e inconsistencias en los datos. Cada vez es más difícil comprender los datos en forma de lista y los métodos de búsqueda o extracción de subconjuntos de datos para revisión son limitados. Una vez que estos problemas comienzan a aparecer, una buena idea es transferir los datos a una base de datos creada con un sistema de administración de bases de datos (DBMS).  

**PARTES DE UNA BASE DE DATOS:**  
- **Tablas
- **Consultas
- **Informes  

**SQL:**  
Es un lenguaje de modelado de datos universal para manipular bases de datos relacionales.
Es el sistema de gestión de base de datos (SGBD) de código abierto más utilizado. Actualmente es desarrollado, distribuido y respaldado por ORacle Corporation, que ofrece una versión comercial (MySQL Enterprise). Está escrito en C y C++ y está disponible para múltiples plataformas.  
**DDL (Lenguaje de definición de datos):**  
Permite definir y modificar la base de datos a nivel estructura, es decir, crear bases de datos, crear tabls, modificar tablas.  
**DML (Lenguaje de manipulación de datos):**  
Se refiere a las sentencias que permiten manipular los datos, por ejemplo, agregar registros, mdificar o mostrar registros de una tabla.  
**MODELO RELACIONAL:**  
El modelo relacional, para el modelado y la gestión de bases de datos, es un modelo de datos basado en la lógica de predicados y en la teoría de conjuntos.
Su idea fundamental es el uso de relaciones. Estas relaciones podrían considerarse en forma lógica como conjuntos de datos llamados tuplas. Pese a que esta es la teoría de las bases de datos relacionales creadas por Codd, la mayoría de las veces se conceptualiza de una manera más fácil de imaginar, pensando en cada relación como si fuese una tabla que está compuesta por registros (cada fila de la tabla sería un registro o “tupla”) y columnas (también llamadas “campos”).
Es el modelo más utilizado en la actualidad para modelar problemas reales y administrar datos dinámicamente.
El modelo relacional desarrolla un esquema de base de datos (data base schema) a partir del cual se podrá realizar el modelo físico o de implementación en el DBMS.
Este modelo esta basado en que todos los datos están almacenados en tablas (entidades/relaciones) y cada una de estas es un conjunto de datos, por tanto una base de datos es un conjunto de relaciones. La agrupación se origina en la tabla: tabla -> fila (tupla) -> campo (atributo).
El Modelo Relacional se ocupa de:
- La estructura de datos
- La manipulación de datos
- La integridad de los datos
Donde las relaciones están formadas por:
- Atributos (columnas)
- Tuplas (Conjunto de filas)  
**MODELO ENTIDAD RELACIÓN:**  
Es el modelo conceptual más utilizado para el diseño conceptual de bases de datos. Fue creado por Peter Chen en 1976, Y está formado por un conjunto de conceptos que permiten describir la realidad mediante un conjunto de representaciones gráficas y lingüísticas.
**ENTIDAD:**  
Es cualquier tipo de objeto o concepto sobre el que se recoge información: cosa, persona, concepto abstracto o suceso. Por ejemplo: coches, casas, empleados, clientes, empresas, oficios, diseños de productos, conciertos, excursiones, etc. Las entidades se representan gráficamente mediante rectángulos y su nombre aparece en el interior. Un nombre de entidad sólo puede aparecer una vez en el esquema conceptual. Hay dos tipos de entidades: fuertes y débiles. Una entidad débil es una entidad cuya existencia depende de la existencia de otra entidad. Una entidad fuerte es una entidad que no es débil.
**RELACIÓN:**  
Es una correspondencia o asociación entre dos o más entidades. Cada relación tiene un nombre que describe su función. Las relaciones se representan gráficamente mediante rombos y su nombre aparece en el interior.
**TIPOS DE RELACIONES:**  
- **Binarias:**  
Son las relaciones típicas. Se trata de relaciones que asocian dos entidades.
- **Ternarias:**  
Relacionan tres entidades. A veces se pueden simplificar en relaciones binarias, pero no siempre es posible. 
- **Relaciones n-arias:**  
Relacionan n entidades 
- **Dobles:**  
Se llaman así a dos relaciones distintas que sirven para relacionar a las mismas relaciones. Son las más difíciles de manejar ya que al manipular las entidades hay que elegir muy bien la relacionan a utilizar para relacionar los datos. 
- **Reflexiva:**  
Es una relación que sirve para relacionar ejemplares de la misma entidad (personas con personas, piezas con piezas, etc.)  
**CARDINALIDAD:**  
Indica el número de relaciones en las que una entidad puede aparecer. Se anota en términos de: 
- **Cardinalidad mínima:**  
Indica el número mínimo de asociaciones en las que aparecerá cada ejemplar de la entidad (el valor que se anota es de cero o uno, aunque tenga una cardinalidad mínima de más de uno, se indica sólo un uno).
- **Cardinalidad máxima:**  
Indica el número máximo de relaciones en las que puede aparecer cada ejemplar de la entidad. Puede ser uno, otro valor concreto mayor que uno (tres por ejemplo) o muchos (se representa con n). Normalmente la cardinalidad máxima es 1 ó n

## Tarea 5 - GITHUB
Definición de conceptos relacionado a GitHub:

- ¿Qué es **GitHub**?
    
  GitHub es una plataforma de **social coding**, donde puedes **publicar repositorios de código remotos** que pueden trabajarse con el **sistema de control
  de versiones** Git.
  Te ofrece la posibilidad de **colaborar en otros poroyectos y publicar los tuyos propios**. Es de **código abierto**.
  
- GitHub Projects o Proyectos.
  
  GitHub perimite a los equipos de desarrollo coordinar, trackear y actualizar las tareas de un poryecto desde cualquier lugar, a fin de mantener los proyectos 
  transparenetes, no sólo para con los integrantes del equipo de desarrollo sino trambién clientes, usuarios, etc. Todo desde un mismo lugar y en una misma plataforma.
  
- GitHub Issuses o Tareas.

  Un **Issue** en GitHub es una **unidad de trabajo** designada para realizar una mejora en un sistema informático. Puede ser el arreglo de un fallo,
  una característica pedida, una tarea, una solicitud de documentación en específico y todo tipo de ideas o sugerencias al equipo de desarrollo. 
  
- GitHub Issues - Milestone.
  
  **Milestone**, son **categorias** que se utilizan para tener un filtro más adecuado a la información. Cada milestone puede tener una fecha programada indicando el
  tiempo que es necesario para cumplir cierta tarea.
  
Material Resumen de [GITHUB](https://docs.google.com/presentation/d/1Zu3uagYlQjuSH4wTqFqs80pzXrEey-fc/edit#slide=id.p1).

Clase Explicativa de [GITHUB](https://www.youtube.com/watch?v=T7FICkd1MAE&feature=youtu.be).

Sintaxis de escritura y formato básicos de [GITHUB DOCS](https://docs.github.com/es/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#styling-text)

## Tarea 6 - GIT
Definición de conceptos relacionado a GIT:

- ¿Qué es **GIT**?.

   Git es un **sistema de control de versiones (VCS)** distribuido **gratuito y de código abierto** diseñado para manejar desde proyectos pequeños a muy grandes,
   con velocidad y eficiencia.

    ✔️ Nos permite conocer los cambios realizados en los programas o software que vamos desarrollando con el paso del tiempo. Administra las distintas versiones.

    ✔️ Nace como necesidad de control para Kernel de Linux.
 
    ✔️ Coordinar el trabajo entre los diferentes desarrolladores del equipo.
 
    ✔️ Repositorio Locales y Remotos.
    
    🟢 **Git es un Sistema de control de Versiones _DISTRIBUIDO_**.  En inglés **DVCS** o (***distributed versión control system***).
    

- Ventajas de **GIT**.

   ✔️ Sitesma distribuido, que permite el trabajo incluso sin conexión.
   
   ✔️ Super rápido y ligero, optimizado para hacer operaciones de control muy rápidas.
   
   ✔️ Crear ramas y mezclarlas poco propenso a problemas.
   
   ✔️ La integridad de la información está asegurada gracias a su modelo de almacenamiento, que permite predecir este tipo de problemas.
   
   ✔️ Permite flujos de trabajo muy flexibles.
   
   ✔️ El concepto de área de preparación o *staging* permite versionar los cambios como nos convenga, no todo o nada.
   
   ✔️ Operaciones locales.
   
   ✔️ Copias instantáneas.

- Comandos Básicos de **GIT**.

   ✔️ **git init.**
    
   ✔️ **git add (file).**
    
   ✔️ **git status.**
    
   ✔️ **git commit.**
    
   ✔️ **git push.**

   ✔️ **git pull.**
    
   ✔️ **git clone.**


Material de lectura de [GIT](https://drive.google.com/file/d/1CF_MYiCKuUcdN2rdNBqQqCAIbE7NEVZF/view)

Material de [Git y GitHub](https://docs.google.com/presentation/d/e/2PACX-1vRVB4P-n8zfz_Fj1s22cEmHktgF9uUzI1KmKk3-8wiCZjKMqdDV2QiRSB5pdfs24w/pub?start=true&loop=true&delayms=30000&slide=id.p1) para instalar en sus PC el *Sistema de Control de Versiones GIT*

[Video Encuentro Sincrónico Uso de Git](https://www.youtube.com/watch?v=yOZmcZZ1kQw)

Aprende *ramas* en Git de forma interactiva [Learn Git Branching](https://learngitbranching.js.org/?locale=es_ES)

## Tarea 9 - Sistemas Gestores de Bases de Datos
¿Qué es un Sistema Gestor de Bases de Datos?
Un sistema gestor de base de datos o SGBD es un software que permite administrar una base de datos. Mediante este programa se puede utilizar, configurar y extraer información almacenada. Los usuarios pueden acceder a la información usando herramientas específicas de consulta y de generación de informes, o bien mediante aplicaciones al efecto.

Estos sistemas también proporcionan métodos para mantener la integridad de los datos, para administrar el acceso de usuarios a los datos y para recuperar la información si el sistema se corrompe. Permiten presentar la información de la base de datos en variados formatos. También pueden incluir un módulo gráfico que permita presentar la información con gráficos y tablas.

Generalmente se accede a los datos mediante lenguajes de consulta, lenguajes de alto nivel que simplifican la tarea de construir las aplicaciones. Un SGBD permite controlar el acceso a los datos, asegurar su integridad, gestionar el acceso concurrente a ellos, recuperar los datos tras un fallo del sistema y hacer copias de seguridad. Las bases de datos y los sistemas para su gestión son esenciales para cualquier área de negocio.

¿Cuáles son SGBD más usados?
SGBD Relacionales: MySql / SQLite / PostgreSQL / SQL Server / Oracle / Microsoft Access

SGBD No Relacionales: MongoDB / Redis / AzureDB / Cassandra / DynamoDB / CouchDB 

## Tarea 10 - El Dilema de las Redes Sociales
¿De qué trata el documental " El Dilema de las Redes Sociales?
Este documental está basado en testimonios de ex empleados de Google, Facebook, Twitter, Instagram y Pinterest que cuentan cómo participaron del desarrollo de tecnologías que sirvieron para polarizar opiniones, viralizar teorías conspirativas y consumir todo lo que dictan las pantallas. Desinformación, opiniones polarizadas, la necesidad imperiosida de agradar al otro y la adicción a las pantallas son algunas de las consecuencias nocivas que llegaron de la mano de los gigantes informáticos.

Netflix define a esta producción como un “híbrido entre documental y drama que ahonda en el negocio de las redes sociales, el poder que ejercen y la adicción que generan en nosotros: su carnada perfecta".

El usuario tiene una necesidad imperiosa de recibir una recompensa que llega en forma de comentario, un “me gusta”, un retuit o un feed que se va actualizando de manera continua. Las empresas han creado plataformas que buscan sacar provecho de esa dopamina, un neurotransmisor que participa en la motivación y recompensa ante estímulos placenteros, que se estimula cuando llega una notificación que indica que alguien se fijó en nosotros.

Reflexiones sobre el documental
"Hay dos industrias que llaman a sus clientes usuarios: la de las drogas ilegales y la del software".

Las Redes Sociales son herramientas diseñadas para engancharnos y manipularnos.

"Si no pagas por el producto, el producto eres tú". Solo durante la pandemia de coronavirus, el fundador de Facebook habría ganado más de US$30.000 millones.

¿Cómo habría podido Zuckerberg ofrecer servicios gratuitos y hacerse más rico cada día? Según los entrevistados de "El dilema de las redes sociales", el estadounidense y sus colegas jefes ejecutivos ganan dinero con el tiempo. Explican que cuantas más horas pasa un usuario conectado a sus redes sociales, más información detallada sobre hábitos, gustos y características de consumo acaba exponiendo. Estos datos son recopilados y organizados mediante algoritmos que mapean los me gusta y los comentarios, analizan los tiempos de lectura y la exposición a las imágenes, y alimentan enormes servidores. Luego, se ofrece información sobre los usuarios a los clientes, desde marcas de cosméticos y universidades hasta políticos y gobiernos, que pagan millones de dólares por mostrar productos o ideas a audiencias que estén dispuestas a participar.

Consejos para protegerse
Las notificaciones serían la principal herramienta de manipulación en las redes. La sugerencia de los entrevistados es deshabilitarlas, para acceder la red social cuando uno lo desee, y no al revés.

No embarcarse en las recomendaciones de videos o contenidos sin reflexionar. Preferiblemente, haz las búsquedas tú mismo de lo que te interesa. Las referencias suelen seguir una lógica diseñada para llamar a los anunciantes, y no necesariamente para informar.

Sigue a personas o páginas con las que no estás de acuerdo. Así "explotas la burbuja" y te animas a profundizar en el conocimiento, a cuestionarte sobre certezas absolutas y a aprender de las diferencias, incluso si te disgustan.

Desconecta una hora antes de acostarse. Deja tu teléfono, tableta y computadora portátil en otra habitación y en modo avión.

Valora tus clics y tu tiempo. La forma en que te relacionas con una publicación vale "oro". Así es como las redes ganan dinero, así que ten esto en cuenta antes de hacer clic en un anuncio o publicación.


## TAREA 11 - TUTORIAL PARA PROYECTO EN GITHUB

Se adjunta link al documento tutorial: 
https://drive.google.com/file/d/16zbNj-TficysD2MRCs8sV4ATs140L9iA/view?usp=sharing


## Tarea 12 - LA ÉTICA EN LA INFORMÁTICA

La ética es una disciplina filosófica que se define como "principios directivos que orientan a las personas en cuanto a la concepción de la vida, el hombre, los juicios, los hechos, y la moral”.

·Definición

   La ética en la informática es una nueva disciplina que pretende abrirse campo dentro de las éticas aplicadas por lo cual encontramos varias definiciones.  
   
1_Se define "como la disciplina que analiza los problemas éticos que son creados por la tecnología de los ordenadores o también los que son transformados o agravados por la misma". Es decir, por las personas que utilizan los avances de las tecnologías de la información.  

2_"Es el análisis de la naturaleza y el impacto social de la tecnología informática y la correspondiente formulación y justificación de políticas para un uso ético de dicha tecnología", esta definición esta relacionada con los problemas conceptuales y los vacíos en las regulaciones que ha ocasionado la tecnología de la información.

3_También se define a la EI "como la disciplina que identifica y analiza los impactos de las tecnologías de la información en los valores humanos y sociales" . Estos valores afectados son: la salud, la riqueza, el trabajo, la libertad, la democracia, el conocimiento, la privacidad, la seguridad o la autorrealización personal.

·Objetivos de la EI (Ética Informática)

   Descubrir y articular dilemas éticos claves en informática. 
Determinar en qué medida son agravados, transformados o creados por la tecnología informática. 
Analizar y proponer un marco conceptual adecuado y formular principios de actuación para determinar qué hacer en las nuevas actividades ocasionadas por la informática en las que no se perciben con claridad líneas de actuación. 
Utilizar la teoría ética para clarificar los dilemas éticos y detectar errores en el razonamiento ético. 
Proponer un marco conceptual adecuado para entender los dilemas éticos que origina la informática y además establecer una guía cuando no existe reglamentación de dar uso a Internet. 

·Los problemas éticos más significativos en Internet

-La privacidad: no tanto la posibilidad (real) de fallos en los sistemas de correo que provoquen mensajes que van a lugares equivocados, si no más bien la intromisión intencional. Esta intromisión puede ser desde la del compañero del trabajo que lee nuestro trabajo hasta el sistemático intervencionismo estatal.
-La Identidad: es posible esconder la verdadera identidad a la hora de intervenir en una conversación. 
-La Inversa: la capacidad de manipulación se traslada de los mecanismos habituales a la sociedad (como la posición social económica) a las habilidades de aquellos que manejan mas el medio o que pueden intervenir de manera subrepticia en las comunicaciones ajenas.


## Tarea 13 - LA MORAL

·Definición

Se refiere a los códigos de normas impuestos por una sociedad para regular la conducta o el comportamiento de los individuos. Abarca reglas tradiciones y valores compartidas por una sociedad en determinado momento de su historia. Se dice que una persona es moral cuando actúa de acuerdo a las normas costumbres y valores de su sociedad. Aunque estos pueden estar en contra de la ética de esa misma persona.

·Campo de uso

Los códigos morales se aplican a la vida cotidiana y a la conducta humana, nos dice como es el modo correcto de actuar en cada situación y lugar. En este sentido es la sociedad inmersa en una cultura determinada la que establece el código moral, por el que debe regirse todos sus integrantes. Faltar al código moral suele acarrear sanciones sociales, y penales en algunos casos.

·Ejemplos de comportamiento moral

Cortesía verbal. No mentir. A menos que se trate de una mentira socialmente aceptada. Decir a un enfermo terminal que va a mejorarse. A una persona desanimada y desalineada que tiene buen aspecto que está bien aunque la persona se sienta mal.


## TAREA 14 - CONCEPTO DE PHYTON

Python es un lenguaje de programación de alto nivel, interpretado, orientado a objetos y de uso generalizado con semántica dinámica, que se utiliza para la programación de propósito general.
Python fue creado por Guido van Rossum, nacido en 1956 en Haarlem, Países Bajos. Velozmente se extendio en todo el mundo el programa, y fue trabajo de miles de programadores, testers, usuarios (muchos de ellos no son especialistas en TI) y entusiastas, pero hay que decir que la primera idea (la semilla de la que brotó Python) llegó a una cabeza: la de Guido. 

Los objetivos de Python

En 1999, Guido van Rossum definió sus objetivos para Python:

- Un lenguaje fácil e intuitivo tan poderoso como los de los principales competidores.
- De código abierto, para que cualquiera pueda contribuir a su desarrollo.
- El código que es tan comprensible como el inglés simple.
- Adecuado para tareas cotidianas, permitiendo tiempos de desarrollo cortos.

Unos 20 años después, está claro que todas estas intenciones se han cumplido. Algunas fuentes dicen que Python es el lenguaje de programación más popular del mundo, mientras que otros afirman que es el tercero o el quinto. Python no es una lengua joven pero es maduro y digno de confianza.

¿Qué hace especial a Python?
- Es fácil de aprender: el tiempo necesario para aprender Python es más corto que en muchos otros lenguajes; esto significa que es posible comenzar la programación real más rápido.
- Es fácil de enseñar: la carga de trabajo de enseñanza es menor que la que necesitan otros lenguajes; esto significa que el profesor puede poner más énfasis en las técnicas de programación generales (independientes del lenguaje), no gastando energía en trucos exóticos, extrañas excepciones y reglas incomprensibles.
- Es fácil de utilizar: para escribir software nuevo; a menudo es posible escribir código más rápido cuando se emplea Python.
- Es fácil de entender: a menudo, también es más fácil entender el código de otra persona más rápido si está escrito en Python.
- Es fácil de obtener, instalar y desplegar: Python es gratuito, abierto y multiplataforma; no todos los lenguajes pueden presumir de eso.

¿Dónde podemos ver a Python en acción?
Lo vemos todos los días y en casi todas partes. Se utiliza ampliamente para implementar complejos Servicios de Internet como motores de búsqueda, almacenamiento en la nube y herramientas, redes sociales, etc. Cuando utilizas cualquiera de estos servicios, en realidad estás muy cerca de Python. Muchos testers de proyectos de TI han comenzado a usar Python para llevar a cabo procedimientos de prueba repetibles. 

Material 
https://docs.google.com/document/d/1St2gGsp1rRw8gLAz63lNfPaTJFVUf5jB/edit?usp=sharing&ouid=111486841225754569920&rtpof=true&sd=true

## TAREA 15 - PHYTON Y DESARROLLO WEB

El desarrollo web en Python no siempre es la elección principal para construir el lado del servidor de los sitios web. Este lenguaje es multipropósito, lo que significa que es utilizable en la mayoría de los campos de programación.
Por ejemplo, los expertos promueven el Python como el lenguaje ideal para el aprendizaje automático y la creación de redes neuronales. Además, Python es también la elección estándar para realizar análisis de conjuntos de datos a gran escala para averiguar las tendencias del mercado, los precios medios y predecir patrones futuros.
Sin embargo, Python para el desarrollo web es también una sólida opción, atrayendo a la gente con su sintaxis simple, una variedad de marcos de trabajo, y un fuerte ecosistema general. Instagram, una de las redes sociales dominantes, utiliza Python para su plataforma, recibiendo millones de visitantes al día.

Pros de Desarrollo web en Python

Construir un sitio web con Python significa que se produce un código responsable de ejecutarse en el servidor en lugar de en el navegador. La creación del lado del servidor o del backend de su sitio web es crucial para almacenar la información del usuario (como uno de los ejemplos).
El backend también gestiona la forma en que la información viaja hacia y desde el servidor. Adicionalmente, Python para el desarrollo web será el que controle la autenticación de los usuarios. Construir el lado del servidor no es una tarea complicada, pero asegurar la estabilidad y seguridad de los procedimientos puede llevar mucho tiempo. Por lo tanto, los frameworks son especialmente útiles para cubrir todos estos aspectos.

Principales áreas de uso de Python

Python es un lenguaje de propósito general y multiplataforma, con una completa gama de funcionalidades y bibliotecas para la realización de todo tipo de trabajos. Por ello, los usos del lenguaje son amplios. Sin embargo, la potencia del lenguaje en términos de rendimiento y capacidad de trabajar con gran cantidad de datos, lo hacen muy habitual en el ámbito científico, big data e inteligencia artificial.
También Python se usa bastante a nivel de web, junto con frameworks como Django o Flask, que permiten realizar sitios basados en contenido con acceso a base de datos y por supuesto servicios web API REST. Debido a las capacidades de Python, se suele elegir para proyectos de embergadura, que requieran el tratamiento de grandes cantidades de información o usuarios. No se suele usar Python para la web sin poner por encima algún framework, aunque también sería posible, pero no tan directo como lenguajes que directamente devuelven HTML como PHP.
Python es capaz de hacer aplicaciones de interfaz gráfica por medio de ventajas, aunque no es tan usado en este área como en la creación de programas de consola. También existen diversos entornos de ejecución de Python que permiten crear programas que se escriben y se ejecutan en el mismo ambiente, como los Jupyter Notebooks, lo que permite usar Python sin necesitar trabajar con IDEs o terminal, mejorando las prestaciones en la creación de programas o scripts para inteligencia artificial o big data.



https://docs.google.com/document/d/1brRkWMpxCvZIvgxFlRsKQs-av5-84g8Z/edit?usp=sharing&ouid=111486841225754569920&rtpof=true&sd=true



#  CURRICULUM VITAE: secciones a incluir
Datos personales:

·         Nombre y apellido.

·         Número de documento.

·         Fecha de nacimiento.

·         Estado civil.

·         Nacionalidad.

·         Información de contacto: dirección, teléfono y correo electrónico.

Experiencia laboral

Si estás buscando tu primer trabajo, para completar esta sección de tu CV tené en cuenta:

·         Pasantías, becas u otras formas que combinan los estudios con el trabajo.

·         Prácticas remuneradas.

·         Trabajos voluntarios en el barrio, parroquia, club u otra institución.

·         Colaboraciones en comercios o trabajos para familiares, conocidos o vecinos.

Si tenés experiencia laboral, detallá tus empleos anteriores. Es importante que sobre cada uno de ellos indiques:

·         Nombre y rubro de la empresa o del empleador.

·         Puesto ocupado.

·         Año de ingreso y egreso.

·         Breve punteo de las tareas desempeñadas.

·         Formación académica

Mencioná tus estudios, tanto los que están en curso como los que hayas terminado. Acordate de incluir la siguiente información:

·         Título obtenido o estudios en curso.

·         Nombre de la institución educativa.

·         Año de graduación o último año de cursada.

·         Formación complementaria

También podés hacer referencia a otros cursos realizados, independientemente de los estudios académicos, que puedan resultar de interés para el puesto. Detallá:

·         Nombre del curso.

·         Institución donde lo hiciste.

·         Año de cursada.

·         Estado: en curso, finalizado, abandonado.

·         Idiomas / Informática

En estas dos secciones simplemente tenés que mencionar el idioma o programa que manejes y el nivel de conocimiento (básico, intermedio o avanzado).

Intereses personales

Esta sección es opcional y sirve para indicar intereses personales y actividades recreativas.

En un puesto donde se requiera buen estado físico, puede ser útil aclarar que practicás algún deporte, por ejemplo. Pero no tiene ningún sentido informar que te gustan los videojuegos o escuchar música.


#Modelos de curriculum vitae
Modelos de currículum

Hay dos formatos que son los más utilizados para elaborar un CV y se diferencian en la manera de organizar la información:

1 - Cronológico: los datos se ordenan de manera temporal. Primero va lo más actual, para

que quien los lea pueda ver rápidamente tu trayectoria y tu progreso. Este es el formato que

más se usa.

¿Cuándo utilizarlo?

 Cuando tu experiencia laboral reciente sea similar a la del puesto de trabajo al que te estás presentando.

Si tu experiencia laboral fue llevándote a ocupar puestos cada vez más calificados y con mayor responsabilidad y querés destacar este crecimiento.

2 - Funcional: se pone foco y se agrupa la información en los conocimientos adquiridos, funciones, tareas desempeñadas y no tanto en la experiencia laboral reciente.

¿Cuándo utilizarlo?

Cuando quieras destacar las habilidades y experiencias en un área determinada.

Cuando tengas “baches” laborales por haber estado mucho tiempo sin trabajar.

**Tarea 19 - Tipos de bases de datos**
Existen diferentes tipos de bases de datos y a continuación se mencionaran los más relevantes.

-Base de datos relaciona:
Utilizan el modelo relacional y es mejor usarlas cuando los datos a utilizar son consistentes y ya tienen estructura planificada.

-Base de  datos orientadas a objetos:
Se basan en la programación orientada a objetos, por lo que los datos y todos sus atributos, están unidos como un objeto.
Se gestionan mediante sistemas de gestion de bases de datos orientados a objetos (OODBMS-OBJECT ORIENTED DATA BASE MANAGEMENT SYSTEM).
Funcionan bien con lenguajes de programación como C++ y Java.

-Bases de datos jerárquicas:
Fueron originalmente un esfuerzo por parte de IBM a principio de  los años 60.
Se usan generalmente para soportar aplicaciones de alto rendimiento y alta disponibilidad.
Almacenan la información en una estructura que enlaza los registros en forma de estructura de árbol, donde un nodo padre de información puede tener varios nodos hijo y  así sucesivamente.

Lasbases de datos también se pueden clasificar según su almacenamiento en :

-Bases de datos centralizada:
Es una BD almacenada en su totalidad en un solo lugar físico, es decir, unas sola maquina y una sola cpu, en donde los usuarios trabajan en terminales que solo muestran resultados.

-Bases de datos distribuidas:
Un conjunto de múltiples BD  lógicamente relacionadas las cuales se encuentran distribuidas en diferentes espacios lógicos y geográficos e interconectados por unared de comunicaciones.


**Tarea 20 - Ventajas y desventajas de la utilización de una base de datos.**

**VENTAJAS**
. Independencia de los datos y los programas y procesos: Esto permite modificar los datos sin modificar el código de las aplicaciones.

.Integridad de los datos:  Mayor dificultad de perder los datos  o de realizar incoherencias con ellos.

.Menor redundancia:  No hace falta tanta repetición de datos, solo se indica la forma en que se relacionan.

.Mayor seguridad en los datos: Al limitar el acceso a los usuarios, cada tipo de usuario podrá acceder a unas cosas.

.Datos más documentados:  Gracias a los metadatos que permiten describir la información de la base de datos.

.Acceso a los datos más eficiente:  La organización de los datos produce un resultado más óptimo en rendimiento.

.Menor espacio de almacenamient: Gracias a una mejor estructuración de los datos.

.Acceso simultáneo a los datos: Es más fácil controlar el acceso de usuarios de forma concurrente.


**DESVENTAJAS**
.Instalación costosa: El control y administración de bases de datos requiere de un software y hardware poderoso.

.Requiere personal cualificado: Debido a la dificultad de manejo de este tipo de datos.

.Implantación larga y difícil: Debido a los puntos anteriores la adaptación del personal es mucho más complicada y lleva bastante tiempo.

.Ausencia de estándares reales: Lo cual significa una excesiva dependencia hacia los sistemas comerciales del mercado.Aunque ,hoy en día, una buena parte de esta tecnología está aceptada como estándar de hecho.


