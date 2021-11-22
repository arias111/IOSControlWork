//
//  BaseView.swift
//  ControlWork
//
//  Created by Nail Galiev on 22.11.2021.
//

import Foundation
import UIKit
import SnapKit

extension BaseView {
	struct Appearance {
		
	}
}

protocol BaseViewDelegate: AnyObject {
	func goTo()
}

class BaseView: UIView {
	private let appearance = Appearance()
	
	//MARK: - Views
	
	private lazy var textView: UITextField = {
		let textView = UITextField()
		textView.layer.borderColor = UIColor.black.cgColor
		textView.layer.borderWidth = 1
		return textView
	}()
	
	private lazy var secondTextView: UITextField = {
		let textView = UITextField()
		textView.layer.borderColor = UIColor.black.cgColor
		textView.layer.borderWidth = 1
		return textView
	}()
	
	private lazy var button: UIButton = {
		let button = UIButton()
		button.setTitle("next", for: .normal)
		button.layer.borderColor = UIColor.black.cgColor
		button.layer.borderWidth = 1
		button.addTarget(self, action: #selector(goTo), for: .touchUpInside)
		button.setTitleColor(.black, for: .normal)
		return button
	}()
	
	//MARK: - Inits
	
	init(frame: CGRect, text: String?, secondText: String?, isTextFieldPresent: Bool) {
		super.init(frame: frame)
		backgroundColor = .white
		textView.placeholder = text
		secondTextView.placeholder = secondText
		secondTextView.isHidden = !isTextFieldPresent
		setupSubviews()
		setupConstraints(isPresent: isTextFieldPresent)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	weak var delegate: BaseViewDelegate?
	
	//MARK: - Private Methods
	
	private func setupSubviews() {
		addSubview(textView)
		addSubview(secondTextView)
		addSubview(button)
	}
	
	private func setupConstraints(isPresent: Bool) {
		
		textView.snp.makeConstraints { make in
			make.left.right.equalToSuperview().inset(85)
			make.size.equalTo(CGSize(width: 231, height: 69))
			make.top.equalToSuperview().offset(270)
		}
		
		if isPresent {
			
			secondTextView.snp.makeConstraints { make in
				make.left.right.size.equalTo(textView)
				make.top.equalTo(textView.snp.bottom).offset(14)
			}
			
			button.snp.makeConstraints { make in
				make.left.right.equalToSuperview().inset(135)
				make.size.equalTo(CGSize(width: 132, height: 34))
				make.top.equalTo(secondTextView.snp.bottom).offset(25)
			}
		} else {
			button.snp.makeConstraints { make in
				make.left.right.equalToSuperview().inset(135)
				make.size.equalTo(CGSize(width: 132, height: 34))
				make.top.equalTo(textView.snp.bottom).offset(25)
			}
		}
	}
	
	@objc func goTo() {
		delegate?.goTo()
	}
}
