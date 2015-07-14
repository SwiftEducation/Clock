/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    let clock = Clock()
    var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTimeLabel", userInfo: nil, repeats: true)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        updateTimeLabel()
    }
    
    // Format the current date and time to show time only and update the label.
    func updateTimeLabel() {
        // NSDateFormatterStyle.MediumStyle
        // Specifies a medium style, typically with abbreviated text,
        // such as “Nov 23, 1937” for Date
        // or “3:30:32 PM” for Time.
        let formatter = NSDateFormatter()
        formatter.timeStyle = .MediumStyle
        timeLabel.text = formatter.stringFromDate(clock.currentTime)
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.All.rawValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        if let timer = self.timer {
            timer.invalidate()
        }
    }

}

