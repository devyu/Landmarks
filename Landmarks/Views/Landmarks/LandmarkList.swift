//
//  LandmarkList.swift
//  Landmarks
//
//  Created by JY on 2020/12/21.
//

import SwiftUI

struct LandmarkList: View {
    // add an @EnvironmentObject property declaration to the view, and an environmentObject(_:) modifier to the preview.
    @EnvironmentObject var modalData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modalData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
      NavigationView {
        List {
            // To combine static and dynamic views in a list, or to combine two or more different groups of dynamic views, use the ForEach type instead of passing your collection of data to List.
            Toggle(isOn: $showFavoritesOnly, label: {
                Text("Favorites only")
            })
            ForEach(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                  LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      LandmarkList()
        .environmentObject(ModelData())
        .previewDevice("iPhone 12")
        .previewDisplayName("iPhone 12")
    }
}
