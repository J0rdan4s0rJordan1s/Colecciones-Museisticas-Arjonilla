import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'dart:io';

class Colecciones extends StatefulWidget {
  Colecciones({super.key});

  @override
  _ColeccionesState createState() => _ColeccionesState();
  }

  class _ColeccionesState extends State<Colecciones> {
    final TextEditingController _searchController = TextEditingController();
    final List<Map<String, String>> colecc = [
    {
      "title": "Introducción",
      "image": "assets/images/colecciones/colecciones-arjonilla-1.jpg",
      "audio": "audios/colecciones/colecciones-1.mp3",
      "descripcion": "Conocido también en la localidad como “Cuartel Viejo” o Escuela de Cerámica, se trata de un edificio de finales del siglo XVII. Con dos cuerpos adintelados, en el superior se abre un balcón de forja que aparece coronado por un frontón partido. De entre sus moradores destacamos el matrimonio formado por D. Bernardo Jiménez Cano y Doña Leonor Pérez de Vargas y Zambrana. Durante este tiempo y buena parte del Siglo XIX la casa palaciega estuvo ricamente amueblada con interesantes cuadros devocionales e históricos. Asimismo poseía una carta manuscrita de Santa Teresa, y una reliquia de la misma Santa y una interesante biblioteca. A principios del S.XX la casa pertenecía a la familia Parras Jiménez habitando en ella el célebre cura Parras y con posterioridad, los últimos propietarios la venderán al Ayuntamiento de la localidad, que lo ha usado para diferentes funciones: escuela de cerámica, cuartel viejo o sede de dependencias de organismos públicos. Este edificio hoy en día es el enclave museístico de la localidad, que alberga las colecciones de cerámica histórica más importantes de la provincia de Jaén y los museos arqueológicos, de bellas artes, sala Antonio de Jaén, Sala de Artes y Costumbres Populares, así como una colección de fotografías antiguas... para el disfrute de los arjonilleros y arjonilleras y de los vecinos de todos los rincones de la geografía que quieran acercarse para disfrutar de nuestra cultura y patrimonio."
    },
    {
      "title": "Colecciones Museísticas",
      "image": "assets/images/colecciones/colecciones-arjonilla-2.jpg",
      "audio": "audios/colecciones/colecciones-2.mp3",
      "descripcion": "El Palacio del Marqués de la Merced es la sede de las Colecciones Museísticas de Arjonilla. Un proyecto fraguado en el año 2014 y que vio la luz con la inauguración de las mismas el pasado 13 de Agosto de 2018. El edificio se encuentra en las inmediaciones del castillo, en el principal enclave histórico-arqueológico del municipio. Se trata de un edificio de finales del siglo XVII, cuya fachada se compone de dos cuerpos adintelados; en el superior se abre un balcón de forja que aparece coronado por un frontón partido. El museo contiene una sala dedicada a la arqueología del municipio, ya que éste cuenta con vestigios prehistóricos que se remontan a la Edad del Cobre, además de restos ibero-romanos, visigodos, medievales etc. En esta sala se podrá hacer un recorrido histórico que dará a conocer el proceso de formación del municipio de Arjonilla desde sus orígenes hasta la actualidad. Siendo la cerámica uno de los pilares fundamentales del municipio, no podía faltar en este museo una sala dedicada a este oficio; por ello el museo contiene la Sala de Reproducciones de cerámica histórica del alfarero Manuel Bejarano, la cual contiene reproducciones de cerámica griega, ibérica, romana e hispanomusulmana procedente de yacimientos arqueológicos de toda la geografía jiennense. La calidad presente en estas reproducciones hace que la exposición sea una de las más importantes y solicitadas en toda la provincia de Jaén, siendo visitada por una gran cantidad de turistas al año. Además el edificio alberga desde hace muy poco tiempo una sala dedicada a las tradiciones de Arjonilla como es la Sala de Artes y Costumbres populares, y el despacho de un importante personaje ilustre del municipio, Antonio de Jaén, una colección de cuadros de arte contemporáneo y una exposición permanente de fotografías"
    },
    {
      "title": "Sala de Antonio Pérez de Jaén",
      "image": "assets/images/colecciones/colecciones-arjonilla-3.png",
      "audio": "audios/colecciones/colecciones-3.mp3",
      "descripcion": "Sala dedicada al ilustre vecino de Arjonilla, D.Antonio Pérez de Jaén. Una persona muy ligada al mundo de la cultura, ya que fue una persona que destacó en varios sectores culturales: literatura, cine, música, radio...Antonio Pérez, nacido en Arjonilla, adoptó el nombre artístico de “Antonio de Jaén” y con él se dio a conocer en los ambientes artísticos nacionales. Cursó estudios en la Salle de Jerez de la Frontera, Instituto Cardenal Cisneros de Madrid, Instituto de Investigaciones y Experiencias Cinematográficas. Realizó programas en Radio Jerez, Radio España de Madrid y Radio Nacional de España. Colaboró como guionista o director en siete películas. Fue Premio de Documentales del Ministerio de Información y Turismo. Fue Consejero de la Sociedad General de Autores de España. Compuso numerosas canciones, comedias musicales y otros títulos literarios, que le confirman un poeta melódico, sencillo y directo. Confesó siempre una profunda devoción por su pueblo, y por ello, a pesar de su muerte en Madrid, por voluntad propia, fue trasladado su cadáver a Arjonilla. Ese profundo amor a su pueblo quedó plasmado en numerosas canciones y poesías que le dedicó a él y a sus gentes. También es el autor del conocido documental en blanco y negro realizado sobre Arjonilla, en el que se recoge el modo de vida de los arjonilleros en aquellos años, así como instantes de la celebración de la Fiesta de Espigas. También realizó otro documental en color ya en los años 70. Tras su muerte, la familia del artista donó al consistorio municipal el despacho donde Antonio de Jaén solía trabajar, espacio que hoy en día encontramos en la primera planta de las Colecciones Museísticas de Arjonilla, conjuntamente con otros objetos comunicativos, (máquinas de escribir, cámaras de cine...)."
    },
    {
      "title": "Sala de Arqueología",
      "image": "assets/images/colecciones/colecciones-arjonilla-4.png",
      "audio": "audios/colecciones/colecciones-4.mp3",
      "descripcion": "Las Colecciones Museísticas contienen una sala dedicada a la arqueología del municipio, ya que éste cuenta con vestigios prehistóricos que se remontan a la Edad del Cobre, además de restos ibero-romanos, visigodos, medievales etc. En esta sala se podrá hacer un recorrido histórico que dará a conocer el proceso de formación del municipio de Arjonilla desde sus orígenes hasta la actualidad: Edad de piedra (Paleolítico – Neolítico), Edad de los Metales, Íberos, Romanos y la Hispania Musulmana, con todo tipo de piezas de muy diversas funciones."
    },
    {
      "title": "Exposición concurso de pintura Arjonilla",
      "image": "assets/images/colecciones/colecciones-arjonilla-5.jpeg",
      "audio": "audios/colecciones/colecciones-5.mp3",
      "descripcion": "El área de cultura y turismo del Ayuntamiento organiza desde hace más de 30 años el Concurso Nacional de Pintura “Villa de Arjonilla” y Pintor Matías Ruz en su modalidad de pintura seca (gran parte de sus ediciones) y algunas de ellas en modalidad de pintura rápida. En esta planta de las Colecciones Museísticas acoge una selección de obras pictóricas de arte contemporáneo de todas estas ediciones, muchas de ellas realizadas por grandes artistas reconocidos a nivel nacional, así como los distintos premiados/asa nivel local."
    },
    {
      "title": "Sala de arte y costumbres populares",
      "image": "assets/images/colecciones/colecciones-arjonilla-6.jpg",
      "audio": "audios/colecciones/colecciones-6.mp3",
      "descripcion": "Otra de las salas que integran estas Colecciones Museísticas de nuestra localidad. Montada gracias a la donación y colaboración desinteresada de vecinos/as de nuestra localidad, hoy en día alberga una amplia gama de objetos y enseres usados por nuestros antepasados, como objetos de cocina y enseres de hogar, numismática y armas de fuego, carpintería, instrumentos musicales, aperos de labranza y artesanía del barro, así como una colección de obras pictóricas, (con escenas de labores antiguas), cedidas por la familia de Diego Gómez."
    },
    {
      "title": "Sala de reproducciones históricas de cerámica de Manuel Bejarano",
      "image": "assets/images/colecciones/colecciones-arjonilla-7.jpeg",
      "audio": "audios/colecciones/colecciones-7.mp3",
      "descripcion": "Esta sala de Reproducciones Históricas de Cerámica han sido donadas en su totalidad por el artesano local Manuel Bejarano Zafra, una persona que procede de una familia que se ha dedicado toda su vida al tradicional oficio del barro y que, a través de los años, estudios, investigaciones y sobre todo, dedicación, ha sido adquiriendo la gran cualidad de realizar y reproducir el proceso de elaboración de piezas de cerámica históricas. El origen de esta sala es una exposición temporal en el Museo de Jaén junto a piezas originales del mismo, que tras su finalización, este artesano local decide donar íntegramente este trabajo histórico a las Colecciones Museísticas de Arjonilla. La exposición es un recorrido por algunos de los períodos más importantes de la historia de la humanidad y donde la cerámica ha tenido un papel destacado: cerámica griega en las tumbas íberas, cerámica ibérica, el torno y su evolución histórica, la cerámica romana y la cerámica hispano musulmana, terminando la retrospectiva con los famosos silbatos o “piticos” de barro. Previamente se hace una explicación didáctica del proceso de elaboración de una pieza de cerámica, desde la preparación de la arcilla, secado, modelado.....Un trabajo único y muy singular, que hace de esta sala una de las principales salas de esta materia histórica en nuestra provincia."
    },
    {
      "title": "Biografía de Manuel Bejarano Zafra",
      "image": "assets/images/colecciones/colecciones-arjonilla-8.jpg",
      "audio": "audios/colecciones/colecciones-8.mp3",
      "descripcion": "Procede de una familia dedicada al tradicional oficio del barro e ingresó en 1968 en la Escuela Municipal de Cerámica de Arjonilla. Allí cursó estudios de dibujo, pintura, modelado y torno. Empezó su carrera artística como ceramista en diferentes talleres locales. En ellos perfeccionó sus conocimientos sobre el torno de alfarero, matricería y pintura. Con el escultor Florencio Molina amplió sus conocimientos de modelado. Dotado de prodigiosas inquietudes culturales, pronto comenzó con sus investigaciones acerca de la cerámica histórica. En los últimos años, el despliegue productivo ha sido especialmente profuso. En esta sala, este artista, artesano y obrero de la cerámica, presenta un conjunto de reproducciones y en ellas se retrata: nos da la oportunidad de acercarnos a su personalidad . Una personalidad modelada a base de austeridad, constancia, flexibilidad mental y pensamiento positivo al intentar dar respuestas a sus inquietudes investigativas como ceramista. Para ello, ha indagado y experimentado en todo el proceso productivo de la cerámica histórica, desde la selección de los diferentes tipos de arcilla para diversos usos, hasta los métodos, tecnologías y recursos empleados para conseguir los resultados que se pueden apreciar en esta exposición. Gran parte de su obra se encuentra en colecciones particulares y en los siguientes museos: Museo de Jaén, Museo de Historia de Andalucía (Granada), Colecciones Museísticas de Arjona y Museo de los Santos en Arjona. Los proyectos más relevantes en los que se han podido apreciar sus capacidades como experto en réplicas y reproducciones históricas de cerámica son:• 1998-1999. Realización de las reproducciones de cerámica para la exposición itinerante La Cámara de Toya.• 2008/2009. Participación en la exposición Arjonilla en la prehistoria.• 2009. Elaboración de piezas pare el museo de historia de Andalucía, en Granada.• 2011.   • Realización de reproducciones de cerámica en el Centro reinterpretación de la Cultura Ibérica de Peal de Becerro.   • Fabricación de reproducciones de cerámica de la Edad del Hierro y cultura romana para el Centro de Interpretación del yacimiento de El Tesorillo de Málaga.      • Conferenciante en el proyecto cultural Jaén Romano de ayer y hoy de la Universidad de Jaén.• 2022. Realización de reproducciones de cerámica histórica para el Museo Didáctico del Colegio Público de Arjona. En la actualidad, forma parte de la Asociación de Amigos Cerro Venate de Arjonilla, colectivo asociativo que colabora de forma muy activa en las Colecciones Museísticas de Arjonilla."
    },
    {
      "title": "Con arcilla y agua, aire y fuego",
      "image": "assets/images/colecciones/colecciones-arjonilla-9.JPG",
      "audio": "audios/colecciones/colecciones-9.wav",
      "descripcion": "La Cerámica es todo lo que se moldea con una mezcla de arcilla, a la que se le somete a una cocción por medio del fuego .La cerámica es un producto que ha estado muy presente en la vida de las sociedades que nos han precedido. Tradicionalmente, la cerámica ha sido utilizada en los siguientes ámbitos de la vida de las personas:\n• En la tareas diarias (cuencos, ánforas, tazas, botijos, jarras, tazones, cántaros y vasijas en general).\n• En la práctica de rituales (copas, vasos y urnas para guardar las cenizas después de la incineración de los difuntos).\n• En la representación de símbolos culturales y creencias (estatuillas para ofrecérselas a las divinidades y figuras).En la elaboración de la cerámica, probablemente por primera vez, el hombre manifiesta su control sobre los cuatro elementos: Tierra, agua, aire y fuego. Desde la antigüedad, el ceramista o alfarero ha configurado y cocido el barro para crear objetos, útiles y duraderos. Por sus particulares características, la arcilla ofrece al ceramista una inagotable fuente de nuevas formas y decoraciones que le permite crear objetos aptos para los usos más nobles, como para los más cotidianos. Las fases del trabajo son prácticamente las mismas, desde las producciones más antiguas hasta las técnicas más modernas y elaboradas. Su proceso consta de las siguientes etapas:1.- Preparación del Barro. El barro consta de una base arcillosa mezclada con otros compuestos minerales y agua en cantidad adecuada. La preparación del barro empieza con la selección y recogida de la arcilla; después se deja secar, y se le añade el agua para ablandarla, depurarla y sedimentarla. Por último, antes de ser utilizada se deja reposar. Básicamente este proceso no ha variado a lo largo de la historia. Los principales cambios, relativos a la rapidez, tuvieron lugar, en el siglo XVIII, con la utilización de las máquinas. Al barro se le añaden elementos plásticos, fundentes (materiales para controlar la fusión y dureza de la pasta) y desengrasantes (partículas con nula plasticidad, paja o arena).La arcilla se presenta de forma primaria y secundaria. La arcilla primaria es un material en estado mineral, que permanece en el lugar donde se ha formado, sobre la roca madre. Es un compuesto generalmente de feldespatos derivados de la descomposición química de las rocas: silicatos de aluminio, óxidos de hierro y óxidos de hierro y óxidos terrosos, de poca plasticidad y grano grueso. La arcilla secundaria está formada por materiales arrastrados por el viento y el agua desde los depósitos primarios y contaminados por impurezas como, por ejemplo, la arcilla roja que contiene grandes cantidades de un compuesto ferroso. La arcilla secundaria es de gran pequeño y gran plasticidad. Es el tipo de arcilla que podemos encontrar en la cantera de la Albarrán de Arjonilla.2. Modelado. La Forma más sencilla de modelar el barro es presionándolo con los dedos o configurando rollos o placas de barro, que se superponen o se enrollan en espiral. La invención de la rueda, hacia el IV Milenio antes de cristo, posibilitó la aparición del torno para modelar objetos de forma redonda. Las partes separadas del objeto (pico de las jarras, asas, pies...) se aplican cuando el objeto torneado ha endurecido algo, o bien se sueldan con una pasta semilíquida formada con arcilla y agua (barbotina), antes de que la pieza haya terminado la fase de secado.3. Secado. El secado es el proceso durante el cual la vasija producida pierde gran cantidad de agua y el objeto disminuye entre un 7 y un 15 por ciento. Con el secado, los objetos de arcilla adquieren un aspecto compacto. El secado requiere un ambiente apropiado de temperatura caliente, constante y uniforme. Seguidamente, se realiza la operación de afinado o retoque mediante el empleo de cucharillas o espátulas, con la finalizad de perfeccionar la forma y la superficie de la pieza, reducir la porosidad y mejorar su aspecto. 4. Impermeabilización. Este proceso permite que las vasijas puedan contener productos líquidos. Las cerámicas porosas están hechas con arcillas ricas en hierro y otras impurezas. Para que cuezan, no exigen temperaturas muy elevadas y se impermeabilizan mediante la técnica del baño vítreo o plumbífero (viddriado. En la antigua Mesopotamia (actualmente, Irán e Irak) se inventó el vidriado, pero fueron los musulmanes lo que generalizaron su uso. El vidriado es una combinación de plomo, arena y silice que, fundida, molida y mezclada con agua, se aplica a la vasija por inmersión o con pinceles antes o después de su primera cocción. La transparencia del vidriado puede modificarse mediante la mezcla con óxidos colorantes. Las cerámicas no porosas contienen arcillas que resisten altas temperaturas de cocción como el gres y la porcelana.5.- Decoración. La decoración busca realzar la forma de la vasija y está muy ligada a la impermeabilización y a la cocción. En un principio, los primeros ceramistas decoraban con incisiones o impresiones practicadas con los dedos o con diferentes instrumentos. Mediante la técnica del bruñido o frotamiento intenso también se consiguió mejorar su impermeabilidad y su aspecto. Estas primitivas técnicas han pervivido hasta la actualidad y se han combinado con otra: la cerámica pintada.6.- Cocción. La cocción cierra un largo y lento proceso de trabajo y de ella depende , en gran parte, el resultado final. Por tal motivo, el control del fuego ha sido de vital importancia parea el ceramista. Comienza el proceso una vez cargado el horno y tabicada la puerta de la cámara de cocción. Según los resultados que se quieran obtener, la cocción se realiza de diferentes maneras: en la atmósfera oxidante, reductora y mixta.A lo largo de la historia, el horno se ha ido perfeccionando desde el más antiguo y sencillo, que realizará la cocción en hoguera, hasta el horno con cubierta fija, que es más complejo. Los hornos eléctricos o a gas actuales permiten un control más exacto del proceso. En España, a partir de la Edad Media, se generalizó el tipo hispano – musulmán, que consta de dos cámaras: la inferior para el fuego, con puerta pequeña parea el combustible y l superior con una o varias puertas de acceso para poder colocar las vasijas en el interior. En Arjonilla, hasta hace muy poco tiempo, ha estado funcionando uno de estos hornos dé tipología hispano – musulmana. Se trata del horno del alfarero Luis Zafra Marchal. Presenta dos cámaras de paredes gruesas y reforzadas con obra de ladrillos. La forma de la planta es cuadrangular y tiene una cubierta abovedada, que se abre al exterior con una abertura de traza ovoidal para la salida del humo."
    },
    {
      "title": "La cerámica griega en las tumbas íberas",
      "image": "assets/images/colecciones/colecciones-arjonilla-10.jpg",
      "audio": "audios/colecciones/colecciones-10.mp3",
      "descripcion": "Estas imágenes corresponden a diferentes cráteras de cerámica ática producida en Atenas y son del siglo IV antes de cristo. En este período, llegaron a la península ibérica vasos griegos en grandes cantidades y, en Andalucía, la mayoría de estos vasos áticos son cráteras de campana de figuras rojas. El nombre deriva de la forma de campana invertida, que se abre desde la peana y con una forma adaptada a la función que cumplía: mezclar el agua con el vino. Los vasos griegos aceptados por los íberos como objetos de gran valor. Poseer los simboliza su adscripción a un status social elevado. Por otro lado, se sabe que los artistas de Atenas elaboraban productos para la exportación y, en ocasiones, se puede rastrear una posible adaptación de la iconografía al gusto del comprado íbero, ya que su uso original fue reinterpretado para adaptarlo a un nuevo contexto: el funerario. La decoración la realizaban usando una arcilla ferruginosa fina, que diluían en abundante agua hasta formar un engobe, muy rico en hierro y vitrificable a la cocción .La alternativa en el tipo de cocción de las piezas, las diferentes temperaturas de cámara de cocción y el tamaño de las partículas del engobe determinaban los colores del vaso. Encontrar el equilibrio adecuado parea que las piezas mantuvieran los dos colores, figuras rojas sobre fondo negro, requería cierta pericia, que no todos los artistas del barro lo conseguían siempre. Los íberos entendían la muerte como una continuación de la vida en el más allá y, en consecuencia, la tumba debía ser un reflejo del status social de la persona. Aquí, estas vasijas servirán para acompañar al difunto o para contener sus cenizas, pero también para cubrirlo de prestigio y dotarlo de un tinte heroico a través de sutiles y sugerentes escenas mitológicas, que le ayudasen a triunfar sobre la muerte."
    },
    {
      "title": "La cerámica ibérica",
      "image": "assets/images/colecciones/colecciones-arjonilla-11.JPG",
      "audio": "audios/colecciones/colecciones-11.mp3",
      "descripcion": "La cerámica que realizó el alfarero íbero supuso un salto importante en la evolución tecnológica de esta producción, porque en su proceso de trabajo, por primera vez, se introdujo el torno del alfarero a la hora de moldear el barro. Aunque la producción de cerámica íbera del valle del Guadalquivir es a torno, ello no excluyó que, durante un tiempo, una parte de los recipientes cerámicos se continuaran haciendo a mano y seguramente por mujeres, en contextos domésticos y para un uso relacionado con la producción de alimentos, pues preferentemente se fabricaban ollas que resistieran el calor del fuego del hogar. Lógicamente esta producción residual a mano fue más significativa en los siglos VII y VI antes de cristo durante la etapa ibérica antigua, que en momentos posteriores cuando ya toda la producción cerámica acabo haciéndose a torno. En general, el elemento decorativo empleado en la superficie de los recipientes cerámicos íberos, desde el siglo VII antes de cristo, fue la pintura, dada antes decocción sobre la superficie exterior del recipiente, en las formas cerradas (toneles, ollas, vasos y urnas entre otros) y en el exterior y el interior en las formas abiertas(platos o cuencos). Emplearon los alfareros íberos una garma muy amplia de tonos rojos, de tal modo que cuando se habla habitualmente de monocromía, para referirse a la decoración, a veces se olvida de que un rojo anaranjado y un rojo amarronado, empleados en un mismo recipiente, son tan diferentes que pueden llegar a definir una policromía dentro, es verdad, de la monocromía de la escala de rojos. La decoración pintada se caracterizó por el desarrollo de motivos geométricos, en todo el valle del Guadalquivir y durante toda la etapa que duró la cultura de los íberos. Filetes, bandas, círculos y segmentos de círculos concéntricos, aguas o peines...definieron un conjunto de elementos que se asocian de diferente manera en frisos, a veces con colores diferenciados, según las distintas zonas y los diferentes momentos de la cultura íbera."
    },
    {
      "title": "El torno. Evolución histórica",
      "image": "assets/images/colecciones/colecciones-arjonilla-12.JPG",
      "audio": "audios/colecciones/colecciones-12.mp3",
      "descripcion": "El torno del Alfarero o Ceramista. Es un aparato mecánico movido por la acción humana o eléctrica, que está formado por una superficie redonda y plana que gira sobre un eje central sobre la que el ceramista modela una pella de barro. También se usa para decorar la pieza, para aligerarla, remodelar o eliminar el barro sobrante. A lo largo de historia, sabemos del uso del torno por artesanos fenicios y griegos, íberos, o romanos. Su aparición va ligada a la invención de la rueda, documentada en Mesopotamia desde el 3500 antes de cristo, según modelos de arcilla, pequeños vehículos y juguetes aparecidos. La primera rueda fue encontrada por el arqueólogo Wooley en 1930, enur, perteneciente al período Uruk. En un papiro egipcio datado en 3000 antes de cristo, aparece el dios con forma de carnero llamado Jnum con su torno de ceramista modelando el cuerpo humano y también su alma. La base del torno primitivo era fija: solo giraba la parte superior. En las manos del ceramista, torno y barro forman una simbiosis viva que dan como resultado el modelado o torneado de una pieza cerámica. Es un proceso rítmico y fluyente; un diálogo entre el alfarero y la arcilla, con las manos como eslabón. En ninguna otra artesanía, el material de trabajo responde al tacto, al ritmo y a la sensibilidad , como lo hace el barro en el torno. El invento del torno representó una revolución para el ceramista: facilitó y aumentó la producción, e hizo posible dar al objeto la forma deseada."
    },
    {
      "title": "La cerámica romana",
      "image": "assets/images/colecciones/colecciones-arjonilla-13.JPG",
      "audio": "audios/colecciones/colecciones-13.mp3",
      "descripcion": "En la antigua roma, se elaboró cerámica en grandes cantidades y con un acusado carácter utilitario. Se realizó, básicamente, a torno y con moldes , y constituyó un ejemplo claro de producción a escala industrial. En la península ibérica, entre los siglos II y I antes de cristo, se produjo una rápida difusión de la cultura romana, hasta que, a partir del siglo I después de Cristo, el modelo productivo llegado de Roma sustituyó plenamente a la cultura material de los íberos. En Andalucía, los romanos fabricaron vasijas para la mesa, la cocina, la despensa, el transporte y almacén (ánforas), lámparas de aceite (lucernas) y cerámica de lujo como la terra sigillata. Además de modelar vasijas, los romanos utilizaron la arcilla para la producción de ladrillos, tégulas e ímbrices. A mediados del siglo I después de cristo, dio comienzo la producción de Terra Sigillata Hispánica que se prolongará hasta los siglos IV y V después de cristo. Recibe su nombre por el sigillum (sello o cuño) con el que los ceramistas marcaban sus piezas. El característico color rojizo brillante lo lograban mediante un baño en una arcilla ferruginosa fina, que diluían en abundante agua y, por decantación, formaban un engobe, muy rico en hierro y vitrificable a la cocción, técnica que aprendieron de los griegos."
    },
    {
      "title": "La cerámica hispanomusulmana",
      "image": "assets/images/colecciones/colecciones-arjonilla-14.JPG",
      "audio": "audios/colecciones/colecciones-14.mp3",
      "descripcion": "En Al-Andalus, la cerámica producida por la cultura musulmana llegó por medio del Magreb (norte de África), a través de las relaciones del califato cordobés con el de Bagdad, e incluso a través de las relaciones comerciales con Egipto. Las ciudades de Al-Andalus se convirtieron en importantes centros de producción y exportación, y a través de ellas la cerámica musulmana andalusí se difundió por todo el Occidente europeo. Las primeras innovaciones de los alfares andalusíes son las piezas pintadas de forma elemental con manchones en negruzco de óxido de manganeso de hierro. En un primer momento, en época Califal, se pueden distinguir dos tipos de cerámicas: las vidriadas y sin vidriar. Las cerámica sin vidriar es la que no ha sufrido más que una cochura. En este grupo están incluidas, en primer lugar, las carentes de decoración pictórica. Algunas pueden estar recubiertas de engalba blanca o roja, y las hay totalmente lisas o bruñidas. Pero generalmente predominan las decoradas con incisiones y estrías. Otras piezas están pintadas con un solo color sobre el barro. Los fondos claros de decoración con trazos finos o gruesos en rojo o en negro son característicos de este tipo de cerámica. El segundo grupo en esta etapa califal es el de la cerámica vidriada. El vidriado se realiza mediante el empleo sistemático del óxido de plomo en el que hay, asimismo, diferentes modalidades. Las más sencillas con las monocromas. En ellas, tras la primera cochura, se aplica el óxido de plomo en el que hay, asimismo, diferentes modalidades. Las más sencillas con las monocromas. En ellas, tras la primera cochura, se aplica el óxido metálico vitrificable elegido. Éste puede ser exclusivamente el de plomo, o mezclado con óxido de cobre. En el primer caso se transparenta el barro rojizo dando una tonalidad melada. En cambio, si se le añade óxido de cobre, se consigue un tono verdoso. Después de una segunda cocción la pieza resulta brillante e impermeable gracias a la cubierta vítrea. Las cerámicas policromas pueden estar decoradas de dos formas distintas: decoradas en verde y manganeso , y las de cuerda seca. En el primer caso, se recubre previamente con una engalba blanca. Y después de la decoración se le aplica una una cubierta vítrea de plumbífero, que resulta transparente en la segunda cochura. El procedimiento para obtener la cerámica de cuerda seca consiste en trazar sobre la superficie de la pieza las líneas básicas del decorado. A continuación se repasan las líneas con óxido de manganeso mezclado con una sustancia grasa, hasta formar un rede de compartimentos en los que se depositan los óxidos colorantes vitrificados en una segunda cocción."
    },
    {
      "title": "Silbatos de barro",
      "image": "assets/images/colecciones/colecciones-arjonilla-15.JPG",
      "audio": "audios/colecciones/colecciones-15.mp3",
      "descripcion": "Las sociedades antiguas utilizaban el barro cocido para confeccionar silbatos, tambores y trompetas o bocinas. Andalucía es una tierra fértil en hallazgos arqueológicos de este tipo de objetos. En Arjonilla aún pervive la producción de silbatos o piticos de barro cocido, sin vidriar, de esquemáticas y estilizadas formas antropomorfas y zoomorfas, que nos recuerdan el estilo sencillo y expresivo de los exvotos ibéricos: toritos, torerillos, caballitos conairosos jinetes, borriquitos con angarillas, cantaricos y aguaores. El silbato es un instrumento de viento de un solo sonido, generalmente chillón, quevaría de intensidad según la fuerza con la que impulsemos el aire por la ranura hacia el interior de la oquedad. Tiene más valor de conjuro de mal de ojo que musical: supone la pervivencia de un elemento básico en el arte de hacer ruido y alboroto. Todos los silbatos, aquí expuestos, están ligados a la tradición artesana de la zona yhan sido realizados por el alfarero D. Luis Zafra Marchal."
    },
    {
      "title": "Exposición permanente fotografías antiguas de Arjonilla",
      "image": "assets/images/colecciones/colecciones-arjonilla-16.jpg",
      "audio": "audios/colecciones/colecciones-16.mp3",
      "descripcion": "Exposición permanente de cerca de un centenar de fotografías históricas de nuestra localidad: calles y edificios antiguos, elementos costumbristas (trabajos en el campo, la arcilla…) fiestas y tradiciones locales, así como monumentos históricos como es el Castillo del Trovador Macías o la misma Iglesia de Ntra. Señora de la Encarnación, Banda Municipal Santa Cecilia o eventos procesionales, colegios y alumnos entre otras fotografías."
    }
  ];
  List<Map<String, String>> filtrColecc = [];

  @override
  void initState() {
    super.initState();
    filtrColecc = colecc;
    _searchController.addListener(_filterList);
  }

  void _filterList() {
    final query = _searchController.text.toLowerCase();
    if (query.isEmpty) {
      setState(() {
        filtrColecc = List.from(colecc);
      });
    } else {
      setState(() {
        filtrColecc = colecc.where((item) {
          final title = item["title"]?.toLowerCase() ?? "";
          return title.contains(query);
        }).toList();
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'AUDIOGUÍAS COLECCIONES',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtrColecc.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          title: filtrColecc[index]["title"]!, 
                          imagePath: filtrColecc[index]["image"]!,
                          audioPath: filtrColecc[index]["audio"]!,
                          descripcion: filtrColecc[index]["descripcion"]!,
                          ),
                        ),
                      );
                  },
                  child: GuideCard(
                  title: filtrColecc[index]["title"]!,
                  imagePath: filtrColecc[index]["image"]!,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff15181e),
    );
  }
}

