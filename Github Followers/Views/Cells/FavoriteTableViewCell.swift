//
//  FavoriteTableViewCell.swift
//  Github Followers
//
//  Created by Max Park on 6/20/22.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {
    static let identifier = "FavoriteTableViewCell"
    
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .left, fontSize: 26)

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarImageView.image = Images.placeholder
    }
    
    func set(favorite: Follower) {
        usernameLabel.text = favorite.login
        avatarImageView.downloadImage(fromURL: favorite.avatarUrl)
    }
    
    private func configure() {
        addSubviews(avatarImageView, usernameLabel)
        
        accessoryType = .disclosureIndicator
        
        let padding: CGFloat = 12
        
        NSLayoutConstraint.activate([
            avatarImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarImageView.heightAnchor.constraint(equalToConstant: 60),
            avatarImageView.widthAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 24),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
