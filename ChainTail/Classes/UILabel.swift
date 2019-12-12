//
//  UILabel.swift
//  ChainKit
//
//  Created by JLM on 2019/12/12.
//

import UIKit

public extension UILabel {
    // default is nil
    func text(_ text: String?) -> UILabel {
        self.text = text
        return self
    }
    
    // default is nil (system font 17 plain)
    func font(_ font: UIFont?) -> UILabel {
        self.font = font
        return self
    }
    
    // default is labelColor
    func textColor(_ color: UIColor?) -> UILabel {
        self.textColor = color
        return self
    }
    
    // default is nil (no shadow)
    func shadowColor(_ color: UIColor?) -> UILabel {
        self.shadowColor = color
        return self
    }
    
    // default is CGSizeMake(0, -1) -- a top shadow
    func shadowOffset(_ offset: CGSize) -> UILabel {
        self.shadowOffset = offset
        return self
    }
    
    // default is NSTextAlignmentNatural (before iOS 9, the default was NSTextAlignmentLeft)
    func textAlignment(_ alignment: NSTextAlignment) -> UILabel {
        self.textAlignment = alignment
        return self
    }
    
    // default is NSLineBreakByTruncatingTail. used for single and multiple lines of text
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> UILabel {
        self.lineBreakMode = lineBreakMode
        return self
    }
    
    // the underlying attributed string drawn by the label, if set, the label ignores the properties above.
    // default is nil
    @available(iOS 6.0, *)
    func attributedText(_ attributedText: NSAttributedString?) -> UILabel {
        self.attributedText = attributedText
        return self
    }
    
    // the 'highlight' property is used by subclasses for such things as pressed states. it's useful to make it part of the base class as a user property
    // default is nil
    func highlightedTextColor(_ color: UIColor?) -> UILabel {
        self.highlightedTextColor = color
        return self
    }
    
    // default is NO
    func isHighlighted(_ isHighlighted: Bool) -> UILabel {
        self.isHighlighted = isHighlighted
        return self
    }
    
    // default is YES. changes how the label is drawn
    func isEnabled(_ isEnabled: Bool) -> UILabel {
        self.isEnabled = isEnabled
        return self
    }
    
    // this determines the number of lines to draw and what to do when sizeToFit is called. default value is 1 (single line). A value of 0 means no limit
    // if the height of the text reaches the # of lines or the height of the view is less than the # of lines allowed, the text will be
    // truncated using the line break mode.
    func numberOfLines(_ numberOfLines: Int) -> UILabel {
        self.numberOfLines = numberOfLines
        return self
    }
    
    // these next 3 properties allow the label to be autosized to fit a certain width by scaling the font size(s) by a scaling factor >= the minimum scaling factor
    // and to specify how the text baseline moves when it needs to shrink the font.
    // default is NO
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> UILabel {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    // default is UIBaselineAdjustmentAlignBaselines
    func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> UILabel {
        self.baselineAdjustment = baselineAdjustment
        return self
    }
    
    // default is 0.0
    @available(iOS 6.0, *)
    func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> UILabel {
        self.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    // Tightens inter-character spacing in attempt to fit lines wider than the available space if the line break mode is one of the truncation modes before starting to truncate.
    // The maximum amount of tightening performed is determined by the system based on contexts such as font, line width, etc.
    // default is NO
    @available(iOS 9.0, *)
    func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> UILabel {
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }
    
    // Support for constraint-based layout (auto layout)
    // If nonzero, this is used when determining -intrinsicContentSize for multiline labels
    @available(iOS 6.0, *)
    func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> UILabel {
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
}
