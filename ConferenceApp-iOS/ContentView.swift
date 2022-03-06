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
                HStack {
                    Image(systemName: "photo") // room.thumnail
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text(room.name)
                        Text("\(room.capacity) people")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
