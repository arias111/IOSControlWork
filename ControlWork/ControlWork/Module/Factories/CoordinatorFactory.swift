//
//  CoordinatorFactory.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import Foundation
import UIKit

class CoordinatorFactory {
	
	func createAuthCoordinator(navigationController: UINavigationController) -> AuthCoordinator {
		AuthCoordinator(navigationController: navigationController)
	}
	
	func createAppCoordinator(navigationController: UINavigationController) -> ApplicationCoordinator {
		ApplicationCoordinator(navigationController: navigationController)
	}
	
	func createRegCoordinator(navigationController: UINavigationController) -> RegistrationCoordinator {
		RegistrationCoordinator(navigationController: navigationController)
	}
}
