
 import 'package:lessons/data/startCharactersConst.dart';
import 'allItemsConst.dart';
import 'equipment.dart';

class CharacterClass{
  int strength = 0;
  int agility = 0;
  int intelligence = 0;
  int currentHp = 1;
  String name = "";
  int level = 1;
  int gold = 0;
  int maxHp = 1;
  Armor armor;

  Weapon weapon;
  String classType = "";
  String imageURL = "";
  CharacterClass({required this.classType,
    this.level = 1,
    this.gold = 50,
    required this.armor,
    required this.weapon,
    required this.strength,
    required this.agility,
    required  this.intelligence,
    this.name ="",
    this.imageURL = ""})   {
    this.maxHp = this.strength * 10;
    this.currentHp = maxHp;
  }

  void calculateDamage(){}
  void use(Item equipment ) {
    equipment.use();
    if (equipment is Weapon) {
      this.weapon  = equipment as Weapon;
    }
    if (equipment is Armor) {
      this.armor  = equipment as Armor;
    }
  }
}

// class Warrior extends CharacterClass{
//   String name = "";
//   int level = 1;
//   int gold = 0;
//   String armorType = "";
//   var armor;
//   String weaponType = "";
//   var weapon;
//   Warrior(this.name , this.level , this.gold, this.armorType, this.weaponType);
//   void calculateParameters(){}
// }
//
// class Hunter extends CharacterClass{
//   String name = "";
//   int level = 1;
//   int gold = 0;
//   String armorType = "";
//   var armor;
//   String weaponType = "";
//   var weapon;
//   Hunter(this.name, this.level, this.gold, this.armorType, this.weaponType);
//   void calculateParameters(){}
// }
//
// class Rogue extends CharacterClass{
//   String name = "";
//   int level = 1;
//   int gold = 0;
//   String armorType = "";
//   var armor;
//   String weaponType = "";
//   var weapon;
//   Rogue(this.name, this.level, this.gold, this.armorType, this.weaponType);
//   void calculateParameters(){}
// }
//
// class Magician extends CharacterClass{
//   String name = "";
//   int level = 1;
//   int gold = 0;
//   String armorType = "";
//   var armor;
//   String weaponType = "";
//   var weapon;
//   Magician(this.name, this.level, this.gold, this.armorType, this.weaponType);
//   void calculateParameters(){}
// }

class UserCharacter{
  CharacterClass? character = Classes.startPersonages[Classes.warrior];
  int experience = 0;
  DateTime startGameTime = DateTime.now();
  int qGames = 0;
  int qWins = 0;
  int qLosts = 0;


}

 UserCharacter currentGameData = UserCharacter() ;


 startNewGame (CharacterClass characterClass) {
   currentGameData.qGames++;
   currentGameData.character = characterClass;
   currentGameData.qWins = 0;
   currentGameData.qLosts = 0;
   currentGameData.experience= 0;

 }

