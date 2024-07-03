import 'package:flutter/material.dart';
import 'navbar.dart';
import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget categoryItem(String title, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30.0,
          child: Icon(icon, size: 30.0),
        ),
        SizedBox(height: 5.0),
        Text(title),
      ],
    );
  }

  Widget courseCard(String title, int count) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20.0),
          ),
          Text('$count lessons'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text(
          'Dream Care Hospital Ltd',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Q Search here...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20), // Adjust the padding as needed
              child: InteractiveViewer(
                clipBehavior: Clip.none,
                minScale: 1,
                maxScale: 4,
                child: Image.asset("images/caro1.png"), // Replace with your image
              ),
            ),
            Container(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  categoryItem('Find Doctor', Icons.search_rounded),
                  categoryItem('Appointment', Icons.event_note),
                  categoryItem('Admit', Icons.person),

                ],
              ),
            ),
            Container(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  categoryItem('Prescription', Icons.receipt_long),
                  categoryItem('Diagnostic', Icons.biotech),
                  categoryItem('Consultation', Icons.video_call_rounded),
                ],
              ),
            ),
            Container(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  categoryItem('Pharmacy', Icons.local_pharmacy_outlined),
                  categoryItem('Diagnostic', Icons.biotech),
                  categoryItem('Career', Icons.work_outline_rounded),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        tooltip: 'Go to Page 1',
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
        },
      ),
    );
  }
}

// class AuthButtons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Authentication Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 // Handle registration button press
//               },
//               child: Text('Register'),
//             ),
//             SizedBox(height: 16), // Add vertical spacing
//             ElevatedButton(
//               onPressed: () {
//                 // Handle login button press
//               },
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
