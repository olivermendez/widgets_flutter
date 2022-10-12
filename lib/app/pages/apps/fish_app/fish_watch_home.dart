import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/pages/apps/fish_app/fish_services.dart';
import 'package:widgets_flutter/app/pages/apps/fish_app/single_fish_page.dart';

import 'fish_models.dart';

import 'package:flutter_html/flutter_html.dart';

class FishWatchAppHome extends StatefulWidget {
  FishWatchAppHome({Key? key}) : super(key: key);

  static const String routeName = '/fish-app';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => FishWatchAppHome(),
    );
  }

  @override
  State<FishWatchAppHome> createState() => _FishWatchAppHomeState();
}

class _FishWatchAppHomeState extends State<FishWatchAppHome> {
  late Future<List<FishWatchDataResponse>> getData;

  @override
  void initState() {
    super.initState();
    getData = FishWatchServices.fetchFishSpecies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fish App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      //TODO! REFACTOR
      body: FutureBuilder<List<FishWatchDataResponse>>(
        future: getData,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Text('Loading....');
            default:
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final single = snapshot.data![index];
                    print(single.speciesIllustrationPhoto!.src);

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SingleFishPage(
                                      specie: single,
                                    )));
                      },
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                single.scientificName.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "secondary text",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Html(
                                data: single.location.toString(),
                              ),
                            ),
                            Image.network(
                              single.speciesIllustrationPhoto!.src.toString(),
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Text('Error: ${snapshot.error}!!!!');
              }
          }
        },
      ),
    );
  }
}
