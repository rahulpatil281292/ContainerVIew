//
//  SummaryViewController.swift
//  ViewControllerContainment
//
//  Created by ITC Infotech on 09/07/17.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

final class SummaryViewController: UIViewController {

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("Summary View Controller Will Appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("Summary View Controller Will Disappear")
    }

    @IBAction func btn(_ sender: Any) {
        
        print("Btn ")
    }
}
