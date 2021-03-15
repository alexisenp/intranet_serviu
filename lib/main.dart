import 'package:flutter/material.dart';
import 'package:intranet_serviu/widgets/aplicaciones_banner.dart';
import 'package:intranet_serviu/widgets/aplicacion.dart';
import 'package:intranet_serviu/widgets/my_drawer.dart';
import 'package:intranet_serviu/widgets/noticia.dart';
import 'package:intranet_serviu/widgets/noticiasBanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//const desktopBreakpoint = 1024;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width >= 1024;
    return Scaffold(
      appBar: AppBar(),
      drawer: !isDesktop ? MyDrawer() : null,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (isDesktop) MyDrawer(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildBody extends StatelessWidget {
  const BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildAplicaciones(),
          SizedBox(height: 20),
          BuildNoticias(),
        ],
      ),
    );
  }
}
