//
//  extrasViewController.swift
//  lowkeyLog
//
//  Created by Arpita Patel on 7/21/21.
//

import UIKit
//comment
class extrasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playlist1(_ sender: Any) {
        let url = URL (string: "https://open.spotify.com/playlist/1irtYDW50ijsg84qgUQVPG?si=1cea2d98bb1e4722")!
        UIApplication.shared.open (url)
    }
    
    @IBAction func playlist2(_ sender: Any) {
        let url = URL (string: "https://open.spotify.com/playlist/2t06SuaZ1V61T8PAcSWrjq?si=17b162d6fd43418d")!
        UIApplication.shared.open (url)
    }
    
    @IBAction func playlist3(_ sender: Any) {
        let url = URL (string: "https://open.spotify.com/playlist/3bF6fm5ZS2OvZNhGCGMr3l?si=64a839847e59418c")!
        UIApplication.shared.open (url)
    }
    
    @IBAction func podcast1(_ sender: Any) {
        let url = URL (string: "https://open.spotify.com/show/3CPoJwrn09eF1bHFgeHZ0v?si=SRSkYi6SSO2B2EV1KAZGsQ&dl_branch=1")!
        UIApplication.shared.open (url)
    }
    
    @IBAction func podcast2(_ sender: Any) {
        let url = URL (string: "https://open.spotify.com/show/6xRUCH4fqGX5Y6mrEVdkva?si=mPr2g7y-Rpqsewso-078jA&dl_branch=1")!
        UIApplication.shared.open (url)
    }
    
    @IBAction func podcast3(_ sender: Any) {
        let url = URL (string: "https://open.spotify.com/show/77CB5cLsII5Q9XDDR4dXhl?si=rDHLE2YVS8GXNTqu4Lzq1g&dl_branch=1")!
        UIApplication.shared.open (url)
    }
    
    @IBAction func video1(_ sender: Any) {
        let url = URL (string: "https://www.youtube.com/watch?v=SEfs5TJZ6Nk")!
        UIApplication.shared.open (url)
    }
    

    @IBAction func video2(_ sender: Any) {
        let url = URL (string: "https://www.youtube.com/watch?v=inpok4MKVLM ")!
        UIApplication.shared.open (url)
    }
    
    
    @IBAction func video3(_ sender: Any) {
        let url = URL (string: "https://youtu.be/Nw2oBIrQGLo ")!
        UIApplication.shared.open (url)
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
