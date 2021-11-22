//
//  FlowController.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import Foundation

protocol FlowController {
	
	associatedtype T
	var completionHandler: ((T) -> ())? { get set }
}
