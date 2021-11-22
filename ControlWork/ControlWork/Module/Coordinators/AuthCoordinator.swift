//
//  StartCoordinator.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
	
	var navigationController: UINavigationController
	var flowCompletionHandler: CoordinatorHandler?
	
	private let moduleFactory = ModuleFactory()
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		showStartModule()
	}
	
	private func showStartModule() {
		
		let controller = StartViewController()
		
		navigationController.pushViewController(controller, animated: true)
	}
	
	
	private func showAuthModule() {
		
		let controller = moduleFactory.createAuthModule()
		
		navigationController.pushViewController(controller, animated: true)
	}
	
	private func showRegModule() {
		
		let controller = moduleFactory.createRegModule()
		
		navigationController.pushViewController(controller, animated: true)
	}
}
