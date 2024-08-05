import 'package:flutter/material.dart';
import 'package:seaesplore/models/modelApiStruct/spiagge.dart';

class TabBarSpiaggeScreen extends StatefulWidget {
  const TabBarSpiaggeScreen({super.key});

  @override
  State<TabBarSpiaggeScreen> createState() => _TabBarSpiaggeScreenState();
}

class _TabBarSpiaggeScreenState extends State<TabBarSpiaggeScreen> {
  late Future<List<Spiaggie>> futureSpiaggie;

  @override
  void initState() {
    super.initState();
    futureSpiaggie = Spiaggie.spiaggieAll();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Spiaggie.spiaggieAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: CircularProgressIndicator());
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text("Nessun dato disponibile"),
          );
        } else {
          return GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              Spiaggie spiaggia = snapshot.data![index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 252,
                  height: 310,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        opacity: 0.5,
                        image: NetworkImage(spiaggia.img),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    spiaggia.star,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.bolt,
                                    color: Colors.black,
                                  ),
                                ],
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
                                color: Color(0xFFA5C4D4),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            spiaggia.nameSpiaggia,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
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
