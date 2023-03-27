import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    Product({
       required this.createdAt,
       required this.name,
       required this.details,
       required this.stock,
       required this.id,
       
    });

    final String  createdAt;
    final String  name;
    final List<String> details;
    final String  stock;
    final String  id;
    

    factory Product.fromJson(Map<String, dynamic> json) => Product(

        createdAt: json["createdAt"],
        name: json["name"],
        details: List<String>.from(json["details"].map((x) => x)),
        stock : json["stock"],
        id: json["id"],
       
    );

    Map<String, dynamic> toJson() => {
        "createdAt" : createdAt,
        "name": name,
        "details": List<dynamic>.from(details!.map((x) => x)),
        "stock": stock,
        "id" : id,
    };
}

enum Ancestry { HALF_BLOOD, MUGGLEBORN, PURE_BLOOD, EMPTY, SQUIB, MUGGLE, HALF_VEELA, QUARTER_VEELA }

final ancestryValues = EnumValues({
    "": Ancestry.EMPTY,
    "half-blood": Ancestry.HALF_BLOOD,
    "half-veela": Ancestry.HALF_VEELA,
    "muggle": Ancestry.MUGGLE,
    "muggleborn": Ancestry.MUGGLEBORN,
    "pure-blood": Ancestry.PURE_BLOOD,
    "quarter-veela": Ancestry.QUARTER_VEELA,
    "squib": Ancestry.SQUIB
});

enum DateOfBirth { THE_31071980, THE_19091979, THE_01031980, THE_05061980, THE_04101925, EMPTY, THE_09011960, THE_06121928, THE_30071980, THE_13021981, THE_11081981, THE_03111959, THE_10031960, THE_06021950, THE_31121926 }

final dateOfBirthValues = EnumValues({
    "": DateOfBirth.EMPTY,
    "01-03-1980": DateOfBirth.THE_01031980,
    "03-11-1959": DateOfBirth.THE_03111959,
    "04-10-1925": DateOfBirth.THE_04101925,
    "05-06-1980": DateOfBirth.THE_05061980,
    "06-02-1950": DateOfBirth.THE_06021950,
    "06-12-1928": DateOfBirth.THE_06121928,
    "09-01-1960": DateOfBirth.THE_09011960,
    "10-03-1960": DateOfBirth.THE_10031960,
    "11-08-1981": DateOfBirth.THE_11081981,
    "13-02-1981": DateOfBirth.THE_13021981,
    "19-09-1979": DateOfBirth.THE_19091979,
    "30-07-1980": DateOfBirth.THE_30071980,
    "31-07-1980": DateOfBirth.THE_31071980,
    "31-12-1926": DateOfBirth.THE_31121926
});

enum EyeColour { GREEN, BROWN, BLUE, GREY, EMPTY, BLACK, RED, YELLOW, PALE_SILVERY, AMBER, ORANGE, WHITE, DARK, HAZEL, YELLOWISH }

final eyeColourValues = EnumValues({
    "amber": EyeColour.AMBER,
    "black": EyeColour.BLACK,
    "blue": EyeColour.BLUE,
    "brown": EyeColour.BROWN,
    "dark": EyeColour.DARK,
    "": EyeColour.EMPTY,
    "green": EyeColour.GREEN,
    "grey": EyeColour.GREY,
    "hazel": EyeColour.HAZEL,
    "orange": EyeColour.ORANGE,
    "pale, silvery": EyeColour.PALE_SILVERY,
    "red": EyeColour.RED,
    "white": EyeColour.WHITE,
    "yellow": EyeColour.YELLOW,
    "yellowish": EyeColour.YELLOWISH
});

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({
    "female": Gender.FEMALE,
    "male": Gender.MALE
});

enum HairColour { BLACK, BROWN, RED, BLONDE, BALD, GREY, EMPTY, BLOND, SILVER, SANDY, WHITE, GINGER, DARK, TAWNY, DULL }

final hairColourValues = EnumValues({
    "bald": HairColour.BALD,
    "black": HairColour.BLACK,
    "blond": HairColour.BLOND,
    "blonde": HairColour.BLONDE,
    "brown": HairColour.BROWN,
    "dark": HairColour.DARK,
    "dull": HairColour.DULL,
    "": HairColour.EMPTY,
    "ginger": HairColour.GINGER,
    "grey": HairColour.GREY,
    "red": HairColour.RED,
    "sandy": HairColour.SANDY,
    "silver": HairColour.SILVER,
    "tawny": HairColour.TAWNY,
    "white": HairColour.WHITE
});

enum House { GRYFFINDOR, SLYTHERIN, HUFFLEPUFF, RAVENCLAW, EMPTY }

