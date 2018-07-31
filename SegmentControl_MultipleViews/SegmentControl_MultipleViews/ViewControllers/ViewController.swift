//
//  ViewController.swift
//  SegmentControl_MultipleViews
//
//  Created by ITC Infotech on 31/07/18.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customContainerView: UIView!
    
    lazy var viewControllerArray : [UIViewController] = {
        var arrray = [UIViewController]()
        arrray.append(FirstViewController())
        arrray.append(SecondViewController())
        arrray.append(ThirdViewController())
        arrray.append(ForthViewController())
        return arrray
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customContainerView.addSubview(viewControllerArray[0].view)
        viewControllerArray[0].didMove(toParentViewController: self)
    }
    
    
    @IBAction func hangeViewOnSegmentBtnPressed_ValueChanged(_ sender: UISegmentedControl) {
//        UIView.animate(withDuration: 0.5) {
//            self.customContainerView.addSubview(self.viewControllerArray[sender.selectedSegmentIndex].view)
//            self.viewControllerArray[sender.selectedSegmentIndex].didMove(toParentViewController: self)
//        }
        switch sender.selectedSegmentIndex {
        case 0:
            add(asChildViewController: viewControllerArray[0])
            remove(asChildViewController: viewControllerArray[1])
            remove(asChildViewController: viewControllerArray[2])
            remove(asChildViewController: viewControllerArray[3])
        case 1:
            add(asChildViewController: viewControllerArray[1])
            remove(asChildViewController: viewControllerArray[0])
            remove(asChildViewController: viewControllerArray[2])
            remove(asChildViewController: viewControllerArray[3])
        case 2:
            add(asChildViewController: viewControllerArray[2])
            remove(asChildViewController: viewControllerArray[0])
            remove(asChildViewController: viewControllerArray[1])
            remove(asChildViewController: viewControllerArray[3])
        case 3:
            add(asChildViewController: viewControllerArray[3])
            remove(asChildViewController: viewControllerArray[0])
            remove(asChildViewController: viewControllerArray[1])
            remove(asChildViewController: viewControllerArray[2])
        default:
            print("ERROR")
        }
    }
    
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChildViewController(viewController)
        
        // Add Child View as Subview
        customContainerView.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }
}

