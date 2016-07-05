//
//  PlayersTableViewCell.swift
//  WarriorsTeamFinal
//
//  Created by Andriy Herasymenko on 7/5/16.
//  Copyright © 2016 Andriy Herasymenko. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {

    @IBOutlet weak var playerPhoto: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerPosition: UILabel!
    
    func configureCell(player:Player) -> () {
        playerName.text = player.playersName
        playerPosition.text = player.playersPosition
        playerPhoto.image = UIImage(named:player.playersPhoto)
    }

    
}
