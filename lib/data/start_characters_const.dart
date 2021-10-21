import 'package:lessons/data/allItems_const.dart';
import 'package:lessons/data/character.dart';

class Classes {
static  const String mag = "Маг";
static  const String warrior = "Воин";
static  const String rogue = "Разбойник";
static  const String hunter = "Охотник";
static  const List<String> classesList = [mag, warrior, rogue, hunter];

static final Map<String, CharacterClass> startPersonages = {
  Classes.mag :  CharacterClass(classType: Classes.mag  , strength: 3, agility: 3 , intelligence: 7, armor: noArmor, weapon: noWeapon),
  Classes.warrior : CharacterClass(classType: Classes.warrior  ,
      strength: 6, agility: 3 , intelligence: 3, armor: noArmor, weapon: noWeapon,
      imageURL: "character_warrior.png"
  ),
  Classes.rogue : CharacterClass(classType: Classes.rogue  , strength: 4, agility: 6 , intelligence: 4, armor: noArmor, weapon: noWeapon),
  Classes.hunter : CharacterClass(classType: Classes.hunter  , strength: 3, agility: 7 , intelligence: 3, armor: noArmor, weapon: noWeapon)
};

static final List<CharacterClass> enemyesList = <CharacterClass>[
  CharacterClass(classType: Classes.mag  , strength: 3, agility: 3 , intelligence: 7, armor: noArmor, weapon: noWeapon, name: "Маг новичек", imageURL: "enemy_mage.png"),
  CharacterClass(classType: Classes.warrior  , strength: 6, agility: 3 , intelligence: 3, armor: noArmor, weapon: noWeapon, name: "Воин новичек", imageURL: "enemy_warrior.png"),
  CharacterClass(classType: Classes.rogue  , strength: 4, agility: 6 , intelligence: 4, armor: noArmor, weapon: noWeapon, name: "Разбойник новичек", imageURL: "enemy_rogue.png"),
  CharacterClass(classType: Classes.hunter  , strength: 3, agility: 7 , intelligence: 3, armor: noArmor, weapon: noWeapon, name: "Охотник новичек", imageURL: "enemy_hunter.png"),

];

}








