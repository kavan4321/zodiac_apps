import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zodiac_apps/result_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textController = TextEditingController();
  String? astro;
  String? detail;
  String? img;
  late double _month;
  late double date;
  late double year;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Zodiac Sign",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 25,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              wordSpacing: 3,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 200,
                child: TextField(
                  onChanged: (value) {
                    date = double.parse(value);
                  },
                  decoration: const InputDecoration(
                      //hintText: "Date",
                     label: Text("Date")
                  ),
                  maxLength: 2,
                  keyboardType: TextInputType.number,
                  controller: textController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^(3[01]|[12][0-9]|[1-9])$')),
                  ],
                  /*  style: T
                    fontSize: 24,
                    color: Colors.black,
                  ),*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 200,
                child: TextField(
                  onChanged: (value) {
                    _month = double.parse(value);
                  },
                  decoration: const InputDecoration(
                     // hintText: "Month",
                      label: Text("Month")
                  ),
                  maxLength: 2,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^(1[0-2]|[1-9])$')),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 200,
                child: TextField(
                  onChanged: (value) {
                    year = double.parse(value);
                  },
                  decoration: const InputDecoration(
                      //hintText: "Year"
                      label: Text("Year")
                  ),
                  maxLength: 4,
                  keyboardType: TextInputType.number,
                  //controller: textFieldController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(
                  () {
                    if (_month == 12) {
                      if (date < 22) {
                        astro = "Sagittarius";
                        detail =
                            "Oh, the places Sagittarius goes! But… actually. "
                            "This fire sign knows no bounds. Represented by the archer, "
                            "Sagittarians are always on a quest for knowledge. "
                            "The last fire sign of the zodiac, Sagittarius launches its many pursuits like blazing arrows, chasing after geographical, intellectual, and spiritual adventures.  ";
                        img = "assets/sagittarius.webp";
                      } else {
                        astro = "Capricorn";
                        detail =
                            "Capricorn is climbing the mountain straight to the top and knows that patience, perseverance, and dedication is the only way to scale. "
                            "The last earth sign of the zodiac, Capricorn, is represented by the sea-goat, a mythological creature with the body of a goat and the tail of a fish. "
                            "Accordingly, Capricorns are skilled at navigating both the material and emotional realms. ";
                        img = "assets/capricorn.webp";
                      }
                    } else if (_month == 1) {
                      if (date < 20) {
                        astro = "Capricorn";
                        detail =
                            "Capricorn is climbing the mountain straight to the top and knows that patience, perseverance, and dedication is the only way to scale. "
                            "The last earth sign of the zodiac, Capricorn, is represented by the sea-goat, a mythological creature with the body of a goat and the tail of a fish. "
                            "Accordingly, Capricorns are skilled at navigating both the material and emotional realms. ";
                        img = "assets/capricorn.webp";
                      } else {
                        astro = "Aquarius";
                        detail =
                            "Despite the 'aqua' in its name, Aquarius is actually the last air sign of the zodiac. "
                            "Innovative, progressive, and shamelessly revolutionary, Aquarius is represented by the water bearer, the mystical healer who bestows water, or life, upon the land. "
                            "Accordingly, Aquarius is the most humanitarian astrological sign. At the end of the day, Aquarius is dedicated to making the world a better place. ";
                        img = "assets/aquarius.webp";
                      }
                    } else if (_month == 2) {
                      if (date < 19) {
                        astro = "Aquarius";
                        detail =
                            "Despite the 'aqua' in its name, Aquarius is actually the last air sign of the zodiac. "
                            "Innovative, progressive, and shamelessly revolutionary, Aquarius is represented by the water bearer, the mystical healer who bestows water, or life, upon the land. "
                            "Accordingly, Aquarius is the most humanitarian astrological sign. At the end of the day, Aquarius is dedicated to making the world a better place. ";
                        img = "assets/aquarius.webp";
                      } else {
                        astro = "Pisces";
                        detail =
                            "If you looked up the word psychic in the dictionary, there would definitely be a picture of Pisces next to it. "
                            "Pisces is the most intuitive, sensitive, and empathetic sign of the entire zodiac — and that’s because it’s the last of the last. "
                            "As the final sign, Pisces has absorbed every lesson — the joys and the pain, the hopes and the fears — learned by all of the other signs. It's symbolized by two fish swimming in opposite directions, representing the constant division of Pisces' attention between fantasy and reality.";
                        img = "assets/pisces.webp";
                      }
                    } else if (_month == 3) {
                      if (date < 21) {
                        astro = "Pisces";
                        detail =
                            "If you looked up the word psychic in the dictionary, there would definitely be a picture of Pisces next to it. "
                            "Pisces is the most intuitive, sensitive, and empathetic sign of the entire zodiac — and that’s because it’s the last of the last. "
                            "As the final sign, Pisces has absorbed every lesson — the joys and the pain, the hopes and the fears — learned by all of the other signs. It's symbolized by two fish swimming in opposite directions, representing the constant division of Pisces' attention between fantasy and reality.";
                        img = "assets/pisces.webp";
                      } else {
                        astro = "Aries";
                        detail =
                            "The first sign of the zodiac, Aries loves to be number one."
                            "Naturally, this dynamic fire sign is no stranger to competition."
                            "Bold and ambitious, Aries dives headfirst into even the most challenging situations—and they'll make sure they always come out on top!";
                        img = "assets/aris.webp";
                      }
                    } else if (_month == 4) {
                      if (date < 20) {
                        astro = "Aries";
                        detail =
                            "The first sign of the zodiac, Aries loves to be number one."
                            "Naturally, this dynamic fire sign is no stranger to competition."
                            "Bold and ambitious, Aries dives headfirst into even the most challenging situations—and they'll make sure they always come out on top!";
                        img = "assets/aris.webp";
                      } else {
                        astro = "Taurus";
                        detail =
                            "Taurus is an earth sign represented by the bull. "
                            "Like their celestial spirit animal, Taureans enjoy relaxing in serene, bucolic environments surrounded by soft sounds, soothing aromas, and succulent flavors.";
                        img = "assets/taurus.webp";
                      }
                    } else if (_month == 5) {
                      if (date < 21) {
                        astro = "Taurus";
                        detail =
                            "Taurus is an earth sign represented by the bull. "
                            "Like their celestial spirit animal, Taureans enjoy relaxing in serene, bucolic environments surrounded by soft sounds, soothing aromas, and succulent flavors.";
                        img = "assets/taurus.webp";
                      } else {
                        astro = "Gemini";
                        detail =
                            "Have you ever been so busy that you wished you could clone yourself just to get everything done? "
                            "That's the Gemini experience in a nutshell. Spontaneous, playful, and adorably erratic, Gemini is driven by its insatiable curiosity. "
                            "Appropriately symbolized by the celestial twins, this air sign was interested in so many pursuits that it had to double itself. ";
                        img = "assets/gemini.webp";
                      }
                    } else if (_month == 6) {
                      if (date < 21) {
                        astro = "Gemini";
                        detail =
                            "Have you ever been so busy that you wished you could clone yourself just to get everything done? "
                            "That's the Gemini experience in a nutshell. Spontaneous, playful, and adorably erratic, Gemini is driven by its insatiable curiosity. "
                            "Appropriately symbolized by the celestial twins, this air sign was interested in so many pursuits that it had to double itself. ";
                        img = "assets/gemini.webp";
                      } else {
                        astro = "Cancer";
                        detail =
                            "Represented by the crab, Cancer seamlessly weaves between the sea and shore representing Cancer’s ability to exist in both emotional and material realms. "
                            "Cancers are highly intuitive and their psychic abilities manifest in tangible spaces. "
                            "But—just like the hard-shelled crustaceans—this water sign is willing to do whatever it takes to protect itself";
                        img = "assets/cancer.webp";
                      }
                    } else if (_month == 7) {
                      if (date < 23) {
                        astro = "Cancer";
                        detail =
                            "Represented by the crab, Cancer seamlessly weaves between the sea and shore representing Cancer’s ability to exist in both emotional and material realms. "
                            "Cancers are highly intuitive and their psychic abilities manifest in tangible spaces. "
                            "But—just like the hard-shelled crustaceans—this water sign is willing to do whatever it takes to protect itself";
                        img = "assets/cancer.webp";
                      } else {
                        astro = "Leo";
                        detail =
                            "Roll out the red carpet because Leo has arrived. "
                            "Passionate, loyal, and infamously dramatic, Leo is represented by the lion and these spirited fire signs are the kings and queens of the celestial jungle. "
                            "They're delighted to embrace their royal status: Vivacious, theatrical, and fiery, Leos love to bask in the spotlight and celebrate… well, themselves.";
                        img = "assets/leo.webp";
                      }
                    } else if (_month == 8) {
                      if (date < 23) {
                        astro = "Leo";
                        detail =
                            "Roll out the red carpet because Leo has arrived. "
                            "Passionate, loyal, and infamously dramatic, Leo is represented by the lion and these spirited fire signs are the kings and queens of the celestial jungle. "
                            "They're delighted to embrace their royal status: Vivacious, theatrical, and fiery, Leos love to bask in the spotlight and celebrate… well, themselves.";
                        img = "assets/leo.webp";
                      } else {
                        astro = "Virgo";
                        detail =
                            "if you want something done, give it to a busy person? Well, that definitely is the Virgo anthem."
                            "Virgos are logical, practical, and systematic in their approach to life. "
                            "Virgo is an earth sign historically represented by the goddess of wheat and agriculture, an association that speaks to Virgo's deep-rooted presence in the material world. "
                            "This earth sign is a perfectionist at heart and isn’t afraid to improve skills through diligent and consistent practice.";
                        img = "assets/virgo.webp";
                      }
                    } else if (_month == 9) {
                      if (date < 23) {
                        astro = "Virgo";
                        detail =
                            "if you want something done, give it to a busy person? Well, that definitely is the Virgo anthem."
                            "Virgos are logical, practical, and systematic in their approach to life. "
                            "Virgo is an earth sign historically represented by the goddess of wheat and agriculture, an association that speaks to Virgo's deep-rooted presence in the material world. "
                            "This earth sign is a perfectionist at heart and isn’t afraid to improve skills through diligent and consistent practice.";
                        img = "assets/virgo.webp";
                      } else {
                        astro = "Libra";
                        detail =
                            "Balance, harmony, and justice define Libra energy. "
                            "As a cardinal air sign, Libra is represented by the scales (interestingly, the only inanimate object of the zodiac), "
                            "an association that reflects Libra's fixation on establishing equilibrium. "
                            "Libra is obsessed with symmetry and strives to create equilibrium in all areas of life — especially when it comes to matters of the heart";
                        img = "assets/libra.webp";
                      }
                    } else if (_month == 10) {
                      if (date < 23) {
                        astro = "Libra";
                        detail =
                            "Balance, harmony, and justice define Libra energy. "
                            "As a cardinal air sign, Libra is represented by the scales (interestingly, the only inanimate object of the zodiac), "
                            "an association that reflects Libra's fixation on establishing equilibrium. "
                            "Libra is obsessed with symmetry and strives to create equilibrium in all areas of life — especially when it comes to matters of the heart";
                        img = "assets/libra.webp";
                      } else {
                        astro = "Scorpio";
                        detail =
                            "Elusive and mysterious, Scorpio is one of the most misunderstood signs of the zodiac. "
                            "Scorpio is a water sign that uses emotional energy as fuel, cultivating powerful wisdom through both the physical and unseen realms. "
                            "In fact, Scorpio derives its extraordinary courage from its psychic abilities, which is what makes this sign one of the most complicated, dynamic signs of the zodiac.";
                        img = "assets/scorpio.webp";
                      }
                    } else if (_month == 11) {
                      if (date < 22) {
                        astro = "Scorpio";
                        detail =
                            "Elusive and mysterious, Scorpio is one of the most misunderstood signs of the zodiac. "
                            "Scorpio is a water sign that uses emotional energy as fuel, cultivating powerful wisdom through both the physical and unseen realms. "
                            "In fact, Scorpio derives its extraordinary courage from its psychic abilities, which is what makes this sign one of the most complicated, dynamic signs of the zodiac.";
                        img = "assets/scorpio.webp";
                      } else {
                        astro = "Sagittarius";
                        detail =
                            "Oh, the places Sagittarius goes! But… actually. "
                            "This fire sign knows no bounds. Represented by the archer, "
                            "Sagittarians are always on a quest for knowledge. "
                            "The last fire sign of the zodiac, Sagittarius launches its many pursuits like blazing arrows, chasing after geographical, intellectual, and spiritual adventures.  ";
                        img = "assets/sagittarius.webp";
                      }
                    }
                  },
                );
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultScreen(
                    sign: astro,
                    details: detail,
                    image: img,
                  );
                }));
              },
              icon: const Icon(
                Icons.whatshot,
                color: Colors.grey,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Created by Kavan Patel"),
          ]),
        ));
  }
}
