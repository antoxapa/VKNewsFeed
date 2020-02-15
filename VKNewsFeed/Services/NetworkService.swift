//
//  NetworkService.swift
//  VKNewsFeed
//
//  Created by Антон Потапчик on 2/15/20.
//  Copyright © 2020 TonyPo Production. All rights reserved.
//

import Foundation

final class NetworkService {
    
    private let authService: AuthService
    
    init(authService: AuthService = AppDelegate.shared().authService) {
        self.authService = authService
    }
    
    
    func getFeed() {
//    Get url from components
        var components = URLComponents()
        guard let token = authService.token else { return  }
        
        let params = ["filter": "post,photo"]
        var allParams = params
        allParams["access_token"] = token
        allParams["v"] = API.version
        
        components.scheme = API.scheme
        components.host = API.host
        components.path = API.newsFeed
        components.queryItems = allParams.map { URLQueryItem(name: $0, value: $1) }
        
        let url = components.url!
        print(url)
    }
}
