import 'fish_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const url = 'https://www.fishwatch.gov/api/species';

class FishWatchServices {
  static Future<List<FishWatchDataResponse>> fetchFishSpecies() async {
    final response = await http.get(Uri.parse(url));

    final species = fishWatchDataResponseFromJson(response.body);
    print(species);

    return species;
  }
}