bool isMobile() {
    try {
      Platform.operatingSystem;
      return true;
    }
    catch (e) {
      return false;
    }
  }
class GuideCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const GuideCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: isMobile() ? 150 : 300,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: isMobile() ? 150 : 300,
              color: const Color.fromRGBO(0, 0, 0, 0.5),
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final String title;
  final String imagePath;
  final String audioPath;
  final String descripcion;

  const DetailPage({
    super.key,
    required this.title,
    required this.imagePath,
    required this.audioPath,
    required this.descripcion,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late AudioPlayer _audioPlayer;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });
    _audioPlayer.onPositionChanged.listen((p) {
      setState(() {
        _position = p;
      });
    });
    _audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
        _position = Duration.zero;
      });
    });
  }

  void _playPause() async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(AssetSource(widget.audioPath));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: isMobile() ? 200 : 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black54, Colors.transparent],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0xffd6a469)),
                    onPressed: () {
                      _audioPlayer.stop();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Container(
              color: Color(0xff15181e),
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Column(
                children: [
                  SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 3,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
                    ),
                    child: Slider(
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      min: 0,
                      max: _duration.inSeconds.toDouble(),
                      value: _position.inSeconds.toDouble(),
                      onChanged: (value) async {
                        await _audioPlayer.seek(Duration(seconds: value.toInt()));
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${_position.inMinutes.toString().padLeft(2, '0')}:${(_position.inSeconds % 60).toString().padLeft(2, '0')}",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "${_duration.inMinutes.toString().padLeft(2, '0')}:${(_duration.inSeconds % 60).toString().padLeft(2, '0')}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                        color: Colors.white, size: 50),
                    onPressed: _playPause,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xff15181e),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.descripcion,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      if (widget.title == "Introducción")
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white30),
                          ),
                          child: FlutterMap(
                            options: MapOptions(
                              initialCenter: LatLng(37.973682426664574, -4.104577225813943),
                              initialZoom: 17.0,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    "https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png",
                                    retinaMode: true,
                              ),
                              MarkerLayer(
                                markers: [
                                  Marker(
                                    point: LatLng(37.973682426664574, -4.104577225813943),
                                    width: 30,
                                    height: 30,
                                    child: Icon(
                                      Icons.location_on, color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}