//
//  ViewController.swift
//  TTT
//
//  Created by Emily on 1/11/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var winnerlabel: UILabel!
    
//    @IBOutlet weak var button0: UIButton!
//    @IBOutlet weak var button1: UIButton!
//    @IBOutlet weak var button2: UIButton!
//    @IBOutlet weak var button3: UIButton!
//    @IBOutlet weak var button4: UIButton!
//    @IBOutlet weak var button5: UIButton!
//    @IBOutlet weak var button6: UIButton!
//    @IBOutlet weak var button7: UIButton!
//    @IBOutlet weak var button8: UIButton!

    
    var gamestate = [0,0,0,0,0,0,0,0,0,0]
    var buttonEnabled = true
    
    var counter = 0
    @IBAction func btn(_ sender: UIButton) {
        if buttonEnabled == true{
            if counter % 2 != 0 {
                sender.backgroundColor = .blue
//                print("here\(counter)")
                counter += 1
                sender.isEnabled = false
                gamestate[sender.tag] = 1
                print("blue here\(gamestate)")
                
            }else{
                sender.backgroundColor = .red
                counter += 1
                sender.isEnabled = false
                gamestate[sender.tag] = -1

                print("red here\(gamestate)")
            }
        let one = gamestate[0] + gamestate[1] + gamestate[2]
        let two = gamestate[3] + gamestate[4] + gamestate[5]
        let three = gamestate[6] + gamestate[7] + gamestate[8]
        let four = gamestate[0] + gamestate[3] + gamestate[6]
        let five = gamestate[1] + gamestate[4] + gamestate[7]
        let six = gamestate[2] + gamestate[5] + gamestate[8]
        let seven = gamestate[0] + gamestate[4] + gamestate[8]
        let eight = gamestate[2] + gamestate[4] + gamestate[6]

        if (one == 3 || two == 3 || three == 3 || four == 3 || five == 3 || six == 3 || seven == 3 || eight == 3){
            winnerlabel.text = "blue wins"
            buttonEnabled = false
            
        }else if(one == -3 || two == -3 || three == -3 || four == -3 || five == -3 || six == -3 || seven == -3 || eight == -3){
            sender.isEnabled = false
            winnerlabel.text = "red wins"
            buttonEnabled = false
            
        }else if (counter == 9){
            winnerlabel.text = "u guys suck"
            }
}
    }


    @IBAction func reset(_ sender: UIButton) {
        buttonEnabled = true
        counter = 0
        gamestate = [0,0,0,0,0,0,0,0,0,0]
        winnerlabel.text = ""
        loadView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

