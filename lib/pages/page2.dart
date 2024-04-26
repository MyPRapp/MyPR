import 'package:flutter/material.dart';

class SykoRoute extends StatelessWidget {
  SykoRoute({super.key});
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sykos'),
          backgroundColor: const Color(0xFF9c0c04),
        ),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/clubPhotos/Untitled_Artwork.png'),
                    fit: BoxFit.fill)),
          ),
          ListView(controller: _scrollController, children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/clubPhotos/Syko.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                'Φιάλες και Τιμές',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildInfoCard('Απλό', '5 άτομα', '110€'),
            const SizedBox(
              height: 20,
            ),
            _buildInfoCard('Special', '5 άτομα', '120€'),
            const SizedBox(
              height: 20,
            ),
            _buildInfoCard('Premium', '5 άτομα', '160€'),
          ]),
        ]));
  }
}

class BlastRoute extends StatelessWidget {
  const BlastRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blast Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

Widget _buildInfoCard(String sectionTitle, String description, String number) {
  return Card(
    color: const Color(0xFF9c0c04),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sectionTitle,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(), // This is an empty container to add spacing
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
