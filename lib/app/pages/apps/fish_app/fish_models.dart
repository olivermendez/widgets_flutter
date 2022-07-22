// To parse this JSON data, do
//
//     final fishWatchDataResponse = fishWatchDataResponseFromJson(jsonString);

import 'dart:convert';

List<FishWatchDataResponse> fishWatchDataResponseFromJson(String str) =>
    List<FishWatchDataResponse>.from(
        json.decode(str).map((x) => FishWatchDataResponse.fromJson(x)));

class FishWatchDataResponse {
  FishWatchDataResponse({
    this.fisheryManagement,
    this.habitat,
    this.habitatImpacts,
    this.imageGallery,
    this.location,
    this.management,
    this.noaaFisheriesRegion,
    this.population,
    this.populationStatus,
    this.scientificName,
    this.speciesAliases,
    this.speciesIllustrationPhoto,
    this.speciesName,
    this.animalHealth,
    this.availability,
    this.biology,
    this.bycatch,
    this.calories,
    this.carbohydrate,
    this.cholesterol,
    this.color,
    this.fiberTotalDietary,
    this.fishingRate,
    this.harvest,
    this.harvestType,
    this.healthBenefits,
    this.humanHealth,
    this.physicalDescription,
    this.production,
    this.protein,
    this.quote,
    this.quoteBackgroundColor,
    this.research,
    this.saturatedFattyAcidsTotal,
    this.selenium,
    this.servingWeight,
    this.servings,
    this.sodium,
    this.source,
    this.sugarsTotal,
    this.taste,
    this.texture,
    this.path,
    this.lastUpdate,
  });

  String? fisheryManagement;
  String? habitat;
  String? habitatImpacts;
  List<ImageGallery>? imageGallery;
  //List<SpeciesIllustrationPhoto>? imageGallery;
  String? location;
  dynamic? management;
  String? noaaFisheriesRegion;
  String? population;
  String? populationStatus;
  String? scientificName;
  String? speciesAliases;
  ImageGallery? speciesIllustrationPhoto;
  String? speciesName;
  dynamic animalHealth;
  String? availability;
  String? biology;
  String? bycatch;
  String? calories;
  String? carbohydrate;
  String? cholesterol;
  String? color;

  String? fiberTotalDietary;
  String? fishingRate;
  String? harvest;
  String? harvestType;
  String? healthBenefits;

  dynamic humanHealth;
  String? physicalDescription;
  dynamic production;
  String? protein;
  String? quote;
  String? quoteBackgroundColor;
  dynamic research;
  String? saturatedFattyAcidsTotal;
  String? selenium;
  String? servingWeight;
  String? servings;
  String? sodium;
  String? source;
  String? sugarsTotal;
  String? taste;
  String? texture;
  String? path;
  String? lastUpdate;

  factory FishWatchDataResponse.fromJson(Map<String, dynamic> json) =>
      FishWatchDataResponse(
        fisheryManagement: json["Fishery Management"],
        habitat: json["Habitat"],
        habitatImpacts: json["Habitat Impacts"],
        location: json["Location"],
        management: json["Management"],
        noaaFisheriesRegion: json["NOAA Fisheries Region"],
        population: json["Population"],
        populationStatus: json["Population Status"],
        scientificName: json["Scientific Name"],
        speciesAliases: json["Species Aliases"],
        //imageGallery: json['Image Gallery'] == null
        //    ? null
        //    : List<ImageGallery>.from(
        //        json["Image Gallery"]?.map((x) => ImageGallery?.fromJson(x))),
        speciesIllustrationPhoto:
            ImageGallery.fromJson(json["Species Illustration Photo"]),
        speciesName: json["Species Name"],
        animalHealth: json["Animal Health"],
        availability: json["Availability"],
        biology: json["Biology"],
        bycatch: json["Bycatch"],
        calories: json["Calories"],
        carbohydrate: json["Carbohydrate"],
        cholesterol: json["Cholesterol"],
        color: json["Color"],
        fiberTotalDietary: json["Fiber, Total Dietary"],
        fishingRate: json["Fishing Rate"],
        harvest: json["Harvest"],
        harvestType: json["Harvest Type"],
        healthBenefits: json["Health Benefits"],
        humanHealth: json["Human Health"],
        physicalDescription: json["Physical Description"],
        production: json["Production"],
        protein: json["Protein"],
        quote: json["Quote"],
        quoteBackgroundColor: json["Quote Background Color"],
        research: json["Research"],
        saturatedFattyAcidsTotal: json["Saturated Fatty Acids, Total"],
        selenium: json["Selenium"],
        servingWeight: json["Serving Weight"],
        servings: json["Servings"],
        sodium: json["Sodium"],
        source: json["Source"],
        sugarsTotal: json["Sugars, Total"],
        taste: json["Taste"],
        texture: json["Texture"],
        path: json["Path"],
        lastUpdate: json["last_update"],
      );
}

class ImageGallery {
  String? src;
  String? alt;
  String? title;

  ImageGallery({this.src, this.alt, this.title});

  ImageGallery.fromJson(Map<String, dynamic> json) {
    src = json['src'];
    alt = json['alt'];
    title = json['title'];
  }
}
