//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by William Archimède on 09/02/2021.
//

import SwiftUI

struct FavoriteButton: View {
  @Binding var isSet: Bool

  var body: some View {
    Button(action: {
      isSet.toggle()
    }) {
      let name = isSet ? "star.fill" : "star"
      let color: Color = isSet ? .yellow : .gray

      Image(systemName: name)
        .foregroundColor(color)
    }
  }
}

struct FavoriteButton_Previews: PreviewProvider {
  static var previews: some View {
    FavoriteButton(isSet: .constant(true))
  }
}
