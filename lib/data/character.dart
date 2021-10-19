
 import 'dart:math';

import 'package:lessons/data/start_characters_const.dart';
import 'allItems_const.dart';
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
  String imageURL = "https://img1.picmix.com/output/stamp/thumb/7/1/2/0/690217_bcf80.png";
  int agilityBonus = 0;
  int intelligenceBonus = 0;
  int strengthBonus = 0;

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
    maxHp =strength * 10;
    currentHp = maxHp;
  }

  void  attack(CharacterClass? cell) {
    if (cell !=null) {
      int damage = calculateDamage(cell);
      cell.currentHp = cell.currentHp - damage;
      print("$name нанес $damage урона");
    } else {
      print("цель атаки null");
    }
  }

  int calculateDamage(CharacterClass cell){
       int mainDamage = 0;
       Random random = Random();

        switch (classType) {
          case Classes.hunter :
            mainDamage = ((agility + agilityBonus) * 1.3).floor();
            break;
          case Classes.mag :
            mainDamage = ((intelligence + intelligenceBonus )* 1.2).floor();
            break;
          case Classes.warrior :
            mainDamage = ((strength + strengthBonus) * 1.2).floor();
            break;
          case Classes.rogue :
            mainDamage = ((agility + agilityBonus) * 1.2).floor();
            break;
        }
        int weaponDamage =  ((weapon.damageMax - weapon.damageMin) * (random.nextInt(10) + 1)*0.1).floor() + weapon.damageMin;
        int damageP = mainDamage + weaponDamage;

      return  damageP >  cell.armor.protection ? damageP : 0;
  }

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

 UserCharacter currentGameData = UserCharacter();


 startNewGame (CharacterClass characterClass) {
   currentGameData.qGames++;
   currentGameData.character = characterClass;
   currentGameData.qWins = 0;
   currentGameData.qLosts = 0;
   currentGameData.experience= 0;
 }
  loseBattle () {
    currentGameData.character!.currentHp = currentGameData.character!.maxHp;
    currentGameData.character!.gold =  currentGameData.character!.gold - 10;
    if (currentGameData.character!.gold  <0) {
      currentGameData.character!.gold = 0;
    }
  }
