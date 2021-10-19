

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
      imageURL: "https://img1.picmix.com/output/stamp/thumb/7/1/2/0/690217_bcf80.png"),
  Classes.rogue : CharacterClass(classType: Classes.rogue  , strength: 4, agility: 6 , intelligence: 4, armor: noArmor, weapon: noWeapon),
  Classes.hunter : CharacterClass(classType: Classes.hunter  , strength: 3, agility: 7 , intelligence: 3, armor: noArmor, weapon: noWeapon)
};

static final List<CharacterClass> enemyesList = <CharacterClass>[
  CharacterClass(classType: Classes.mag  , strength: 3, agility: 3 , intelligence: 7, armor: noArmor, weapon: noWeapon, name: "Маг новичек", imageURL: "https://img1.picmix.com/output/stamp/normal/9/1/2/0/690219_3fc82.png"),
  CharacterClass(classType: Classes.warrior  , strength: 6, agility: 3 , intelligence: 3, armor: noArmor, weapon: noWeapon, name: "Воин новичек", imageURL: "https://img1.picmix.com/output/stamp/normal/9/1/2/0/690219_3fc82.png"),
  CharacterClass(classType: Classes.rogue  , strength: 4, agility: 6 , intelligence: 4, armor: noArmor, weapon: noWeapon, name: "Разбойник новичек", imageURL: "https://img1.picmix.com/output/stamp/normal/9/1/2/0/690219_3fc82.png"),
  CharacterClass(classType: Classes.hunter  , strength: 3, agility: 7 , intelligence: 3, armor: noArmor, weapon: noWeapon, name: "Охотник новичек", imageURL: "https://img1.picmix.com/output/stamp/normal/9/1/2/0/690219_3fc82.png"),

];

}








