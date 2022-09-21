//
//  TableHeaderView.swift
//  UINavigationController
//
//  Created by emre usul on 21.09.2022.
//

import UIKit

class TableHeaderView : UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
            setupView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
        
        override var intrinsicContentSize: CGSize {
            return CGSize(width: UIView.noIntrinsicMetric, height: 100)
        }
        
        private func commonInit() {
            let bundle = Bundle(for: TableHeaderView.self)
            bundle.loadNibNamed("TableHeaderView", owner: self, options: nil)
            addSubview(contentView)
            contentView.backgroundColor = .black
            
            contentView.translatesAutoresizingMaskIntoConstraints = false
            contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        }
    
    private func setupView() {
        nameLabel.textColor = .systemBackground
        cardLabel.textColor = .systemGray
    }
    
}
