
import Foundation
import UIKit

// this function is to set the specified UILabel to a specified font name and size. -- will add color. 
func setFont(labelToUpdate: UILabel, fontName: String, fontSize: CGFloat, fontColor: UIColor) {
    guard let customFont = UIFont(name: fontName, size: UIFont.labelFontSize) else {
        fatalError("failed to find font \(fontName)")
    }
    labelToUpdate.font = UIFontMetrics.default.scaledFont(for: customFont)
    
    labelToUpdate.adjustsFontForContentSizeCategory = true
    
    labelToUpdate.font = labelToUpdate.font.withSize(fontSize)
    
    labelToUpdate.textColor = fontColor
}


// https://stackoverflow.com/questions/24356888/how-do-i-change-the-font-size-of-a-uilabel-in-swift
