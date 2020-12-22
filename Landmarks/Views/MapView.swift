//
//  MapView.swift
//  Landmarks
//
//  Created by JY on 2020/12/21.
//

import SwiftUI
import MapKit

struct MapView: View {
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2DMake(31.158709, -121.373551),
    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
  )
  
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
      MapView()
        .previewDevice("iPhone 12")
    }
}
