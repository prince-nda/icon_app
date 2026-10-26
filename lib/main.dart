import 'package:flutter/material.dart';

void main() => runApp(const IconDemoApp());

class IconDemoApp extends StatelessWidget {
  const IconDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IconLab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const IconDemoPage(),
    );
  }
}

class IconDemoPage extends StatefulWidget {
  const IconDemoPage({super.key});

  @override
  State<IconDemoPage> createState() => _IconDemoPageState();
}

class _IconDemoPageState extends State<IconDemoPage> {
  bool liked = false;
  double iconSize = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Widget Demo')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Basic icon
            const Text('1. Basic Icon', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const Icon(Icons.home),

            const SizedBox(height: 24),

            // 2. Styled icons (size + color)
            const Text('2. Size and Color', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 48),
                Icon(Icons.star, color: Colors.amber, size: 48),
                Icon(Icons.wifi, color: Colors.blue, size: 48),
              ],
            ),

            const SizedBox(height: 24),

            // 3. Interactive icon
            const Text('3. Interactive Icon', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Center(
              child: IconButton(
                iconSize: iconSize,
                icon: Icon(
                  liked ? Icons.favorite : Icons.favorite_border,
                  color: liked ? Colors.red : Colors.grey,
                ),
                onPressed: () => setState(() => liked = !liked),
              ),
            ),
            Slider(
              value: iconSize,
              min: 30,
              max: 120,
              label: iconSize.round().toString(),
              onChanged: (v) => setState(() => iconSize = v),
            ),
          ],
        ),
      ),
    );
  }
}