//
//  ContentView.swift
//  ConferenceApp-iOS
//
//  Created by Pavel Palancica on 3/6/22.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    
    var body: some View {
        NavigationView {
            List(rooms) { room in
                RoomCell(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct RoomCell: View {
    let room: Room
    var body: some View {
        return NavigationLink(destination: RoomDetail(room: room)) {
            Image(room.imageName) // Image(systemName: "photo")
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }                    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
