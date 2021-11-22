//
//  StartView.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//
import UIKit
import SnapKit

extension StartView {
	struct Appearance {
		
	}
}

protocol StartViewDelegate: AnyObject {
	func showSingIn()
	func showSignUp()
}

class StartView: UIView {
	private let appearance = Appearance()
	
	//MARK: - Views
	
	private lazy var button: UIButton = {
		let button = UIButton()
		button.setTitle("sign in", for: .normal)
		button.layer.borderColor = UIColor.black.cgColor
		button.layer.borderWidth = 1
		button.addTarget(self, action: #selector(showSignIn), for: .touchUpInside)
		button.setTitleColor(.black, for: .normal)
		return button
	}()
	
	
	private lazy var secondButton: UIButton = {
		let button = UIButton()
		button.setTitle("sign up", for: .normal)
		button.layer.borderColor = UIColor.black.cgColor
		button.layer.borderWidth = 1
		button.addTarget(self, action: #selector(showSignUp), for: .touchUpInside)
		button.setTitleColor(.black, for: .normal)
		return button
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
	
	weak var delegate: StartViewDelegate?
	
	//MARK: - Private Methods
	
	private func setupSubviews() {
		addSubview(button)
		addSubview(secondButton)
	}
	
	private func setupConstraints() {
		button.snp.makeConstraints { make in
			make.left.right.equalToSuperview().inset(85)
			make.size.equalTo(CGSize(width: 132, height: 34))
			make.top.equalToSuperview().offset(270)
		}
		
		secondButton.snp.makeConstraints { make in
			make.left.right.size.equalTo(button)
			make.top.equalTo(button.snp.bottom).offset(14)
		}
	}
	
	@objc func showSignIn() {
		delegate?.showSingIn()
	}
	
	@objc func showSignUp() {
		delegate?.showSignUp()
	}
}

