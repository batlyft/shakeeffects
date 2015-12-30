//
//  ViewController.swift
//  ShakeEffects
//
//  Created by Bat Computer on 11/5/15.
//  Copyright © 2015 HardSoft. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.MotionShake {
            
            print("Device was shaken")
            
            let fileLocation = NSBundle.mainBundle().pathForResource("rpg", ofType: "mp3")
            
            do { try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!))
                
            } catch {}
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

