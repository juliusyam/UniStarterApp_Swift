//
//  DiceView.swift
//  Uni Starter
//
//  Created by Julius on 02/04/2021.
//

import SwiftUI

struct DiceView: View {
  
  @ObservedObject var motion: MotionManager
  @State private var getNewVal: Bool = false
  
  class RandomGenerator {
    var randomNumber: Int = 0
  }
  
  var randomGenerator = RandomGenerator()
  
  func rollDice() -> Int {
    randomGenerator.randomNumber = Int.random(in: 1...6)
    return randomGenerator.randomNumber
  }
  
  var body: some View {
    VStack {
      VStack {
        Text("X: \(motion.x)")
        Text("Y: \(motion.y)")
        Text("Z: \(motion.z)")
      }
      
      if getNewVal {
        Text(String(rollDice()))
          .fontWeight(.bold)
          .font(.system(size: 300, design: .monospaced))
      } else {
        Text(String(randomGenerator.randomNumber))
          .fontWeight(.bold)
          .font(.system(size: 300, design: .monospaced))
      }
      
      Button(action: {
        self.getNewVal.toggle()
        self.getNewVal = true
      }, label: {
        HStack {
          Text("Get New Value")
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .accentColor(.white)
          Image(systemName: "suit.spade.fill")
            .font(Font.title.weight(.medium))
            .accentColor(.white)
        }
      })
      .padding(.vertical, 10)
      .padding(.horizontal, 24)
      .background(LinearGradient(gradient: Gradient(colors: [Color("ColorCyanMedium"), Color("ColorCyanDark")]), startPoint: .leading, endPoint: .trailing))
      .clipShape(Capsule())
      .shadow(color: Color("ColorAppearanceAdaptive"), radius: 6, x: 0, y: 3)
    }
  }
}

struct DiceView_Previews: PreviewProvider {
  static var previews: some View {
    DiceView(motion: MotionManager())
  }
}
