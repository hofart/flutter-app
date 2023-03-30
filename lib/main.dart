import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World!!',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Hello World Flutter!!!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String nameState = '';

  void setToAnotherName(String name) {
    setState(() {
      nameState = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NameState(nameState: nameState),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setToAnotherName('Hello Flutter!');
              },
              child: const Text('say hello'),
            )
          ],
        ),
      ),
    );
  }
}

class NameState extends StatelessWidget {
  const NameState({
    Key? key,
    required this.nameState,
  }) : super(key: key);

  final String nameState;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var buttonStyle = theme.textTheme.displayMedium!
        .copyWith(color: theme.colorScheme.onPrimary);

    return Card(
        color: theme.colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            nameState,
            style: buttonStyle,
          ),
        ));
  }
}
