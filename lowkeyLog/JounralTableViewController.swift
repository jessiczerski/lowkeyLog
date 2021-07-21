//
//  JounralTableViewController.swift
//  lowkeyLog
//
//  Created by Katharine Getz on 7/20/21.
//

import UIKit

class JounralTableViewController: UITableViewController {

    var journals : [Journal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journals.count
    }
    
    func createJournalEntry () -> [Journal] {
        let trial = Journal()
        trial.month = 7
        trial.day = 20
        trial.year = 2021
        
        trial.date = "\(trial.month)/\(trial.day)/\(trial.year)"
        
        trial.prompt = "tell me how you are feeling today"
        trial.entry = "I am feeling good."
        
        return [trial]
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // let journal = journals[indexPath.row]
        
        // potentially have different emojis assigned to different emotions?

        return cell
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
