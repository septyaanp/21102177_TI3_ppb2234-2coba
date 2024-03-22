import 'package:flutter/material.dart';
import 'package:navigation_dan_routing_prak5/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Color.fromARGB(255, 81, 156, 248),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(
                      data: 'Data dari home Page',
                    ),
                  ),
                );
              },
              child: const Text('menuju halaman kedua'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second_page');
              },
              child: const Text('Menuju halaman kedua dengan route'),
            ),
          ],
        ),
      ),
    );
  }
}
