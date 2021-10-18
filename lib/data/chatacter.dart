
 class CharacterClass{
  int strength = 0;
  int agility = 0;
  int intelligence = 0;
  int protection = 0;
  String name = "";
  int level = 1;
  int gold = 0;
  String armorType = "";
  var armor;
  String weaponType = "";
  var weapon;
  CharacterClass(this.name, this.level, this.gold, this.armorType, this.armor, this.weaponType, this.weapon, this.strength, this.agility, this.intelligence, this.protection);
  void calculateDamage(){}
}

class Warrior extends CharacterClass{
  String name = "";
  int level = 1;
  int gold = 0;
  String armorType = "";
  var armor;
  String weaponType = "";
  var weapon;
  Warrior(this.name, this.level, this.gold, this.armorType, this.weaponType);
  void calculateParameters(){}
}

class Hunter extends CharacterClass{
  String name = "";
  int level = 1;
  int gold = 0;
  String armorType = "";
  var armor;
  String weaponType = "";
  var weapon;
  Hunter(this.name, this.level, this.gold, this.armorType, this.weaponType);
  void calculateParameters(){}
}

class Rogue extends CharacterClass{
  String name = "";
  int level = 1;
  int gold = 0;
  String armorType = "";
  var armor;
  String weaponType = "";
  var weapon;
  Rogue(this.name, this.level, this.gold, this.armorType, this.weaponType);
  void calculateParameters(){}
}

class Magician extends CharacterClass{
  String name = "";
  int level = 1;
  int gold = 0;
  String armorType = "";
  var armor;
  String weaponType = "";
  var weapon;
  Magician(this.name, this.level, this.gold, this.armorType, this.weaponType);
  void calculateParameters(){}
}

class UserCharacter{
  var character;
  DateTime startGameTime;
  int qGames = 0;
  int qWins = 0;
  int qLosts = 0;
}