import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Title"),
              background: Image.network(
                "https://via.placeholder.com/600x400",
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
            Text("Hello world"),
          ]))
        ],
      ),
    );
  }
}
