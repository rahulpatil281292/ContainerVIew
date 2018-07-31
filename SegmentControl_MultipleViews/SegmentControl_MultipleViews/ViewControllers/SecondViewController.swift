//
//  SecondViewController.swift
//  SegmentControl_MultipleViews
//
//  Created by ITC Infotech on 31/07/18.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

/**
 This is SecondViewController which is show in container view.
 
 */

class SecondViewController: UIViewController {

    // MARK: - UI Components.
    @IBOutlet weak var titleLabel : UILabel!
    
    // MARK: - UIViewController life cycle.
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View  appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View will disappear")
    }
    
    
    // MARK: - Button Actions
    @IBAction func secondViewBtnPressed_TouchUpInside(_ sender : UIButton ) {
        titleLabel.text = "Second view controller"
    }
}
