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
    
    public override var localizableProperty: String?{
        
        get{
            return self.currentTitle
        }
        set{
			let newTitle = self.attributedTitle(for: UIControlState())?.replaceCharactersAndKeepAttributes(newValue)
			self.setAttributedTitle(newTitle, for: UIControlState())
        }
    }
  

}
