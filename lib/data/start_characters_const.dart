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
      imageURL: "https://www.asmodee.it/_upl/userfiles/image/aprile2014/mw_arcanista.png"
  ),
  Classes.rogue : CharacterClass(classType: Classes.rogue  , strength: 4, agility: 6 , intelligence: 4, armor: noArmor, weapon: noWeapon),
  Classes.hunter : CharacterClass(classType: Classes.hunter  , strength: 3, agility: 7 , intelligence: 3, armor: noArmor, weapon: noWeapon)
};

static final List<CharacterClass> enemyesList = <CharacterClass>[
  CharacterClass(classType: Classes.mag  , strength: 3, agility: 3 , intelligence: 7, armor: noArmor, weapon: noWeapon, name: "Маг новичек", imageURL: "https://holiviantales.files.wordpress.com/2016/02/shadowdancer1.png"),
  CharacterClass(classType: Classes.warrior  , strength: 6, agility: 3 , intelligence: 3, armor: noArmor, weapon: noWeapon, name: "Воин новичек", imageURL: "https://purepng.com/public/uploads/thumbnail/purepng.com-medival-knightmedival-knightmiddle-agesnoble-birthapprenticeshiphonorablemilitary-ran-1421526906032ogvlz.png"),
  CharacterClass(classType: Classes.rogue  , strength: 4, agility: 6 , intelligence: 4, armor: noArmor, weapon: noWeapon, name: "Разбойник новичек", imageURL: "https://purepng.com/public/uploads/thumbnail/purepng.com-goblingoblincreatureeuropean-folkloredemonghost-1701527776260nii8a.png"),
  CharacterClass(classType: Classes.hunter  , strength: 3, agility: 7 , intelligence: 3, armor: noArmor, weapon: noWeapon, name: "Охотник новичек", imageURL: "https://s0.uploads.ru/KhsD4.png"),

];

}








