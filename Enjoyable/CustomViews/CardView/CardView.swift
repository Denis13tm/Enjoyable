//
//  CardView.swift
//  Enjoyable
//
//  Created by Otabek Tuychiev on 08/11/2022.
//

import UIKit

class CardView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetUp()
    }
    
    private func initialSetUp() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10.0
        layer.shadowOpacity = 0.1
        cornerRadius = 10.0
    }
    
}
