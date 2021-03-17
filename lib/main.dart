import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intranet_serviu/widgets/aplicaciones_banner.dart';
import 'package:intranet_serviu/widgets/my_drawer.dart';
import 'package:intranet_serviu/widgets/my_right_drawer.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Intranet Serviu Coquimbo')),
      ),
      drawer: !kIsWeb ? MyDrawer() : null,
      endDrawer: !kIsWeb ? MyRightDrawer() : null,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (kIsWeb) MyDrawer(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BuildBody(),
              ),
            ),
            if (kIsWeb) MyRightDrawer(),
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BuildAplicaciones(),
          SizedBox(height: 5),
          BuildNoticias(),
        ],
      ),
    );
  }
}
