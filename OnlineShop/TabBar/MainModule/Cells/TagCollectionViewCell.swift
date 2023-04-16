//
//  TagCollectionViewCell.swift
//  OnlineShop
//
//  Created by mac on 16.04.2023.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = ._2C2D2E
        return label
    }()
    
    let bottomLine: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = ._E7544D
        view.isHidden = true
        return view
    }()
    
    override var isSelected: Bool {
        didSet {
            bottomLine.isHidden = !isSelected
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        addSubview(titleLabel)
        addSubview(bottomLine)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomLine.topAnchor, constant: -4),
            
            bottomLine.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            bottomLine.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            bottomLine.heightAnchor.constraint(equalToConstant: 2)
        ])
    }
    
    func configure(text: String) {
        titleLabel.text = text
    }
}
