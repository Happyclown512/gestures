//
//  ViewController.swift
//  gestures
//
//  Created by Caden on 9/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.backgroundColor = .red
        myView.center = view.center
        view.addSubview(myView)
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gestureFired(_:)))
        gestureRecognizer.numberOfTapsRequired = 2
        gestureRecognizer.numberOfTouchesRequired = 1
        
        myView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func gestureFired(_ gesture: UITapGestureRecognizer){
        print("gesture recognizer")
    }
    


}

