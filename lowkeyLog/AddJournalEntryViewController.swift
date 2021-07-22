//
//  AddJournalEntryViewController.swift
//  lowkeyLog
//
//  Created by Katharine Getz on 7/20/21.
//

import UIKit

class AddJournalEntryViewController: UIViewController {

    // comment to make sure we arent crazy
    @IBOutlet weak var promptText: UILabel!
    @IBOutlet weak var entryTextField: UITextField!
    
    @IBOutlet weak var dateTextField: UITextField!
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(AddJournalEntryViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        
        dateTextField.inputView = datePicker
    }
    
    @objc func dateChanged (datePicker: UIDatePicker) {
        
        let dateFormatter  = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        dateTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    
    @IBAction func emotionButtonPressed(_ sender: UIButton) {
        let num = Int.random(in: 0..<3)
        
        if sender.titleLabel!.text == "amazing" {
            let arr = ["Write a message to yourself on bad days.", "What are five things you appreciate about yourself?", "What people are you most grateful for in your life and why?"]
            
            promptText.text = arr[num]
        }
        
        if sender.titleLabel!.text == "ok" {
            let arr = ["What are three great things that happened today?", "What’s something you wish others knew about you?", "What are five wins you had today?" ]
           
            promptText.text = arr[num]
            
        }
        
        if sender.titleLabel!.text == "tired" {
            let arr = ["What part of your life is most tiring right now?", "How can you give yourself a break right now?", "What is something you achieved today? " ]
           
            promptText.text = arr[num]
            
        }
        
        if sender.titleLabel!.text == "eh idk" {
            let arr = ["What emotions or situations am I holding on to?", "What do I know to be true that I didn’t know a year ago?", "What are three things you are grateful for and why? "]
           
            promptText.text = arr[num]
            
        }
        
        if sender.titleLabel!.text == "stressed" {
            let arr = ["What part of my life is most stressful right now?", "What are five things you can do right now to take care of yourself? ", "What are three things I achieved today?"]
           
            promptText.text = arr[num]
            
        }
        
        if sender.titleLabel!.text == "anxious" {
            let arr = ["What hurts right now? How can I find relief? ", "Write down an entire list of what you are worried about. Star the items that you know are 100% true and not solely a feeling.", "Write a letter to your anxious thoughts." ]
           
            promptText.text = arr[num]
            
        }
        
        if sender.titleLabel!.text == "sad" {
            let arr = ["What hurts right now? How can I find relief?", "Think of someone who hurt you. Write them a letter of forgiveness", "What would you say to a friend in your situation? What word of comfort or encouragement would you give them?" ]
           
            promptText.text = arr[num]
            
        }
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
     
                let journal = JournalCD(entity: JournalCD.entity(),insertInto: context)
               
                if let entryText = entryTextField.text {
                    journal.entry = entryText
                }
           
                if let prompt = promptText.text {
                    journal.prompt = prompt
                }
            
                if let date = dateTextField.text {
                    journal.date = date
                }
            
            }

            try? context.save()

            navigationController?.popViewController(animated: true)
        }
    }
    
    
    
    


}
