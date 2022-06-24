//
//  GFFollowerItemViewController.swift
//  Github Followers
//
//  Created by Max Park on 6/18/22.
//

import Foundation

protocol GFFollowerItemInfoViewControllerDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GFFollowerItemViewController: GFItemInfoViewController {
    
    weak var delegate: GFFollowerItemInfoViewControllerDelegate!
    
    init(user: User, delegate: GFFollowerItemInfoViewControllerDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, with: user.following)
        actionButton.set(color: .systemGreen, title: "Get Followers", systemImageName: "person.3")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
