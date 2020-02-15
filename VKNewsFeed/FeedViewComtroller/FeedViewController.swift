//
//  FeedViewController.swift
//  VKNewsFeed
//
//  Created by Антон Потапчик on 2/15/20.
//  Copyright © 2020 TonyPo Production. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    let networkService = NetworkService()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        networkService.getFeed()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
