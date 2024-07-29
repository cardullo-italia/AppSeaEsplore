import 'package:flutter/material.dart';
import 'package:seaesplore/models/modelApiStruct/ristoranti.dart';

class TabBarScreenRistoranti extends StatefulWidget {
  const TabBarScreenRistoranti({super.key});

  @override
  State<TabBarScreenRistoranti> createState() => _TabBarScreenRistorantiState();
}

class _TabBarScreenRistorantiState extends State<TabBarScreenRistoranti> {
  late Future<List<RistorantiLoc>> futureRistoranti;

  @override
  void initState() {
    super.initState();
    futureRistoranti = RistorantiLoc.ristoranteAll();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<RistorantiLoc>>(
      future: RistorantiLoc.ristoranteAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Errore durante il caricamento"),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text("Nessun dato disponibile"),
          );
        } else {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              RistorantiLoc ristorante = snapshot.data![index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Container(
                  width: 311,
                  height: 174,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        opacity: 0.7,
                        image: NetworkImage(
                          ristorante.img,
                        ),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ristorante.nameResturant,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                size: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.location_on_rounded,
                                      color: Colors.white),
                                  Text(
                                    ristorante.indirizzo,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.bolt,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    ristorante.stars,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
