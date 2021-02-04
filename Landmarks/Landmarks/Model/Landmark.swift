//
//  Landmark.swift
//  Landmarks
//
//  Created by William Archimède on 03/02/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
  var description: String
  var id: Int
  var name: String
  var park: String
  var state: String

  private var imageName: String
  var image: Image {
    Image(imageName)
  }

  private var coordinates: Coordinates
  var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
  }

  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
}
