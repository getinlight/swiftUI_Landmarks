//
//  UserData.swift
//  Landmarks
//
//  Created by z on 2019/6/8.
//  Copyright © 2019 z. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject  {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
