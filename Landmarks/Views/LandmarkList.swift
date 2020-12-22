//
//  LandmarkList.swift
//  Landmarks
//
//  Created by JY on 2020/12/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        Text("Hello, World!")
      List {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      LandmarkList()
        .previewDevice("iPhone 12")
    }
}
