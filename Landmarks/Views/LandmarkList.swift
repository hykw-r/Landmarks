//
//  LandmarkList.swift
//  Landmarks
//
//  Created by hayakawa on 2024/10/04.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
