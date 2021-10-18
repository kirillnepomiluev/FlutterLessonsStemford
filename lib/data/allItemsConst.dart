
import 'package:lessons/data/equipment.dart';

final  noWeapon = Weapon(
    name: "Рукопашка",
    damageMin: 0,
    damageMax: 2,
    cost: 0,
    strengthBonus: 1,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  steelSword = Weapon(
    name: "Стальной меч",
    classType: "Воин",
    rare: "Обычный",
    damageMin: 5,
    damageMax: 10,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  legionnareSword = Weapon(
    name: "Меч Легионера",
    classType: "Воин",
    rare: "Необычный",
    damageMin: 9,
    damageMax: 18,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  demonHunterSword = Weapon(
    name: "Меч охотника на демонов",
    classType: "Воин",
    rare: "Редкий",
    damageMin: 17,
    damageMax: 29,
    cost: 400,
    strengthBonus: 15,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  bladeFury = Weapon(
    name: "Клинок ярости",
    classType: "Воин",
    rare: "Эпический",
    damageMin: 30,
    damageMax: 45,
    cost: 800,
    strengthBonus: 41,
    agilityBonus: 38,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  dragonDeath = Weapon(
    name: "Погибель дракона",
    classType: "Воин",
    rare: "Легендарный",
    damageMin: 46,
    damageMax: 64,
    cost: 1600,
    strengthBonus: 52,
    agilityBonus: 38,
    intelligenceBonus: 44,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  woodenBow = Weapon(
    name: "Деревянный лук",
    classType: "Охотник",
    rare: "Обычный",
    damageMin: 4,
    damageMax: 11,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  qualitativeBow = Weapon(
    name: "Качественный лук",
    classType: "Охотник",
    rare: "Необычный",
    damageMin: 10,
    damageMax: 19,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  ancientBow = Weapon(
    name: "Древный лук",
    classType: "Охотник",
    rare: "Редкий",
    damageMin: 18,
    damageMax: 27,
    cost: 400,
    agilityBonus: 17,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  disasterBow = Weapon(
    name: "Лук катастрофы",
    classType: "Охотник",
    rare: "Эпический",
    damageMin: 33,
    damageMax: 44,
    cost: 800,
    strengthBonus: 37,
    agilityBonus: 44,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  DeathWisper = Weapon(
    name: "Шепот смерти",
    classType: "Охотник",
    rare: "Легендарный",
    damageMin: 50,
    damageMax: 61,
    cost: 1600,
    strengthBonus: 39,
    agilityBonus: 65,
    intelligenceBonus: 40,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  doubleDaggers = Weapon(
    name: "Двойные клинки",
    classType: "Разбойник",
    rare: "Обычный",
    damageMin: 5,
    damageMax: 11,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  hunterKnifes = Weapon(
    name: "Охотничии ножи",
    classType: "Разбойник",
    rare: "Необычный",
    damageMin: 11,
    damageMax: 18,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  plagueEaters = Weapon(
    name: "Чумные пожиратели",
    classType: "Разбойник",
    rare: "Редкий",
    damageMin: 20,
    damageMax: 29,
    cost: 400,
    agilityBonus: 16,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  soaringStilletors = Weapon(
    name: "Парящие стилеты",
    classType: "Разбойник",
    rare: "Эпический",
    damageMin: 34,
    damageMax: 43,
    cost: 800,
    strengthBonus: 34,
    agilityBonus: 47,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  shadowRazors = Weapon(
    name: "Темные бритвы",
    classType: "Разбойник",
    rare: "Легендарный",
    damageMin: 53,
    damageMax: 64,
    cost: 1600,
    strengthBonus: 36,
    agilityBonus: 67,
    intelligenceBonus: 37,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  bambooStick = Weapon(
    name: "Бамбуковая палочка",
    classType: "Маг",
    rare: "Обычный",
    damageMin: 4,
    damageMax: 9,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  magisterStuff = Weapon(
    name: "Посох Магистра",
    classType: "Маг",
    rare: "Необычный",
    damageMin: 13,
    damageMax: 17,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  kingsStuff = Weapon(
    name: "Посох королей",
    classType: "Маг",
    rare: "Редкий",
    damageMin: 22,
    damageMax: 31,
    cost: 400,
    intelligenceBonus: 18,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  iceScepter = Weapon(
    name: "Ледяной скипетр",
    classType: "Маг",
    rare: "Эпический",
    damageMin: 35,
    damageMax: 44,
    cost: 800,
    intelligenceBonus: 37,
    agilityBonus: 16,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  fireLordStuff = Weapon(
    name: "Посох Огненого Повелителя",
    classType: "Маг",
    rare: "Легендарный",
    damageMin: 55,
    damageMax: 66,
    cost: 1600,
    strengthBonus: 31,
    agilityBonus: 29,
    intelligenceBonus: 70,
    imageURL: "assets/images/"   //TODO положить картинку
);



final noArmor = Armor(
    name: "Рубаха",
    protection: 0,
    cost: 1,
    agilityBonus: 2,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  steelCuirass = Armor(
    name: "Стальная кираса",
    classType: "Воин",
    rare: "Обычный",
    protection: 17,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  armorOfLegionnare = Armor(
    name: "Броня Легионера",
    classType: "Воин",
    rare: "Необычный",
    protection: 27,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  armorOfDemonHunter = Armor(
    name: "Броня охотника на демонов",
    classType: "Воин",
    rare: "Редкий",
    protection: 38,
    cost: 400,
    strengthBonus: 14,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  CuirassOfFury = Armor(
    name: "Кираса ярости",
    classType: "Воин",
    rare: "Эпический",
    protection: 50,
    cost: 800,
    strengthBonus: 38,
    agilityBonus: 34,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  dragonArmor = Armor(
    name: "Доспехи Драконоборца",
    classType: "Воин",
    rare: "Легендарный",
    protection: 62,
    cost: 1600,
    strengthBonus: 49,
    agilityBonus: 35,
    intelligenceBonus: 32,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  chainMail = Armor(
    name: "Кольчуга",
    classType: "Охотник",
    rare: "Обычный",
    protection: 15,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  eliteArmor = Armor(
    name: "Элитный доспех",
    classType: "Охотник",
    rare: "Необычный",
    protection: 25,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  ancientCuirass = Armor(
    name: "Древняя Кираса",
    classType: "Охотник",
    rare: "Редкий",
    protection: 36,
    cost: 400,
    agilityBonus: 16,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  apocalypceArmor = Armor(
    name: "Доспехи Апокалипсиса",
    classType: "Охотник",
    rare: "Эпический",
    protection: 44,
    cost: 800,
    strengthBonus: 33,
    agilityBonus: 40,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  flyingCuirass = Armor(
    name: "Парящая кираса",
    classType: "Охотник",
    rare: "Легендарный",
   protection: 49,
    cost: 1600,
    strengthBonus: 37,
    agilityBonus: 60,
    intelligenceBonus: 35,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  leatherArmor = Armor(
    name: "Кожаный доспех",
    classType: "Разбойник",
    rare: "Обычный",
    protection: 10,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  forestArmor = Armor(
    name: "Лесной доспех",
    classType: "Разбойник",
    rare: "Необычный",
    protection: 20,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  parasiteArmor = Armor(
    name: "Доспех Паразита",
    classType: "Разбойник",
    rare: "Редкий",
   protection: 27,
    cost: 400,
    agilityBonus: 20,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  invisibleArmor = Armor(
    name: "Невидимая броня",
    classType: "Разбойник",
    rare: "Эпический",
   protection: 36,
    cost: 800,
    strengthBonus: 34,
    agilityBonus: 47,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  shadowArmor = Armor(
    name: "Теневая броня",
    classType: "Разбойник",
    rare: "Легендарный",
    protection: 44,
    cost: 1600,
    strengthBonus: 36,
    agilityBonus: 67,
    intelligenceBonus: 37,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  robe = Armor(
    name: "Роба",
    classType: "Маг",
    rare: "Обычный",
    protection: 8,
    cost: 100,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  magisterAttire = Armor(
    name: "Одеяние Магистра",
    classType: "Маг",
    rare: "Необычный",
    protection: 16,
    cost: 200,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  kingAttire = Armor(
    name: "Одеяние королей",
    classType: "Маг",
    rare: "Редкий",
    protection: 25,
    cost: 400,
    intelligenceBonus: 18,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  iceArmor = Armor(
    name: "Ледяное одеяние",
    classType: "Маг",
    rare: "Эпический",
    protection: 30,
    cost: 800,
    intelligenceBonus: 37,
    agilityBonus: 16,
    imageURL: "assets/images/"   //TODO положить картинку
);

final  armorOfFireLord = Armor(
    name: "Доспех Огненого Повелителя",
    classType: "Маг",
    rare: "Легендарный",
   protection: 36,
    cost: 1600,
    strengthBonus: 31,
    agilityBonus: 29,
    intelligenceBonus: 70,
    imageURL: "assets/images/"   //TODO положить картинку
);
