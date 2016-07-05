//
//  PlayerViewController.swift
//  WarriorsTeamFinal
//
//  Created by Andriy Herasymenko on 7/5/16.
//  Copyright © 2016 Andriy Herasymenko. All rights reserved.
//

import UIKit

class Player {

    var playersName: String = ""
    var playersPhoto: String = ""
    var playersPosition: String = ""

    init (playersName: String, playersPosition: String, playersPhoto: String) {
        self.playersName = playersName
        self.playersPosition = playersPosition
        self.playersPhoto = playersPhoto
    }
}