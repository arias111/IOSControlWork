//
//  RegViewController.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import UIKit

class RegViewController: UIViewController, FlowController {
	
	var completionHandler: ((Bool) -> ())?	

	private let customView = BaseView(frame: .zero, text: "Enter login", secondText: nil, isTextFieldPresent: false)
	
	override func loadView() {
		self.view = customView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		customView.delegate = self
	}
}

extension RegViewController: BaseViewDelegate {
	func goTo() {
		completionHandler?(true)
	}
}
