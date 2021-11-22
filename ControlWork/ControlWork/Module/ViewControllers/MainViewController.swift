//
//  MainViewController.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import UIKit

class MainViewController: UIViewController, FlowController {
	
	var completionHandler: ((Bool) -> ())?

	private let customView = MainView()
	
	override func loadView() {
		self.view = customView
	}

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
