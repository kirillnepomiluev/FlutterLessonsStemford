

import 'package:lessons/data/allItemsConst.dart';
import 'package:lessons/data/chatacter.dart';

class Classes {
static  const String mag = "Маг";
static  const String warrior = "Воин";
static  const String rogue = "Разбойник";
static  const String hunter = "Охотник";
static  const List<String> classesList = [mag, warrior, rogue, hunter];

static final Map<String, CharacterClass> startPersonages = {
  Classes.mag :  CharacterClass(classType: Classes.mag  , strength: 3, agility: 3 , intelligence: 7, armor: noArmor, weapon: noWeapon),
  Classes.warrior : CharacterClass(classType: Classes.warrior  , strength: 6, agility: 3 , intelligence: 3, armor: noArmor, weapon: noWeapon),
  Classes.rogue : CharacterClass(classType: Classes.rogue  , strength: 4, agility: 6 , intelligence: 4, armor: noArmor, weapon: noWeapon),
  Classes.hunter : CharacterClass(classType: Classes.hunter  , strength: 3, agility: 7 , intelligence: 3, armor: noArmor, weapon: noWeapon)
};
}







