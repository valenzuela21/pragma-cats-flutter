
import 'package:equatable/equatable.dart';

class Cats extends Equatable {
  final Weight weight;
  final String id;
  final String name;
  final String? cfaUrl;
  final String? vetstreetUrl;
  final String? vcahospitalsUrl;
  final String temperament;
  final String origin;
  final String countryCodes;
  final String countryCode;
  final String description;
  final String lifeSpan;
  final int indoor;
  final int? lap;
  final String? altNames;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  final int suppressedTail;
  final int shortLegs;
  final String? wikipediaUrl;
  final int hypoallergenic;
  final String? referenceImageId;
  final int? catFriendly;
  final int? bidability;

  Cats({
    required this.weight,
    required this.id,
    required this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    this.lap,
    this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    this.wikipediaUrl,
    required this.hypoallergenic,
    this.referenceImageId,
    this.catFriendly,
    this.bidability,
  });

  factory Cats.fromJson(Map<String, dynamic> json) {
    return Cats(
      weight: Weight.fromJson(json["weight"]),
      id: json["id"],
      name: json["name"],
      cfaUrl: json["cfa_url"],
      vetstreetUrl: json["vetstreet_url"],
      vcahospitalsUrl: json["vcahospitals_url"],
      temperament: json["temperament"],
      origin: json["origin"],
      countryCodes: json["country_codes"],
      countryCode: json["country_code"],
      description: json["description"],
      lifeSpan: json["life_span"],
      indoor: json["indoor"],
      lap: json["lap"],
      altNames: json["alt_names"],
      adaptability: json["adaptability"],
      affectionLevel: json["affection_level"],
      childFriendly: json["child_friendly"],
      dogFriendly: json["dog_friendly"],
      energyLevel: json["energy_level"],
      grooming: json["grooming"],
      healthIssues: json["health_issues"],
      intelligence: json["intelligence"],
      sheddingLevel: json["shedding_level"],
      socialNeeds: json["social_needs"],
      strangerFriendly: json["stranger_friendly"],
      vocalisation: json["vocalisation"],
      experimental: json["experimental"],
      hairless: json["hairless"],
      natural: json["natural"],
      rare: json["rare"],
      rex: json["rex"],
      suppressedTail: json["suppressed_tail"],
      shortLegs: json["short_legs"],
      wikipediaUrl: json["wikipedia_url"],
      hypoallergenic: json["hypoallergenic"],
      referenceImageId: json["reference_image_id"],
      catFriendly: json["cat_friendly"],
      bidability: json["bidability"],
    );
  }

  factory Cats.initial() =>  Cats(
    weight: Weight.fromJson({
      "imperial": "",
      "metric": ""
    }),
    id: '',
    name: '',
    cfaUrl: '',
    vetstreetUrl: '',
    vcahospitalsUrl: '',
    temperament: '',
    origin: '',
    countryCodes: '',
    countryCode: '',
    description: '',
    lifeSpan: '',
    indoor: 0,
    lap: 0,
    altNames: '',
    adaptability: 0,
    affectionLevel: 0,
    childFriendly: 0,
    dogFriendly: 0,
    energyLevel: 0,
    grooming: 0,
    healthIssues: 0,
    intelligence: 0,
    sheddingLevel: 0,
    socialNeeds: 0,
    strangerFriendly: 0,
    vocalisation: 0,
    experimental: 0,
    hairless: 0,
    natural: 0,
    rare: 0,
    rex: 0,
    suppressedTail: 0,
    shortLegs: 0,
    wikipediaUrl: '',
    hypoallergenic: 0,
    referenceImageId: '',
    catFriendly: 0,
    bidability: 0,
  );

  @override
  List<Object?> get props{
    return[
      weight,
      id,
      name,
      cfaUrl,
      vetstreetUrl,
      vcahospitalsUrl,
      temperament,
      origin,
      countryCodes,
      countryCode,
      description,
      lifeSpan,
      indoor,
      lap,
      altNames,
      adaptability,
      affectionLevel,
      childFriendly,
      dogFriendly,
      energyLevel,
      grooming,
      healthIssues,
      intelligence,
      sheddingLevel,
      socialNeeds,
      strangerFriendly,
      vocalisation,
      experimental,
      hairless,
      natural,
      rare,
      rex,
      suppressedTail,
      shortLegs,
      wikipediaUrl,
      hypoallergenic,
      referenceImageId,
      catFriendly,
      bidability,
    ];
  }

