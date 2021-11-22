//
//  Coordinator.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import Foundation
import UIKit

typealias CoordinatorHandler = () -> ()

protocol Coordinator: AnyObject {
	
	var navigationController: UINavigationController { get set }
	var flowCompletionHandler: CoordinatorHandler? { get set }
	
	func start()
}
