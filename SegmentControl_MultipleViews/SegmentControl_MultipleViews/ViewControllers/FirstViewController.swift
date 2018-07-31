//
//  FirstViewController.swift
//  SegmentControl_MultipleViews
//
//  Created by ITC Infotech on 31/07/18.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

/**
 This is FirstViewController to show in ContainerView.
 
 */

class FirstViewController: UIViewController {

    // MARK: - UI Components
    @IBOutlet weak var titleLabel : UILabel!
    
    // MARK: - UIViewController life cycle.
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Button Actions.
    @IBAction func firstViewBtnPressed_TouchUpInside(_ sender : UIButton ) {
        titleLabel.text = "First View Controller"
    }
    
}
