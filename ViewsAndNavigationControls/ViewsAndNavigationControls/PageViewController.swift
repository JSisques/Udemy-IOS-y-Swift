//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Javier Plaza Sisqués on 13/9/21.
//

import UIKit

class PageViewController: UIPageViewController {
    
    private var myControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Page View Controller"

        let myGreenVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGreen")
        let myRedVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcRed")
        
        myControllers.append(myGreenVc)
        myControllers.append(myRedVc)
        
        setViewControllers([myGreenVc], direction: .forward, animated: true, completion: nil)
    
        dataSource = self
    }
}

extension PageViewController: UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0{
            return myControllers.last
        } else{
            return myControllers.first
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0{
            return myControllers.last
        } else{
            return myControllers.first
        }
    }
    
    
}
