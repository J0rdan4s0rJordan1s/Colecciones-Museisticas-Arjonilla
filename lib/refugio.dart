import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Refugio extends StatefulWidget {
  Refugio({super.key});

  @override
  _RefugioState createState() => _RefugioState();
  }

  class _RefugioState extends State<Refugio> {
    final TextEditingController _searchController = TextEditingController();
    final List<Map<String, String>> refug = [
    {
      "title": "Introducción",
      "image": "assets/images/refugio/refugio-arjonilla-1.jpg",
      "audio": "audios/refugio/refugio-1.mp3",
      "descripcion": "Arjonilla cuenta con varios refugios antiaéreos construidos para el uso de la población de Arjonilla durante la Guerra Civil Española (1936-1939). Esta localidad cuenta con un total de 6 refugios (aunque uno de ellos se trataría de un polvorín, situado en la zona de la Viña Garabata) localizados en diferentes lugares de Arjonilla: Plaza de la Encarnación, Glorieta Ángel Hernández, Refugio “la Plaza” Calle Arjona, El Botillo y el citado de la Viña Garabata.\n\nHoy en día, y debido a su puesta en valor, dos de ellos son visitables, concretamente los situados en la Plaza de la Encarnación (abierto desde el año 2008) y el de la Glorieta Ángel Hernández (abierto desde Julio de 2022).Construidos entre los años 1937 y 1938, su funcionalidad no era otra que la de resguardar la población de la localidad de los bombardeos que Arjonilla recibe a lo largo de esta contienda bélica, aunque pocos, sí que es cierto que tuvieron lugar en la misma.\n\nEste refugio, situado en la Glorieta Ángel Hernández, con dos entradas y salidas, una situada junto al Palacio del Marqués de la Merced (hoy en día sede de las Refugio Museísticas) y la otra, al final de la Glorieta.\n\nTiene cerca de 70 metros, con varias curvaturas y su peculiaridad es que toda su bóveda está hecha de ladrillo (a diferencia del de la Plaza de la Encarnación) y un pozo de las casas colindantes el refugio."
    },
    {
      "title": "Jaén durante la Guerra Civil",
      "image": "assets/images/refugio/refugio-arjonilla-2.jpg",
      "audio": "audios/refugio/refugio-2.mp3",
      "descripcion": "El estallido de la guerra civil española se inició tras el fracaso del golpe de estado de una parte del ejército —apoyado por grupos políticos y civiles conservadores— que estaba en contra del gobierno de la república por la situación de crisis económica y la tensión política y social.\n\nTras los primeros momentos de la rebelión, la provincia de Jaén, junto con Almería y otras partes de Málaga y Granada, no apoyo la causa, sobre todo gracias a la importante afiliación campesina con que contaban las sociedades de agricultores de la FTT-UGT.\n\nJaén se mantuvo fiel a la República hasta finales de la contienda, concretamente a partir del 29 de marzo de 1939, las localidades jiennenses comenzaron a caer.\n\nEL GUERNICA ANDALUZ\nEl día 1 de abril de 1937, el general Gonzalo Queipo de Llano, militar al servicio de los sublevados, da la orden de bombardear la ciudad de Jaén con seis aviones trimotores acompañados por un grupo de escolta de nueve cazas. Murieron 159 personas. Este bombardeo se realiza como represalia del ataque aéreo de la aviación republicana de ese mismo día, a un barrio obrero y un hospital militar, en la ciudad de Córdoba que se saldó con unos 40 muertos."
    },
    {
      "title": "Arjonilla. Línea del Frente",
      "image": "assets/images/refugio/refugio-arjonilla-3.jpg",
      "audio": "audios/refugio/refugio-3.mp3",
      "descripcion": "Aquí no vivimos el ambiente bélico hasta diciembre de 1936, cuando los pueblos de Lopera y Porcuna caen en manos sublevadas y localidades como Arjonilla, Marmolejo o Arjona se sitúan en primera línea del frente.  A partir de entonces, esta zona sufre numerosos bombardeos por parte de la aviación insurrecta y por ello los dirigentes republicanos de la provincia ordenan construir refugios antiaéreos para salvaguardar a la población.\n\nEn los primeros meses de la guerra en Arjonilla, fue el Comité Local del Frente Popular quien se hizo con el control de la localidad. Entre sus funciones estaba seguir con la “normalidad”, se encarga de celebrar sesiones ordinarias sobre asuntos burocráticos, como la aprobación de presupuestos municipales o la recaudación de impuestos.\n\nEn 1937, Arjonilla empezó a asumir funciones militares estableciendo un Tribunal Militar y varios cuarteles. Uno de ellos, de gran tamaño, se instaló en la actual Glorieta de Ángel Hernández; otro, en el interior de la Iglesia de la Encarnación y otro a las afueras de la localidad, donde se localiza la Casería de la “Viña Garabata”. Junto a los mismos, se construyeron también refugios antiaéreos."
    },
    {
      "title": "Bombardeos sobre Arjonilla",
      "image": "assets/images/refugio/refugio-arjonilla-4.jpg",
      "audio": "audios/refugio/refugio-4.mp3",
      "descripcion": "Nuestro municipio sufrió, al menos, seis bombardeos durante la guerra civil por parte del bando nacionalista.\n\nLas tropas de porcuna, con su cañon al que llamaban “el abuelo"", tenían como referencia el chapitel de la iglesía de la encarnación, por lo que se decide desmontarlo. Tras la guerra, el chapitel volvería a ser colocado.\n\nA causa de los bombardeos la población civil fue evacuada casi en su mayoría, refugiándose en Espelúy o Torredonjimeno, entre otros pueblos.\n\nEl primero de ellos se produjo el 5 de febrero de 1937, por baterías instaladas en el pueblo de Porcuna situado a 15 kilómetros de aquí. Por suerte no hubo ninguna baja. Los siguientes tuvieron lugar una vez terminado el asedio de la Virgen de la Cabeza, el 27 de mayo, 5 de junio, 17 de junio y 23 de junio de 1937.\n\nEl último, a las 12:50 del 31 de octubre de 1938, fue el más grave de todos. El ataque se produjo por partida doble, tanto por las baterías de Porcuna, como por la aviación nazi enviadas por Hitler. Se trataban de aviones modelo Junkers, uno de los aviones más utilizados por la Legión Condor. La bomba caída en la calle Hornos causó la muerte a 8 personas (siete de ellas mujeres) y numerosos daños materiales."
    },
    {
      "title": "Construcción de los Refugios",
      "image": "assets/images/refugio/refugio-arjonilla-5.jpg",
      "audio": "audios/refugio/refugio-5.mp3",
      "descripcion": "En el caso de Arjonilla, la construcción de los refugios fue complicada por los insuficientes medios económicos del ayuntamiento. Este, junto al comité local del frente popular, tomaron una serie de medidas para sufragar los gastos como crear bonos pro-refugios, obligar a los que tenían ladrillos a entregarlos, la recaudación de un porcentaje de las ventas de productos (a excepción del pan) o pedir a la cía. Eléctrica mengemor que contribuyera con alguna cantidad.\n\nCuando se vela la aproximación de la aviación se avisaba a la población con el toque del esquilón, la campana de menor tamaño, desde el campanario de la Iglesia de la Encarnación.\n\nLA DEFENSA PASIVA\nEl gobierno republicano de Madrid, ordena la organización de la defensa pasiva. En el mes de septiembre de 1937 quede constituida la Junta Provincial de Defensa Especial Contra Aeronaves (D.E.C.A), dependiente del Ministerio de Marina y Aire, que tuvo comités provinciales y locales en toda la España republicana. En la provincia de Jaén se constituyeron comités locales de la DECA en 67 localidades."
    },
    {
      "title": "Para nunca más",
      "image": "assets/images/refugio/refugio-arjonilla-6.jpg",
      "audio": "audios/refugio/refugio-6.mp3",
      "descripcion": "Las nuevas autoridades del franquismo prestarán gran atención a los refugios construidos durante la guerra civil. En un primer momento, en el que todavía estaba abierta la posibilidad de la participación de España en la II guerra mundial. Después cayeron en el olvido de la memoria pensando que nunca más volverían a utilizarse.\nHoy en día, no.\n\nRECUPERACIÓN DE LOS VESTIGIOS BÉLICOS DE LA GUERRA CIVIL\nEl refugio de la Encarnación, una de los refugios públicos que se construyó junto la Iglesia, fue descubierto en 1988 durante las obras de remodelación de la plaza. En 2009 fue el primer refugio de la provincia en ponerse en valor y musealizarse y el segundo de Andalucía, después de el de Almería.\n\nHOSPITALES EN LOS REFUGIOS ANTIAÉREOS\n14.13.2022, Kateryna Safrpnova, una estudiante de medicina, prepara camas en un hospital improvisado dentro de un refugio antiaéreo en la región de Kiev, mientras continúa el ataque de Rusia contra Ucrania. "
    },
  ];
  List<Map<String, String>> filtrrefug = [];

  @override
  void initState() {
    super.initState();
    filtrrefug = refug;
    _searchController.addListener(_filterList);
  }

  void _filterList() {
    final query = _searchController.text.toLowerCase();
    if (query.isEmpty) {
      setState(() {
        filtrrefug = List.from(refug);
      });
    } else {
      setState(() {
        filtrrefug = refug.where((item) {
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
            'AUDIOGUÍAS REFUGIO',
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
              itemCount: filtrrefug.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          title: filtrrefug[index]["title"]!, 
                          imagePath: filtrrefug[index]["image"]!,
                          audioPath: filtrrefug[index]["audio"]!,
                          descripcion: filtrrefug[index]["descripcion"]!,
                          ),
                        ),
                      );
                  },
                  child: GuideCard(
                  title: filtrrefug[index]["title"]!,
                  imagePath: filtrrefug[index]["image"]!,
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
                              initialCenter: LatLng(37.974380427287976, -4.107927743368452),
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
                                    point: LatLng(37.974380427287976, -4.107927743368452),
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