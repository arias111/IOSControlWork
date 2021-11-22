//
//  ApplicationCoordinator.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import UIKit

class ApplicationCoordinator: Coordinator {
	
	var navigationController: UINavigationController
	var flowCompletionHandler: CoordinatorHandler?
	
	private var childCoordinators: [Coordinator] = []
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		showStartFlow()
	}
	
	private func showStartFlow() {
		
		let startCoordinator = CoordinatorFactory().createAuthCoordinator(navigationController: navigationController)
			
		childCoordinators.append(startCoordinator)
	
		startCoordinator.flowCompletionHandler = { [weak self] in
			self?.showSignInFlow()
		}
		
		startCoordinator.start()
	}
	
	private func showSignInFlow() {
		navigationController.setViewControllers([AuthViewController()], animated: true)
	}
}
