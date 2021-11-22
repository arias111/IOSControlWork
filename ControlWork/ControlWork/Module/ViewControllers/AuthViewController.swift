//
//  ViewController.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {
	
	private let customView = BaseView(frame: .zero, text: "Enter name", secondText: "Enter password", isTextFieldPresent: true)
	
	override func loadView() {
		self.view = customView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
	}


}

