//
//  RegistrationCoordinator.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import Foundation
import UIKit

class RegistrationCoordinator: Coordinator {
	
	var navigationController: UINavigationController
	var flowCompletionHandler: CoordinatorHandler?
	
	private let moduleFactory = ModuleFactory()
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		showRegModule()
	}
	
	private func showEnterPassModule() {
		
		let controller = moduleFactory.createRegEnterPasswordModule()
		controller.completionHandler = { [weak self] value in

		}
		navigationController.pushViewController(controller, animated: true)
	}
	
	private func showRegModule() {
		
		let regCoordinator = CoordinatorFactory().createRegCoordinator(navigationController: navigationController)
	
		regCoordinator.flowCompletionHandler = { [weak self] in
			let controller = self?.moduleFactory.createRegModule()
			self?.navigationController.pushViewController(controller ?? UIViewController(), animated: true)
		}
		
		regCoordinator.start()
	}
}
