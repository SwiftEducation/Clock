/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    let clock = Clock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
            selector: #selector(ViewController.updateTimeLabel),
            name: NSNotification.Name.UIApplicationWillEnterForeground,
            object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTimeLabel()
    }
    
    func updateTimeLabel() {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        timeLabel.text = formatter.string(from: clock.currentTime as Date)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}

