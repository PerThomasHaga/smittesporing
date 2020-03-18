//
//  UILabel + Util.swift
//  Covid19
//
//  Created by Lars-Erik Kasin on 17/03/2020.
//  Copyright © 2020 Agens. All rights reserved.
//

import UIKit

extension UILabel {
    
    static func title(_ text: String) -> UILabel {
        return UILabel(text)
            .withFont(UIFont.medium(size: 32))
            .colored(.textBlack)
    }
    
    convenience init(_ text: String) {
        self.init(frame: .zero)
        self.text = text
    }
    
    func lineCount(_ numberOfLines: Int) -> UILabel {
        self.numberOfLines = numberOfLines
        return self
    }

    func colored(_ color: UIColor) -> UILabel {
        self.textColor = color
        return self
    }
    
    func aligned(_ alignment: NSTextAlignment) -> UILabel {
        self.textAlignment = alignment
        return self
    }

    func withFont(_ font: UIFont?) -> UILabel {
        self.font = font
        return scaledFont()
    }

    func scaledFont(max: CGFloat? = nil) -> UILabel {
        if let max = max {
            self.font = UIFontMetrics.default.scaledFont(for: self.font, maximumPointSize: max)
        } else {
            self.font = UIFontMetrics.default.scaledFont(for: self.font)
        }
        
        self.adjustsFontForContentSizeCategory = true
        return self
    }
}
