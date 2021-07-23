//
//  QuotesViewController.swift
//  lowkeyLog
//
//  Created by Jessi Czerski on 7/20/21.
//

import UIKit

class QuotesViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    let arrayOfQuotes = ["Make time to take care of yourself.", "Manifest your dream life.", "Life doesn't have to be perfect to be beautiful.", "PROGRESS, not perfection.", "Our destiny is not written for us, it's written by us.", "Start where you are. Use what you have. Do what you can.", "The best revenge is massive success."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressed(_ sender: Any) {
        let randomNumber = Int.random(in: 0...(arrayOfQuotes.count-1))
        label.text = arrayOfQuotes[randomNumber]
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
