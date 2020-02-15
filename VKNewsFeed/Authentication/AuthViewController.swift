//
//  AuthViewController.swift
//  VKNewsFeed
//
//  Created by Антон Потапчик on 2/15/20.
//  Copyright © 2020 TonyPo Production. All rights reserved.
//

import UIKit



class AuthViewController: UIViewController {
    
    private var authService: AuthService!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        authService = AppDelegate.shared().authService
    }
    
    @IBAction func signInTouch() {
        authService.wakeUpSession()
    }
}
