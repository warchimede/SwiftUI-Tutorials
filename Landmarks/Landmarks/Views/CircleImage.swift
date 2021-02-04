//
//  CircleImage.swift
//  Landmarks
//
//  Created by William Archimède on 30/01/2021.
//

import SwiftUI

struct CircleImage: View {
  var body: some View {
    Image("turtlerock")
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: 7)

  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage()
  }
}
