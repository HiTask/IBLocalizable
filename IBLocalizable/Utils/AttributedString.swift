//
//  AttributedString.swift
//  1PasswordExtension
//
//  Created by Anatoliy Pozdeyev on 28/05/2018.
//

import Foundation

extension NSAttributedString {
	open func replaceCharactersAndKeepAttributes(_ string: String?) -> NSAttributedString {
		guard let string = string else {
			return NSAttributedString()
		}
		
		guard let newString = self.mutableCopy() as? NSMutableAttributedString else {
			return NSAttributedString(string: string)
		}
		newString.replaceCharacters(in: NSRange(location: 0, length: self.length), with: string)
		return newString
	}
}
