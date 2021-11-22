//
//  MainVIew.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import UIKit
import SnapKit

extension MainView {
	struct Appearance {
		
	}
}

class MainView: UIView {
	private let appearance = Appearance()
	
	//MARK: - Views
	
	private lazy var label: UILabel = {
		let label = UILabel()
		return label
	}()
	
	//MARK: - Inits
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = .white
		setupSubviews()
		setupConstraints()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	//MARK: - Private Methods
	
	private func setupSubviews() {
		addSubview(label)
	}
	
	private func setupConstraints() {
		label.snp.makeConstraints { make in
			make.center.equalToSuperview()
		}
	}
}


