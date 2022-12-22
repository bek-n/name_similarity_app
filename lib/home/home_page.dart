import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomePage extends StatefulWidget {
  final String name;
  const HomePage({super.key, this.name = 'Bek'});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Name Similarity'),
      ),
      body: isLoading
          ? LoadingAnimationWidget.bouncingBall(color: Colors.red, size: 40)
          : ListView.builder(
              itemBuilder: ((context, index) => Container(
                    margin: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ))),
    );
  }
}
