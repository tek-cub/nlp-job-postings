## Noticia 
- Esta es una traducción española del [README](https://github.com/tek-cub/nlp_job-postings#readme) oficial inglés.
- Para actualizar convenientemente el repositorio, el script de Bash *git-flow.sh* fue añadido.

## Proyecto: Procesamiento de Lenguaje Natural (PLN) de Datos de Avisos de Empleo
Esta es una implementación del Manning liveProject [Decoding Data Science Job Postings to Improve Your Resume](https://www.manning.com/liveproject/decoding-data-science-job-postings-to-improve-your-resume). La meta es para investigar información sobre el mercado de empleo de la ciencia de datos desde los avisos de empleo raspados del Internet (además en cuanto al CV de un usuario). Entonces los buscadores de trabajo podrían utilizar dicha información para mejorar su probabilidad de éxito, ayudándolos a priorizar su enfoque.
 
Un resumen del alcance y las tareas en este proyecto:
- procesando datos con Pandas;  PLN y aprendizaje automático con Scikit-learn
- estadísticas para entender mejor los problemas, hacer decisiones, y interpretar resultados
- extraer, transformar, cargar el dataset de avisos de empleo desde archivos de HTML (raspados del Internet)
- vectorizando texto (un CV de un usuario y avisos de empleo), por medio del TF-IDF word embedding 
- puntuando las similitudes (coseno) del CV de un usuario con las entradas en el dataset
- extracción de atributos de datos elegidos usando una descomposición en valores singulares: reduciendo su dimensionalidad
- agrupando k-medias de los atributos extraídos: permitiendo el análisis de diferentes tipos de requisitos de trabajo
- visualizando los contenidos de las agrupaciones, es decir, palabras más frecuentes: para representar los artículos deseados desde empleadores 
- puntuando las similitudes del CV de un usuario a una agrupación

Las técnicas principales empleadas en el análisis son las comparaciones de similitud coseno y una agrupación de k-medias. A la inversa, las técnicas de este proyecto se puede usar desde las perspectivas de los que hacen las contrataciones, quienes desean filtrar los candidatos hacia un nivel manejable, o para agruparlos dado sus similitudes para entender mejor los candidatos.

Manning proveyó los datos de muestra (avisos de empleo) con no detallas sobre su colección. Pues no hay presunciones de su fidelidad con respecto a una población (que no fue definida firmemente): esto no fue parte del proyecto. Desde el punto de vista del proyecto, es siendo presumido que los datos fueron debidamente muestreados de una población bien definida.

## Instrucciones

### 1. Entorno
El proyecto fue construido usando Python 3.7, y la [Distribución de Anaconda Python](https://www.anaconda.com/distribution/#download-section) es recomendada. Después de instalar Anaconda, ejecutando `conda env create -f environment.yml` creará un entorno de conda llamado *nlp_job-postings*. Activar y desactivar el entorno con `conda activate nlp_job-postings` y `conda deactivate`. Si el entorno está activado, Jupyter Notebook ejecutará dentro de eso terminal vía `jupyter notebook`.

### 2. Datos                                     
*data/* tiene lo que es necesario para ejecutar los cuadernos como declarado abajo en la sección de Código, sino *data/html_jop_postings.zip* necesita ser descomprimido de antemano. El documento de CV y las salidas de datos del código son almacenados en esta carpeta.

### 3. Configuración
*config.json* contiene parámetros que se puede cambiar para alterar el comportamiento del proyecto; a saber, la gama de n-gram para los documentos y el número de agrupaciones usado por el algoritmo de k-medias. Sin embargo el valor de *k_hyperparam* es asignado en el tercer cuaderno *3_clustering.ipynb*.

### 4. Código
Los cuadernos y sus celdas son pretendidos ser ejecutados secuencialmente (como indicado por los prefijos de archivo, 1–4). Comentarios en el código principalmente sirven para decir explícitamente el flujo de tareas; también son usados para documentar algunos de los métodos y reflexiones del análisis. El objetivo de cada cuaderno es declarado al principio del archivo.
