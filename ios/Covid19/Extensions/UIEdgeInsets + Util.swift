//
//  UIEdgeInsets + Util.swift
//  Covid19
//
//  Created by Lars-Erik Kasin on 17/03/2020.
//  Copyright © 2020 Agens. All rights reserved.
//

import UIKit

extension UIEdgeInsets {
    
    static var safeArea: UIEdgeInsets? { UIApplication.shared.keyWindow?.safeAreaInsets }
    
    static var safeAreaTop: CGFloat { safeArea?.top ?? 0 }
    
    static var safeAreaBottom: CGFloat { safeArea?.bottom ?? 0 }

    static var margins: UIEdgeInsets { UIEdgeInsets(top: safeAreaTop, left: 20, bottom: safeAreaBottom, right: 20) }
    
    static var horizontal: UIEdgeInsets { UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20) }
}
