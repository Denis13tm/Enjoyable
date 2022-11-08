//
//  ExtensionForUIView.swift
//  Enjoyable
//
//  Created by Otabek Tuychiev on 07/11/2022.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
