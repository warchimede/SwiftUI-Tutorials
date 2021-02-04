//
//  LandmarkList.swift
//  Landmarks
//
//  Created by William Archimède on 04/02/2021.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView {
      List(landmarks) { landmark in
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
        }
      }
    }
    .navigationTitle("Landmarks")
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    let devices = ["iPhone SE (2nd generation)", "iPhone XS Max", "iPad Pro (12.9-inch) (2nd generation)"]
    ForEach(devices, id: \.self) { device in
      LandmarkList()
        .previewDevice(PreviewDevice.init(rawValue: device))
        .previewDisplayName(device)
    }
  }
}
