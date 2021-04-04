//
//  ContentView.swift
//  Uni Starter
//
//  Created by Julius on 02/04/2021.
//

import SwiftUI

struct RingOfFireView: View {
  
  @State private var getNewVal: Bool = false
  @State private var removeVal: Bool = false
  
  @ObservedObject var cardList = CardList()
  
  init() {
    reset()
  }
  
  func reset() {
    for cardType in cardList.cardTypes {
      for cardValue in cardList.cardValues {
        cardList.list.append(cardValue + "_of_" + cardType)
      }
    }
  }
  
  func randomItem() -> String {
    
    return cardList.list.remove(at: Int.random(in: 0..<cardList.list.count))
  }
  
  func switchROFState(whichState: Int) -> some View {
    
    return VStack {
      Text(cardList.rofRule[whichState])
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(Color("ColorCyanAdaptive"))
        .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      
      Text(cardList.rofRuleDes[whichState])
        .font(.body)
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
      
      Text(String(cardList.list.count) + " cards left")
    }
  }
  
  var body: some View {
    
    VStack(alignment: .center, spacing: 20) {

      VStack(alignment: .center, spacing: 50) {
        if getNewVal {
          
          let newRandomItem = randomItem()
          
          Image(newRandomItem)
            .resizable()
            .scaledToFit()
          
          if newRandomItem.contains("ace")         { switchROFState(whichState: 1)  }
          else if newRandomItem.contains("two")    { switchROFState(whichState: 2)  }
          else if newRandomItem.contains("three")  { switchROFState(whichState: 3)  }
          else if newRandomItem.contains("four")   { switchROFState(whichState: 4)  }
          else if newRandomItem.contains("five")   { switchROFState(whichState: 5)  }
          else if newRandomItem.contains("six")    { switchROFState(whichState: 6)  }
          else if newRandomItem.contains("seven")  { switchROFState(whichState: 7)  }
          else if newRandomItem.contains("eight")  { switchROFState(whichState: 8)  }
          else if newRandomItem.contains("nine")   { switchROFState(whichState: 9)  }
          else if newRandomItem.contains("ten")    { switchROFState(whichState: 10) }
          else if newRandomItem.contains("jack")   { switchROFState(whichState: 11) }
          else if newRandomItem.contains("queen")  { switchROFState(whichState: 12) }
          else if newRandomItem.contains("king")   { switchROFState(whichState: 13) }

        } else {
          Image("back")
            .resizable()
            .scaledToFit()
        }
      }
      .padding(.horizontal, 20)
      
      if cardList.list.count > 0 {
        Button(action: {
          self.getNewVal.toggle()
          self.getNewVal = true
        }, label: {
          HStack {
            Text("get card".uppercased())
              .fontWeight(.heavy)
              .foregroundColor(.white)
              .accentColor(.white)
            
            Image(systemName: "suit.spade.fill")
              .font(Font.title.weight(.medium))
              .accentColor(.white)
          }
          .padding(.vertical, 10)
          .padding(.horizontal, 24)
          .background(LinearGradient(gradient: Gradient(colors: [Color("ColorCyanMedium"), Color("ColorCyanDark")]), startPoint: .leading, endPoint: .trailing))
          .clipShape(Capsule())
          .shadow(color: Color("ColorAppearanceAdaptive"), radius: 6, x: 0, y: 3)
        })
      } else {
        VStack {
          Button(action: {
            reset()
            self.getNewVal.toggle()
            self.getNewVal = false
          }, label: {
            
              HStack {
                Text("Restart Game".uppercased())
                  .fontWeight(.heavy)
                  .foregroundColor(.white)
                  .accentColor(.white)
                
                Image(systemName: "suit.spade.fill")
                  .font(Font.title.weight(.medium))
                  .accentColor(.white)
              }
              .padding(.vertical, 10)
              .padding(.horizontal, 24)
              .background(Color("ColorRedMedium"))
              .clipShape(Capsule())
              .shadow(color: Color("ColorAppearanceAdaptive"), radius: 6, x: 0, y: 3)
          })
          
          Text("Game over! Restart game.")
        }
      }
    }
    
  }
}

struct RingOfFireView_Previews: PreviewProvider {
  static var previews: some View {
    RingOfFireView()
  }
}
