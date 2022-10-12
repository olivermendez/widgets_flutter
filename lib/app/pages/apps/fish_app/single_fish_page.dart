import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'fish_models.dart';

// ignore: must_be_immutable
class SingleFishPage extends StatefulWidget {
  FishWatchDataResponse specie;
  SingleFishPage({Key? key, required this.specie}) : super(key: key);

  @override
  State<SingleFishPage> createState() => _SingleFishPageState();
}

class _SingleFishPageState extends State<SingleFishPage> {
  @override
  Widget build(BuildContext context) {
    //TODO! REFACTOR THIS CODE
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.specie.scientificName.toString()),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: ListView(
        children: [
          //ImageScrollWidget(images: widget.specie.speciesIllustrationPhoto!.)
          Image.network(widget.specie.speciesIllustrationPhoto!.src.toString()),
          Divider(),
          /*
          Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Html(data: "Color: " + widget.specie.availability.toString()),
              Html(data: "Color: " + widget.specie.availability.toString()),
              //Text("data"),
              //Text("data"),
            ],
          ),
          */
          //Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  child: ListTile(
                    title: const Text(
                      'Habitat Impacts',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(widget.specie.habitatImpacts.toString()),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: ListTile(
                    title: const Text('Bycatch',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(widget.specie.bycatch.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20),
            child: Text("History",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
          ),
          //Divider(),
          Html(data: widget.specie.fisheryManagement)
        ],
      ),
    );
  }
}

class ImageScrollWidget extends StatefulWidget {
  List<String> images;
  ImageScrollWidget({Key? key, required this.images}) : super(key: key);

  @override
  State<ImageScrollWidget> createState() => _ImageScrollWidgetState();
}

class _ImageScrollWidgetState extends State<ImageScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          final single = widget.images[index];
          return Image.network(single.toString());
        },
      ),
    );
  }
}
