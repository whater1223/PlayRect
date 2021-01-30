//
//  diceViewController.swift
//  PlayRect
//
//  Created by 傅培禎 on 2021/1/27.
//

import UIKit

class diceViewController: UIViewController {
var a = 0
    @IBOutlet var dice1: [UIImageView]!
    
    @IBOutlet weak var score: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func button(_ sender: UIButton) {
        var bbc = 0
        for dice in dice1 {
            let number = Int.random(in: 1...6)
            dice.image=UIImage(systemName: "die.face.\(number)")
            bbc += number
            print(number)
            
        }
        print(bbc)
        score.text = "\(bbc)"
//        if sender.tag == 0{
//            print(a+1)
//            a+=1
//        }
    }
    
}
