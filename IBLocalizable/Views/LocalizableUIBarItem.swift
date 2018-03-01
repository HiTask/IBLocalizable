//
//  LocalizableUIBarItem.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

// MARK: - BarItem Extension that adds the localizable property
extension UIBarItem: Localizable {
    
    public var localizableProperty: String?{
        get{
            return self.title
        }
        set{
            self.title = newValue
        }
    }
    
    /// Applies the localizable string to the localizable field of the supported view
    @IBInspectable public var localizableString: String{
        
        get{
            guard let text = self.localizableProperty else{
                return ""
            }
            return text
        }
        set{
            applyLocalizableString(newValue)
        }
        
    }
	
	/// Applies the localizable string from UIKit bundle to the localizable field of the supported view
	@IBInspectable public var localizableUIKitString: String{
		
		get{
			guard let text = self.localizableProperty else{
				return ""
			}
			return text
		}
		set{
			/**
			*  Applys the localization to the property
			*/
			applyLocalizableUIKitString(newValue)
		}
	}
}
