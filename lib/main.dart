import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage(
        'https://www.futuraexpress.com.br/blog/wp-content/uploads/2020/03/JPG-Alta-Qualidade.jpg'),
    radius: 150,
  );

  final nome = const Text(
    'Alexandro Santos',
    style: TextStyle(
      fontSize: 30,
    ),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
    onPressed: () => {
      launchUrl(
        Uri(scheme: 'tel', path: '46999994581'),
      ),
    },
    icon: const Icon(Icons.phone),
    color: Colors.blue,
  );

  final botaoEmail = IconButton(
    onPressed: () => {
      launchUrl(
        Uri(scheme: 'mailto', path: 'alexandro.raboni@gmail.com'),
      ),
    },
    icon: const Icon(Icons.mail),
    color: Colors.blue,
  );

  final botaoSms = IconButton(
    onPressed: () => {
      launchUrl(
        Uri(scheme: 'sms', path: '46999994581'),
      ),
    },
    icon: const Icon(Icons.sms),
    color: Colors.blue,
  );

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botaoTelefone,
              botaoEmail,
              botaoSms,
            ],
          )
        ],
      ),
    );
  }
}
