//
//  WinningCell.swift
//  WhoWantToBeMillionaireChallenge
//
//  Created by Артем Галай on 31.10.22.
//

import UIKit

final class WinningCell: UITableViewCell {

    var actionHandler: ((WinningCell) -> ())?

    static let identifier = "WinningCell"

    private let prizeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22)
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        contentView.addSubview(prizeLabel)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            prizeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 3),
            prizeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            prizeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            prizeLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -3),
        ])
    }

    func configure(model: WinModel, isCurrentLevel: Bool) {
        prizeLabel.text = model.prize.rawValue
        if isCurrentLevel {
            backgroundColor = .systemYellow
            prizeLabel.font = .boldSystemFont(ofSize: 25)
        } else {
            prizeLabel.backgroundColor = model.backgroundcolorLabel
        }
    }
}
