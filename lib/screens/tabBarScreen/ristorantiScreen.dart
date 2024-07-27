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
          RistorantiLoc ristorante = snapshot.data![0];
          return Text("Ciao");
        }
      },
    );
  }
}
