//
//  ContentView.swift
//  ConferenceApp-iOS
//
//  Created by Pavel Palancica on 3/6/22.
//

import SwiftUI

struct ContentView: View {
    //var rooms: [Room] = []
    @ObservedObject var store = RoomStore()
    
    var body: some View {
        NavigationView {
//            List(store.rooms) { room in
//                RoomCell(room: room)
//            }
            List {
                Button(action: addRoom) {
                    Text("Add Room")
                }
                ForEach(store.rooms) { room in
                    RoomCell(room: room)
                }
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
    
    // Still issues
    func addRoom() {
        store.rooms.append(Room(name: "Hall 2", capacity: 2000))
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
        //ContentView(rooms: testData)
        ContentView(store: RoomStore(rooms: testData))
    }
}
