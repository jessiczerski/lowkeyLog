//
//  ViewController.swift
//  lowkeyLog
//
//  Created by Jessi Czerski on 7/20/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var quote: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AffirmationButton(_ sender: Any) {
    
        
      let affirmation = ["I am worthy of good things" , "I am grateful for another day to make a postive contribution","I am enough." , "I am capable", "Opportunites are all around me" , "I am kind" , "I unconditionally love and accept myself" , "I am beautiful inside and out" , "I will look after myself" , "I am needed."]
        
        let alertController = UIAlertController(title: "REMEMBER", message: affirmation.randomElement(), preferredStyle: UIAlertController.Style.alert)
    
        
        alertController.addAction(UIAlertAction(title: "Cool", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
  
    }
    
    @IBOutlet weak var affirmation: UIImageView!
    
    

}