  @override
  String toString() {
    return 'Cats{weight: $weight, id: $id, name: $name, cfaUrl: $cfaUrl, vetstreetUrl: $vetstreetUrl, vcahospitalsUrl: $vcahospitalsUrl, temperament: $temperament, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, description: $description, lifeSpan: $lifeSpan, indoor: $indoor, lap: $lap, altNames: $altNames, adaptability: $adaptability, affectionLevel: $affectionLevel, childFriendly: $childFriendly, dogFriendly: $dogFriendly, energyLevel: $energyLevel, grooming: $grooming, healthIssues: $healthIssues, intelligence: $intelligence, sheddingLevel: $sheddingLevel, socialNeeds: $socialNeeds, strangerFriendly: $strangerFriendly, vocalisation: $vocalisation, experimental: $experimental, hairless: $hairless, natural: $natural, rare: $rare, rex: $rex, suppressedTail: $suppressedTail, shortLegs: $shortLegs, wikipediaUrl: $wikipediaUrl, hypoallergenic: $hypoallergenic, referenceImageId: $referenceImageId, catFriendly: $catFriendly, bidability: $bidability}';
  }

  Cats copyWith({
    Weight? weight,
    String? id,
    String? name,
    String? cfaUrl,
    String? vetstreetUrl,
    String? vcahospitalsUrl,
    String? temperament,
    String? origin,
    String? countryCodes,
    String? countryCode,
    String? description,
    String? lifeSpan,
    int? indoor,
    int? lap,
    String? altNames,
    int? adaptability,
    int? affectionLevel,
    int? childFriendly,
    int? dogFriendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    int? sheddingLevel,
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressedTail,
    int? shortLegs,
    String? wikipediaUrl,
    int? hypoallergenic,
    String? referenceImageId,
    int? catFriendly,
    int? bidability,
  }) =>
      Cats(
        weight: weight ?? this.weight,
        id: id ?? this.id,
        name: name ?? this.name,
        cfaUrl: cfaUrl ?? this.cfaUrl,
        vetstreetUrl: vetstreetUrl ?? this.vetstreetUrl,
        vcahospitalsUrl: vcahospitalsUrl ?? this.vcahospitalsUrl,
        temperament: temperament ?? this.temperament,
        origin: origin ?? this.origin,
        countryCodes: countryCodes ?? this.countryCodes,
        countryCode: countryCode ?? this.countryCode,
        description: description ?? this.description,
        lifeSpan: lifeSpan ?? this.lifeSpan,
        indoor: indoor ?? this.indoor,
        lap: lap ?? this.lap,
        altNames: altNames ?? this.altNames,
        adaptability: adaptability ?? this.adaptability,
        affectionLevel: affectionLevel ?? this.affectionLevel,
        childFriendly: childFriendly ?? this.childFriendly,
        dogFriendly: dogFriendly ?? this.dogFriendly,
        energyLevel: energyLevel ?? this.energyLevel,
        grooming: grooming ?? this.grooming,
        healthIssues: healthIssues ?? this.healthIssues,
        intelligence: intelligence ?? this.intelligence,
        sheddingLevel: sheddingLevel ?? this.sheddingLevel,
        socialNeeds: socialNeeds ?? this.socialNeeds,
        strangerFriendly: strangerFriendly ?? this.strangerFriendly,
        vocalisation: vocalisation ?? this.vocalisation,
        experimental: experimental ?? this.experimental,
        hairless: hairless ?? this.hairless,
        natural: natural ?? this.natural,
        rare: rare ?? this.rare,
        rex: rex ?? this.rex,
        suppressedTail: suppressedTail ?? this.suppressedTail,
        shortLegs: shortLegs ?? this.shortLegs,
        wikipediaUrl: wikipediaUrl ?? this.wikipediaUrl,
        hypoallergenic: hypoallergenic ?? this.hypoallergenic,
        referenceImageId: referenceImageId ?? this.referenceImageId,
        catFriendly: catFriendly ?? this.catFriendly,
        bidability: bidability ?? this.bidability,
      );
}


class Weight {
  String imperial;
  String metric;

  Weight({
    required this.imperial,
    required this.metric,
  });

  Weight copyWith({
    String? imperial,
    String? metric,
  }) =>
      Weight(
        imperial: imperial ?? this.imperial,
        metric: metric ?? this.metric,
      );

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
    imperial: json["imperial"],
    metric: json["metric"],
  );

  Map<String, dynamic> toJson() => {
    "imperial": imperial,
    "metric": metric,
  };
}
