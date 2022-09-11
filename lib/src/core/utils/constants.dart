import 'package:flutter/material.dart';

// INTERFACE PALLET.

const kGreen = Color(0xFF60D394);
const kLightGrey = Color(0xFFF8F9FA);

const kReallyGrey = Color(0xFF595F65);

// POKEMON PALLET.
const kBug = Color.fromARGB(255, 198, 209, 110);
const kDark = Color.fromARGB(255, 162, 146, 136);

const kDragon = Color.fromARGB(255, 162, 125, 250);
const kElectric = Color.fromARGB(255, 250, 224, 120);

const kFairy = Color.fromARGB(255, 244, 189, 201);
const kFighting = Color.fromARGB(255, 214, 120, 115);

const kFire = Color.fromARGB(255, 245, 172, 120);
const kFlying = Color.fromARGB(255, 198, 183, 245);

const kGhost = Color.fromARGB(255, 162, 146, 188);
const kGrass = Color.fromARGB(255, 167, 219, 141);

const kGround = Color.fromARGB(255, 235, 214, 157);
const kIce = Color.fromARGB(255, 188, 230, 230);

const kNormal = Color.fromARGB(255, 198, 198, 167);
const kPoison = Color.fromARGB(255, 193, 131, 193);

const kPsychic = Color.fromARGB(255, 250, 146, 178);
const kRock = Color.fromARGB(255, 209, 193, 125);

const kSteel = Color.fromARGB(255, 209, 209, 224);
const kWater = Color.fromARGB(255, 157, 183, 245);

// COLOR ITEM.
Color colorItem(String type) {
  switch (type) {
    case 'bug':
      return kBug;
    case 'dark':
      return kDark;
    case 'dragon':
      return kDragon;
    case 'electric':
      return kElectric;
    case 'fairy':
      return kFairy;
    case 'fighting':
      return kFairy;
    case 'fire':
      return kFairy;
    case 'flying':
      return kFlying;
    case 'ghost':
      return kGhost;
    case 'grass':
      return kGrass;
    case 'ground':
      return kGround;
    case 'ice':
      return kIce;
    case 'normal':
      return kNormal;
    case 'poison':
      return kPoison;
    case 'psychic':
      return kPsychic;
    case 'rock':
      return kRock;
    case 'steel':
      return kSteel;
    case 'water':
      return kWater;

    default:
      return kReallyGrey;
  }
}

// FORMAT ID.
String formatID(int id) {
  if (id < 10) {
    return '#00$id';
  } else if (id < 100) {
    return '#0$id';
  } else {
    return '#$id';
  }
}
