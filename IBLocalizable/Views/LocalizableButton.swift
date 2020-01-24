//
//  LocalizableButton.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
// MARK: - Button extension that adds the localizable property
extension UIButton {
    
	@objc public override var localizableProperty: String?{
        
        get{
			return currentAttributedTitle?.string ?? currentTitle
        }
        set{
			if let currentAttributedTitle = currentAttributedTitle {
				let newTitle = currentAttributedTitle.replaceCharactersAndKeepAttributes(newValue)
				self.setAttributedTitle(newTitle, for: .normal)
			} else {
				self.setTitle(newValue, for: .normal)
			}
        }
    }
  

}
