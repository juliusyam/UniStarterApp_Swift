//
//  AppView.swift
//  Uni Starter
//
//  Created by Julius on 02/04/2021.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      NearbyLocationView().tabItem {
        Image(systemName: "location.circle")
          .resizable()
          .modifier(IconModifier())
        Text("Nearby")
      }
      RingOfFireView().tabItem {
        Image(systemName: "suit.club")
          .resizable()
          .modifier(IconModifier())
        Text("Ring of Fire")
      }
      DiceView(motion: MotionManager()).tabItem {
        Image(systemName: "die.face.3")
          .resizable()
          .modifier(IconModifier())
        Text("Dice")
      }
      NeverHaveIEverView().tabItem {
        Image(systemName: "cylinder.split.1x2")
          .resizable()
          .modifier(IconModifier())
        Text("Never Have I Ever")
      }
    }
    .edgesIgnoringSafeArea(.top)
    .accentColor(.primary)
  }
}

struct IconModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(width: 42, height: 42, alignment: .center)
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
