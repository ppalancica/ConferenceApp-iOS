//
//  RoomDetail.swift
//  ConferenceApp-iOS
//
//  Created by Pavel Palancica on 3/6/22.
//

import SwiftUI

struct RoomDetail: View {
    let room: Room
    var body: some View {
        Image(room.imageName) // Image(systemName: "photo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationBarTitle(Text(room.name), displayMode: .inline)
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        // RoomDetail(room: testData[0])
        NavigationView { RoomDetail(room: testData[0]) }
    }
}
