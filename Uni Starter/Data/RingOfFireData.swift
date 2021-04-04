//
//  RingOfFireData.swift
//  Uni Starter
//
//  Created by Julius on 02/04/2021.
//

import SwiftUI

class CardList: ObservableObject {
  var list: [String] = []
  var cardTypes = ["clubs", "spades", "diamonds", "hearts"]
  var cardValues = ["ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king"]
  var rofRule = [
    "you crashed the game, sorta...",
    "Waterfall 🌊",
    "You 😎👉🏻 🍺",
    "Me 🥴",
    "All femals drink 👯‍♀️🥂",
    "Thumbmaster 👍🏿",
    "All males drink 👨🏼‍🦰🍻",
    "Heaven 👆🏽",
    "Mate 💁🏻🤦🏼‍♂️👻",
    "Rhyme 💿",
    "Categories 🗂",
    "Make a rule 👨🏼‍⚖️👩🏼‍⚖️",
    "Question master ❓",
    "You're the King! 👑"
  ]
  var rofRuleDes = [
    "you crashed the game, sorta...",
    "Starting with the player who drew the card, every player continually drinks their drink, and can only stop when the person to their right has stopped drinking.",
    "Choose who you want to take a drink.",
    "You yourself take a drink.",
    "All those who identify as female drink.",
    "The player who drew the card must put their thumb on the table, anytime before the next 5 is drawn, or they lose the right. The last person to put their thumb on the table after the thumbmaster must drink.",
    "All those who identify as male drink.",
    "The player who drew the card must point to the sky, anytime before the next 7 is drawn, or they lose the right. The last person who points to the sky after the heavener must drink.",
    "The player who drew the card picks a drinking mate. Everytime this player drinks, the mate must drink too.",
    "The player who drew the card says a wrod, and you go around the circle rhyming with that word. Whoever messes up drink.",
    "The player who drew the card thinks of a category (e.g. dogs, german cars, types of gin). Whoever messes up drink.",
    "The player who drew the card makes a new rule (e.g. only speak in Cockney, only drink with the non-dominant hand. Anyone who breaks the rules anytime throughout the game must drink.",
    "You become the question master. Anybody who answers a question asked by the question master must drink, until the next Q is drawn.",
    "The player who drew the card must pour some of their drink into the middle cup/bucket. The person to draw the last King has to drink whatever is in the middle cup/bucket."
  ]
}
