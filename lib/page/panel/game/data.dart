import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';

enum Level { Hard, Medium, Easy }

List<String> fillSourceArray() {
  return [
    'assets/animalspics/star.png',
    'assets/animalspics/star.png',
    'assets/animalspics/scissor.png',
    'assets/animalspics/scissor.png',
    'assets/animalspics/textbook.png',
    'assets/animalspics/textbook.png',
    'assets/animalspics/sharpener.png',
    'assets/animalspics/sharpener.png',
    'assets/animalspics/rubber.png',
    'assets/animalspics/rubber.png',
    'assets/animalspics/Pencill.png',
    'assets/animalspics/Pencill.png',
    'assets/animalspics/Pen.png',
    'assets/animalspics/Pen.png',
    'assets/animalspics/book.png',
    'assets/animalspics/book.png',
    'assets/animalspics/sharpener.png',
    'assets/animalspics/sharpener.png',
  ];
}

List getSourceArray(
  Level level,
) {
  List<String> levelAndKindList = new List<String>();
  List sourceArray = fillSourceArray();
  if (level == Level.Hard) {
    sourceArray.forEach((element) {
      levelAndKindList.add(element);
    });
  } else if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      levelAndKindList.add(sourceArray[i]);
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 6; i++) {
      levelAndKindList.add(sourceArray[i]);
    }
  }

  levelAndKindList.shuffle();
  return levelAndKindList;
}

List<bool> getInitialItemState(Level level) {
  List<bool> initialItemState = new List<bool>();
  if (level == Level.Hard) {
    for (int i = 0; i < 18; i++) {
      initialItemState.add(true);
    }
  } else if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      initialItemState.add(true);
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 6; i++) {
      initialItemState.add(true);
    }
  }
  return initialItemState;
}

List<GlobalKey<FlipCardState>> getCardStateKeys(Level level) {
  List<GlobalKey<FlipCardState>> cardStateKeys =
      new List<GlobalKey<FlipCardState>>();
  if (level == Level.Hard) {
    for (int i = 0; i < 18; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 6; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }
  return cardStateKeys;
}
