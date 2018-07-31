//
//  ThirdViewController.swift
//  SegmentControl_MultipleViews
//
//  Created by ITC Infotech on 31/07/18.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

/**
 This is ThirdViewController in Container view to show on segment control click.
 
 */

class ThirdViewController: UIViewController {

    // MARK: - UI Components.
    @IBOutlet weak var titleLabel : UILabel!
    
    // MARK: - UIViewController life cycle.
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Button Actions
    @IBAction func thirdViewBtnPressed_TouchUpInside(_ sender : UIButton ) {
        titleLabel.text = "Third view controller"
    }
}
