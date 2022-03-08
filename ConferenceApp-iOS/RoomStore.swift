//
//  RoomStore.swift
//  ConferenceApp-iOS
//
//  Created by Pavel Palancica on 3/8/22.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    var rooms: [Room] {
        didSet { didChange.send() }
    }
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    var didChange = PassthroughSubject<Void, Never>()
}
