abstract class Item{
  String name = "Item";
  String type = "";
  String imageURL = "";
  int quanity = 0;
  int cost = 0;
  void use();
}

class Weapon extends Item{
  int damageMin = 0;
  int damageMax = 0;
  int strengthBonus = 0;
  int agilityBonus = 0;
  int intelligenceBonus = 0;
  String classType = "";
  String rare = "";
  Weapon({
    String name = "",
    int cost = 0,
    String imageURL = "",
    this.damageMin = 0,
    this.damageMax = 0,
    this.strengthBonus = 0,
    this.agilityBonus = 0,
    this.intelligenceBonus = 0,
    this.classType = "",
    this.rare = "",
  })   {
    this.name = name;
    this.type = "weapon";
    this.cost = cost;
    this.imageURL = "";
  }

  @override
  void use() {
    // TODO: implement use
  }
}

class Armor extends Item{

  int protection = 0;
  int strengthBonus = 0;
  int agilityBonus = 0;
  int intelligenceBonus = 0;

  String classType = "";
  String rare = "";

  Armor({
    String name = "",
    int cost = 0,
    String imageURL = "",
    this.protection = 0,
    this.strengthBonus = 0,
    this.agilityBonus = 0,
    this.intelligenceBonus = 0,
    this.classType = "",
    this.rare = "",
  })   {
    this.name = name;
    this.type = "armor";
    this.cost = cost;
    this.imageURL = "";
  }

  @override
  void use() {

  }
}




