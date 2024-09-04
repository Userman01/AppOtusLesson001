//
//  ModalUIView.swift
//  Lesson001
//
//  Created by Петр Постников on 04.09.2024.
//

import UIKit

final class ModalUIView: UIView {
    private lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = .zero
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Close", for: .normal)
        button.addTarget(self, action: #selector(tupCloseButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var handler: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        addSubview(label)
        addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            closeButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
            closeButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func configure(text: String, completion: @escaping () -> Void) {
        label.text = text
        handler = completion
    }
    
    @objc func tupCloseButton() {
        handler?()
    }
}
