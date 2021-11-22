//
//  StartViewController.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import UIKit

class StartViewController: UIViewController, FlowController {
	
	var completionHandler: ((Bool) -> ())?
	
	private let customView = StartView()
	
	override func loadView() {
		self.view = customView
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		customView.delegate = self
    }
}

extension StartViewController: StartViewDelegate {
	
	func showSingIn() {
		completionHandler?(true)
	}
	
	func showSignUp() {
		completionHandler?(false)
	}
}
