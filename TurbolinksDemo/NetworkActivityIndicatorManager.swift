//
//  NetworkActivityIndicatorManager.swift
//  TurbolinksDemo
//
//  Created by Jim Chen on 4/3/25.
//  Copyright © 2025 Basecamp. All rights reserved.
//

import UIKit

class NetworkActivityIndicatorManager {
    static let shared = NetworkActivityIndicatorManager()
    
    private var activityCount = 0
    private let activityIndicator: UIActivityIndicatorView

    private init() {
        if let window = UIApplication.shared.windows.first {
            activityIndicator = UIActivityIndicatorView(style: .medium)
            activityIndicator.center = window.center
            window.addSubview(activityIndicator)
        } else {
            activityIndicator = UIActivityIndicatorView(style: .medium)
        }
    }

    func show() {
        DispatchQueue.main.async {
            self.activityCount += 1
            self.activityIndicator.startAnimating()
        }
    }

    func hide() {
        DispatchQueue.main.async {
            self.activityCount = max(self.activityCount - 1, 0)
            if self.activityCount == 0 {
                self.activityIndicator.stopAnimating()
            }
        }
    }
}