final houseValues = EnumValues({
    "": House.EMPTY,
    "Gryffindor": House.GRYFFINDOR,
    "Hufflepuff": House.HUFFLEPUFF,
    "Ravenclaw": House.RAVENCLAW,
    "Slytherin": House.SLYTHERIN
});

enum Patronus { STAG, OTTER, JACK_RUSSELL_TERRIER, EMPTY, TABBY_CAT, SWAN, DOE, HARE, HORSE, WOLF, WEASEL, LYNX, PERSIAN_CAT, BOAR, GOAT }

final patronusValues = EnumValues({
    "boar": Patronus.BOAR,
    "doe": Patronus.DOE,
    "": Patronus.EMPTY,
    "goat": Patronus.GOAT,
    "hare": Patronus.HARE,
    "horse": Patronus.HORSE,
    "Jack Russell terrier": Patronus.JACK_RUSSELL_TERRIER,
    "lynx": Patronus.LYNX,
    "otter": Patronus.OTTER,
    "persian cat": Patronus.PERSIAN_CAT,
    "stag": Patronus.STAG,
    "swan": Patronus.SWAN,
    "tabby cat": Patronus.TABBY_CAT,
    "weasel": Patronus.WEASEL,
    "wolf": Patronus.WOLF
});

enum Species { HUMAN, HALF_GIANT, WEREWOLF, CAT, GOBLIN, OWL, GHOST, POLTERGEIST, THREE_HEADED_DOG, DRAGON, CENTAUR, HOUSE_ELF, ACROMANTULA, HIPPOGRIFF, GIANT, VAMPIRE, HALF_HUMAN }

final speciesValues = EnumValues({
    "acromantula": Species.ACROMANTULA,
    "cat": Species.CAT,
    "centaur": Species.CENTAUR,
    "dragon": Species.DRAGON,
    "ghost": Species.GHOST,
    "giant": Species.GIANT,
    "goblin": Species.GOBLIN,
    "half-giant": Species.HALF_GIANT,
    "half-human": Species.HALF_HUMAN,
    "hippogriff": Species.HIPPOGRIFF,
    "house-elf": Species.HOUSE_ELF,
    "human": Species.HUMAN,
    "owl": Species.OWL,
    "poltergeist": Species.POLTERGEIST,
    "three-headed dog": Species.THREE_HEADED_DOG,
    "vampire": Species.VAMPIRE,
    "werewolf": Species.WEREWOLF
});

class Wand {
    Wand({
        this.wood,
        this.core,
        this.length,
    });

    final Wood? wood;
    final Core ?core;
    final dynamic length;

    factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        wood: woodValues.map![json["wood"]],
        core: coreValues.map![json["core"]],
        length: json["length"],
    );

    Map<String, dynamic> toJson() => {
        "wood": woodValues.reverse[wood],
        "core": coreValues.reverse[core],
        "length": length,
    };
}

enum Core { PHOENIX_FEATHER, DRAGON_HEARTSTRING, UNICORN_TAIL_HAIR, EMPTY, UNICORN_HAIR }

final coreValues = EnumValues({
    "dragon heartstring": Core.DRAGON_HEARTSTRING,
    "": Core.EMPTY,
    "phoenix feather": Core.PHOENIX_FEATHER,
    "unicorn hair": Core.UNICORN_HAIR,
    "unicorn tail-hair": Core.UNICORN_TAIL_HAIR
});

enum Wood { HOLLY, VINE, WILLOW, HAWTHORN, EMPTY, ASH, OAK, CHERRY, YEW, CYPRESS, WALNUT, CEDAR, BIRCH, ELM, MAHOGANY, LARCH, CHESTNUT, HORNBEAM }

final woodValues = EnumValues({
    "ash": Wood.ASH,
    "birch": Wood.BIRCH,
    "cedar": Wood.CEDAR,
    "cherry": Wood.CHERRY,
    "chestnut": Wood.CHESTNUT,
    "cypress": Wood.CYPRESS,
    "elm": Wood.ELM,
    "": Wood.EMPTY,
    "hawthorn": Wood.HAWTHORN,
    "holly": Wood.HOLLY,
    "hornbeam": Wood.HORNBEAM,
    "larch": Wood.LARCH,
    "mahogany": Wood.MAHOGANY,
    "oak": Wood.OAK,
    "vine": Wood.VINE,
    "walnut": Wood.WALNUT,
    "willow": Wood.WILLOW,
    "yew": Wood.YEW
});

class EnumValues<T> {
    Map<String, T>? map;
    Map<T, String> ?reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap ??= map!.map((k, v) =>  MapEntry(v, k));
        return reverseMap!;
    }
}