import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Castillo extends StatefulWidget {
  Castillo({super.key});

  @override
  _CastilloState createState() => _CastilloState();
  }

  class _CastilloState extends State<Castillo> {
    final TextEditingController _searchController = TextEditingController();
    final List<Map<String, String>> castillo = [
    {
      "title": "Introducción",
      "image": "assets/images/castillo/castillo-arjonilla-1.png",
      "audio": "audios/castillo/castillo-1.mp3",
      "descripcion": "El Castillo de Arjonilla (Jaén) supone una de las fortalezas medievales mejor conservadas de la Campiña Occidental del Alto Guadalquivir desde el punto de vista de sus estructuras defensivas.\n\nDeclarado bien de interés cultural por la Ley de Patrimonio Histórico de 1985, se localiza en una zona sucesivamente ocupada, por el que el lugar se constituye en la zona urbanística dé mayor significado Histórico para la Villa, convirtiéndose junto con el Palacio del Marqués de la Merced (sede de las Colecciones Museísticas) y la Iglesia de Nuestra Señora de la Encarnación, en uno de los principales enclaves turísticos y patrimoniales de nuestra localidad."
    },
    {
      "title": "Época",
      "image": "assets/images/castillo/castillo-arjonilla-2.JPG",
      "audio": "audios/castillo/castillo-2.mp3",
      "descripcion": "Todo el recinto se adscribe a la Orden de Calatrava en el reinado de Juan II (Primera mitad del Siglo XV),cuando ésta asume el control de buena parte de La Campiña Occidental del Alto Guadalquivir y reciben el mandato del rey de morar y reconstruir el castillo de Arjonilla, tomando como base la existencia de un recinto anterior, musulmán, construido en tapial, en sus inicios primigenios y posterior reconstrucción de una torre cuadrangular y la aparición de otro espacio en su interior, la torre del homenaje."
    },
    {
      "title": "Mención Histórica",
      "image": "assets/images/castillo/castillo-arjonilla-3.jpg",
      "audio": "audios/castillo/castillo-3.mp3",
      "descripcion": "El escritor e historiador Juan Eslava Galán, sobre el castillo de Arjonilla, habla de un recinto amurallado con una torre deforma cuadrada o levemente regular, torres cilíndricas en las esquinas, torre de homenaje, ubicación en el Oeste del Reino de Jaén, a lo largo de las vías de comunicación fronteriza.\n\nCaracterísticas compartidas con otros castillos de la Campiña y próximos a Arjonilla (Bretaña, Fuerte del Rey, Marmolejo...), aunque el arqueólogo Francisco Nocete Calvo señala que no queda comprobado documentalmente la existencia de dicha fortaleza anterior, dado que no hay referencia histórica alguna a la misma.\n\nLa situación del recinto no justifica la necesidad defensiva desde el punto de vista estratégico. El control de las cercanas canteras de arcilla pudo ser uno de los principales cometidos."
    },
    {
      "title": "Castillo hoy en dia",
      "image": "assets/images/castillo/castillo-arjonilla-4.JPG",
      "audio": "audios/castillo/castillo-4.mp3",
      "descripcion": "Teniendo una ubicación dentro del propio casco urbano de la localidad, hoy en día conservamos del recinto todos los muros exteriores ,a excepción del muro sur (colindante con el Palacio del Marqués de la Merced, sede hoy del Museo Municipal de Arjonilla), una torre cuadrangular por donde se accede al patio de armas y en el mismo, los lienzos y vestigios de muros de las distintas estancias y espacios que hubiera habido antaño en el interior del mismo (espacio de descanso para los caballeros calatravos, torre del homenaje, ermita de santa catalina y una necrópolis). Asimismo también se mantiene en el muro norte una de las torres menores del castillo de forma redondeada.\n\nEl uso actual del castillo, tras tener otros usos públicos como colegio, campo de futbol, plaza de toros ) es un recurso turístico y cultural (abierto al público para su visita y con servicio de guía), usado también para realización de eventos culturales y el desarrollo de las Jornadas Medievales del Trovador Macías, el último fin de Septiembre, dentro del programa de dinamización de la Ruta de los Castillos y Batallas, donde se incluye el castillo."
    },
    {
      "title": "Torre cuadrangular",
      "image": "assets/images/castillo/castillo-arjonilla-5.jpg",
      "audio": "audios/castillo/castillo-5.mp3",
      "descripcion": "La primera construcción del recinto fue una primitiva torre cuadrangular, que reestructurada en las siguientes fases, configurará la torre que hoy podemos ver. Modelo de torre de la que existen numerosos prototipos dispersos en las tierras de la Campiña Occidental del Alto Guadalquivir.\n\nSus características básicas y más peculiares es que se trata de una torre cuadrangular de 17 metros de altura, y de 5,30 metros por 6.20 metros de base. Una torre de tres plantas, almenado y saeteras superiores, alzados abovedados y el tramo de escalera interior del segundo piso, debiendo formar parte de la torre primigenia. \n\nEsta torre ha sido confundida durante mucho tiempo con la Torre del Homenaje, si bien se trata de una edificación que sirvió de torre de acceso o entrada una vez que el recinto fue amurallado .Es esta la torre donde, según la leyenda, Macías estuvo preso y finalmente muerto a manos del marido despechado de Doña Elvira, Hernán Pérez de Vadillo, señor de Porcuna."
    },
    {
      "title": "Torre del Homenaje",
      "image": "assets/images/castillo/castillo-arjonilla-6.jpg",
      "audio": "audios/castillo/castillo-6.mp3",
      "descripcion": "La segunda estructura construida en el recinto presenta una planta cuadrangular con adosamientos y refuerzos posteriores en su lateral. Poco conocemos de su funcionalidad, ya que fue arrasada y desmantelada por las remodelaciones posteriores. Se trataría de la Torre del Homenaje del Castillo.\n\nSu nombre se debía a que en ella se practicaba la ceremonia del homenaje, en la cual el señor le entregaba al vasallo un feudo a cambio de auxilium et consilium. \n\nDe este espacio medieval hoy en día sólo se conservan los cimientos de unos 12 metros de cada lado, más adosamiento laterales de 2 metros, constituidos en una plataforma maciza y rellena de piedras."
    },
    {
      "title": "Recino Amurallado y Ermita de Santa Catalina",
      "image": "assets/images/castillo/castillo-arjonilla-7.jpg",
      "audio": "audios/castillo/castillo-7.mp3",
      "descripcion": "Con posterioridad se construye el recinto amurallado que mantenemos hoy en día, que le confiere la forma de Castillo y que conocieron los historiadores de los siglos XVII y XVIII. Esta nueva estructura viene a suponer una ampliación de los sistemas defensivos, dotando a este espacio carácter defensivo que inició la torre primigenia. Con el cierre del recinto, el acceso se construyó abriendo una puerta en codo en la antigua torre con un arco apuntado de ladrillo. Dentro de esta tercera fase constructiva, podemos apreciar también la pérdida del carácter defensivo, y el lugar es usado a partir de este momento como necrópolis.\n\nAunque se mantenga inalterada la estructura constructiva del castillo de Arjonilla y la construcción de dos edificios rectangulares dentro del recinto amurallado. Posee un cementerio situado junto a la ermita de Santa Catalina, una pequeña capilla en la que se hace mención en un documento del Sínodo de 1551. Una ermita, que según su leyenda, es donde fue enterrado Macías, tras su muerte, con gran pompa fúnebre y a la que acudieron la alta nobleza de la zona."
    },
    {
      "title": "Recinto Completo",
      "image": "assets/images/castillo/castillo-arjonilla-8.jpg",
      "audio": "audios/castillo/castillo-8.mp3",
      "descripcion": "Las nuevas estructuras construidas revelan el abandono del recinto como sistema defensivo. La gran magnitud de sus estructuras construidas incide en que éste se convierta en un nuevo espacio público. Se disponen una serie de habitaciones.\n\nDe acuerdo con los vestigios encontrados en el suelo del patio de armas del castillo, seguramente también de esta época sería un espacio al aire libre, a modo de patio, como perfila su total empedrado por guijarros de rio. Patio a través del cual se accedería a las distintas estancias del castillo. Posiblemente éstas fueron las modificaciones realizadas en el siglo 16, cuando el Castillo sirve de morada para los caballeros de la Orden de Calatrava, transeúntes y los visitadores generales, en sus visitas al Concejo de la Villa."
    },
    {
      "title": "Castillo y Palacio",
      "image": "assets/images/castillo/castillo-arjonilla-9.jpg",
      "audio": "audios/castillo/castillo-9.mp3",
      "descripcion": "La demolición del Muro Sur permitirá el acceso directo a la casa solariega del Marqués de la Merced. A partir del Siglo XVIII, la familia Jiménez Pérez de Vargas utiliza el recinto del Castillo como jardín de su casa palaciega, por lo que las ruinas de épocas anteriores se verán surcadas por largos canales de ladrillo.\n\nEn la Edad Moderna, el castillo albergó una Cava o Bodega de Vino, y también se ha visto entre sus ruinas una instalación industrial oleícola, que hasta el momento se considera la más antigua de la Villa."
    },
    {
      "title": "Leyenda de amor de Macías y doña Elvira",
      "image": "assets/images/castillo/castillo-arjonilla-10.png",
      "audio": "audios/castillo/castillo-10.mp3",
      "descripcion": "Nacido en Padrón, ya desde muy joven destacó por su talento poético, motivo por el que fue nombrado gentil hombre, al servicio de don Enrique de Aragón, marqués de Villena y maestre de Calatrava. Allí, en el palacio del maestre, Macías conoció a doña Elvira. Desde el primer momento nació entre ambos una pasión inmensa y secreta. Sin embargo, quiso la desgracia que Macías tuviese que ausentarse para formar parte de las fuerzas que iban a luchar en Granada.\n\nMientras tanto, el maestre dispuso que doña Elvira se casase con don Hernán Pérez de Vadillo, marqués de Porcuna. A su regreso, Macías se enteró desesperado de la amarga noticia y convirtió su desolación y penas en poesías que evidenciaban públicamente su atormentado amor. Al enterarse el don Hernán, de tal situación, pidió a Don Enrique que el Trovador cejase de cortejar a su esposa. Pero Macías no obedeció y siguió cortejando a su amada, por lo que el maestre ordenó encarcelarlo en la Torre del Castillo de Arjonilla.\n\nA pesar de estar prisionero, la pasión del trovador no se enfrió y en los atardeceres, desde su celda, acompañado de su laúd, se dedicaba a cantar sus amores hacia Doña Elvira. La noticia llegó al marqués de Porcuna que, lleno de celos y rabia, mató al trovador atravesándole el corazón con un venablo lanzado a través de la ventana de la celda.\n\nEl cuerpo del desdichado Macías fue sepultado con gran pompa en la ermita de Santa Catalina de Arjonilla. En su sepulcro, por orden del que había sido su señor, el Maestre de Calatrava, figuró la escueta inscripción: ""Aquí yace Macías el enamorado""."
    },
  ];
  List<Map<String, String>> filtrCast = [];

  @override
  void initState() {
    super.initState();
    filtrCast = castillo;
    _searchController.addListener(_filterList);
  }

  void _filterList() {
    final query = _searchController.text.toLowerCase();
    if (query.isEmpty) {
      setState(() {
        filtrCast = List.from(castillo);
      });
    } else {
      setState(() {
        filtrCast = castillo.where((item) {
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
            'AUDIOGUÍAS CASTILLO',
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
              itemCount: filtrCast.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          title: filtrCast[index]["title"]!, 
                          imagePath: filtrCast[index]["image"]!,
                          audioPath: filtrCast[index]["audio"]!,
                          descripcion: filtrCast[index]["descripcion"]!,
                          ),
                        ),
                      );
                  },
                  child: GuideCard(
                  title: filtrCast[index]["title"]!,
                  imagePath: filtrCast[index]["image"]!,
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
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 150,
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
                  height: 200,
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
                              initialCenter: LatLng(37.974183550024065, -4.104814737737992),
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
                                    point: LatLng(37.974183550024065, -4.104814737737992),
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