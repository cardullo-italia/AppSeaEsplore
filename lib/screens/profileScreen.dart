import 'package:flutter/material.dart';

class ProfileScreenUser extends StatelessWidget {
  const ProfileScreenUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              // Background image container
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/sea.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              // Foreground content
              Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.people,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 90),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/91/ec/8c/91ec8ce08433deabe653f5c26d8028be.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text("Italia Maria Desirè Cardullo",
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600)),

        const SizedBox(height: 20),
         Container(
          padding: const EdgeInsets.only(left:10),
          child:
        const Align(
          alignment: Alignment.centerLeft,
          child:  Text("I Luoghi Visitati da te:",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600))))
      ],
    );
  }
}
