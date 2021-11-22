//
//  ModuleFactory.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import Foundation
import Foundation

class ModuleFactory {
	
	func createAuthModule() -> AuthViewController {
		AuthViewController()
	}
	
	func createStartModule() -> StartViewController {
		StartViewController()
	}
	
	func createRegModule() -> RegViewController {
		RegViewController()
	}

	
	func createMainModule() -> MainViewController {
		MainViewController()
	}
	
	func createRegEnterPasswordModule() -> RegEnterPasswordViewController {
		RegEnterPasswordViewController()
	}
}
