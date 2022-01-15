//
//  GFEmptyStateView.swift
//  GitHubFollowers
//
//  Created by Zach Ezwawi on 2022-01-10.
//

import UIKit

class GFEmptyStateView: UIView {

    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageVew = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImageVew)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoImageVew.image = UIImage(named: "empty-state-logo")
        logoImageVew.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoImageVew.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageVew.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageVew.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoImageVew.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        ])
    }
}
