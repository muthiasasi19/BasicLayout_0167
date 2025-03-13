import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiCuaca());
}

class AplikasiCuaca extends StatelessWidget {
  const AplikasiCuaca({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BerandaCuaca(),
    );
  }
}

class BerandaCuaca extends StatelessWidget {
  const BerandaCuaca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Today',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                const Text(
                  '28°C',
                  style: TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 250,
                  height: 2,
                  color: Colors.grey,
                ),
              ],
            ),
            const Text(
              'Sunny',
              style: TextStyle(fontSize: 20, color: Colors.orangeAccent),
            ),
            const Text(
              '☃ 5 km/h',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Next 7 days',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoCuaca('Now', '28°C', '10 km/h', '0%'),
                      infoCuaca('17:00', '28°C', '10 km/h', '0%'),
                      infoCuaca('20:00', '28°C', '10 km/h', '0%'),
                      infoCuaca('23:00', '28°C', '10 km/h', '0%'),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'Develop by: MuthiaSasi.id',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

Widget infoCuaca(String waktu, String suhu, String angin, String hujan) {
  return Column(
    children: [
      const Icon(Icons.ac_unit, color: Colors.blue),
      Text(
        waktu,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(suhu, style: const TextStyle(fontSize: 16, color: Colors.blue)),
      const SizedBox(height: 4),
      const Icon(Icons.wind_power, color: Colors.blueGrey),
      const SizedBox(height: 4),
      Text(angin, style: const TextStyle(fontSize: 14, color: Colors.red)),
      const SizedBox(height: 4),
      const Icon(Icons.umbrella, color: Colors.blue),
      const SizedBox(height: 4),
      Text(hujan, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    ],
  );
}
