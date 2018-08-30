//
//  ViewController.swift
//  RPSLS
//
//  Created by Eric Martínez Paredes & Miguel Angel Sandoval Texcahuac on 11/08/18.
//  Copyright © 2018 Eric Martínez Paredes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var cpuSign: UILabel!
    @IBOutlet weak var textGameState: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsbutton: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    // @IBOutlet weak var stackViewVertical: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(.start)
        
       /* stackViewVertical.translatesAutoresizingMaskIntoConstraints = false
         stackViewVertical.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
         stackViewVertical.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive = true*/
        
    }
    
    func updateCPUSignLabel (_ signCPU: Sign) -> String {
        switch signCPU {
        case .papel: return "🖐"
        case .piedra: return "👊"
        case .tijera: return "✌️"
        }
    }
    
    func updateUI(_ gameState: GameState) {
        switch gameState{
        case .start: view.backgroundColor = UIColor.init(red: 0.512, green: 0.363, blue: 0.201, alpha: 1)
        case .win: view.backgroundColor = UIColor.init(displayP3Red: 0.188, green: 0.709, blue: 0.096, alpha: 1)
        case .lose: view.backgroundColor = UIColor.init(red: 0.574, green: 0.129, blue: 0.140, alpha: 1)
        case .draw: view.backgroundColor = UIColor.init(displayP3Red: 0.476, green: 0.476, blue: 0.476, alpha: 1)
        }
            textGameState.text = gameState.state
            cpuSign.text = "🤖"
            playAgain.isHidden = true
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsbutton.isHidden = false
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsbutton.isEnabled = true
    }
    
    func play(playerSign: Sign){
        let appSign = randomSign()
        updateUI(playerSign.win(appSign))
        cpuSign.text = updateCPUSignLabel(appSign)
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsbutton.isHidden = true
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsbutton.isEnabled = false
        playAgain.isHidden = false
       
    }
    
    @IBAction func tapRock(_ sender: Any) {
        play(playerSign: .piedra)
        rockButton.isHidden = false
    }
    
    @IBAction func tapPaper(_ sender: Any) {
        play(playerSign: .papel)
        paperButton.isHidden = false
    }
    
    @IBAction func tapScissors(_ sender: Any) {
        play(playerSign: .tijera)
        scissorsbutton.isHidden = false

    }
    
    @IBAction func playAgain(_ sender: Any) {
        updateUI(.start)

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

