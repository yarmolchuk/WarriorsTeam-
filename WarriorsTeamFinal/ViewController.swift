//
//  ViewController.swift
//  WarriorsTeamFinal
//
//  Created by Andriy Herasymenko on 7/5/16.
//  Copyright © 2016 Andriy Herasymenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var players : [Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stephenCurry : Player = Player(playersName: "Stephen Curry", playersPosition: "Point Guard", playersPhoto: "Curry")
        let leonardoBarbosa : Player = Player(playersName: "Leandro Barbosa", playersPosition: "Point Guard", playersPhoto: "Barbosa")
        let harrisonBarnes : Player = Player(playersName: "Harrison Barnes", playersPosition: "Small Forward", playersPhoto: "Barnes")
        let andrewBogut : Player = Player(playersName: "Andrew Bogut", playersPosition: "Center", playersPhoto: "Bogut")
        let ianClark : Player = Player(playersName: "Ian Clark", playersPosition: "Shootig Guard", playersPhoto: "Clark")
        let festusEzeli : Player = Player(playersName: "Festus Ezeli", playersPosition: "Center", playersPhoto: "Ezeli")
        let draymondGreen : Player = Player(playersName: "Draymond Green", playersPosition: "Power Forward", playersPhoto: "Green")
        let andreIguodala : Player = Player(playersName: "Andre Iguodala", playersPosition: "Small Forward", playersPhoto: "Iguodala")
        let shaunLivingston : Player = Player(playersName: "Shaun Livingston", playersPosition: "Point Guard", playersPhoto: "Livingston")
        let klayThompson : Player = Player(playersName: "Klay Thompson", playersPosition: "Shootig Guard", playersPhoto: "Thompson")
        
        players.append(stephenCurry)
        players.append(leonardoBarbosa)
        players.append(harrisonBarnes)
        players.append(andrewBogut)
        players.append(ianClark)
        players.append(festusEzeli)
        players.append(draymondGreen)
        players.append(andreIguodala)
        players.append(shaunLivingston)
        players.append(klayThompson)
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    let cell : PlayersTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! PlayersTableViewCell
    
        cell.playerPhoto.layer.cornerRadius = 30.0
        cell.playerPhoto.clipsToBounds = true
        cell.configureCell(players[indexPath.row])
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}

