//
//  UIView.swift
//  ChainKit
//
//  Created by JLM on 2019/12/12.
//

import UIKit

public extension UIView {
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> UIView {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    func tag(_ tag: Int) -> UIView {
        self.tag = tag
        return self
    }


    @available(iOS 9.0, *)
    func semanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute) -> UIView {
        self.semanticContentAttribute = semanticContentAttribute
        return self
    }
    
    func frame(_ frame: CGRect) -> UIView {
        self.frame = frame
        return self
    }
    
    func bounds(_ bounds: CGRect) -> UIView {
        self.bounds = bounds
        return self
    }
    
    func center(_ center: CGPoint) -> UIView {
        self.center = center
        return self
    }
    
    func transform(_ transform: CGAffineTransform) -> UIView {
        self.transform = transform
        return self
    }
    
    @available(iOS 12.0, *)
    func transform3D(_ transform3D: CATransform3D) -> UIView {
        self.transform3D = transform3D
        return self
    }
    
    @available(iOS 4.0, *)
    func contentScaleFactor(_ contentScaleFactor: CGFloat) -> UIView {
        self.contentScaleFactor = contentScaleFactor
        return self
    }
    
    func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> UIView {
        self.isMultipleTouchEnabled = isMultipleTouchEnabled
        return self
    }
    
    func isExclusiveTouch(_ isExclusiveTouch: Bool) -> UIView {
        self.isExclusiveTouch = isExclusiveTouch
        return self
    }
    
    func autoresizesSubviews(_ autoresizesSubviews: Bool) -> UIView {
        self.autoresizesSubviews = autoresizesSubviews
        return self
    }
    
    func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> UIView {
        self.autoresizingMask = autoresizingMask
        return self
    }
    
    @available(iOS 8.0, *)
    func layoutMargins(_ layoutMargins: UIEdgeInsets) -> UIView {
        self.layoutMargins = layoutMargins
        return self
    }
    
    @available(iOS 11.0, *)
    func directionalLayoutMargins(_ directionalLayoutMargins: NSDirectionalEdgeInsets) -> UIView {
        self.directionalLayoutMargins = directionalLayoutMargins
        return self
    }

    @available(iOS 8.0, *)
    func preservesSuperviewLayoutMargins(_ preservesSuperviewLayoutMargins: Bool) -> UIView {
        self.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins
        return self
    }
    
    @available(iOS 11.0, *)
    func insetsLayoutMarginsFromSafeArea(_ insetsLayoutMarginsFromSafeArea: Bool) -> UIView {
        self.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea
        return self
    }
    
    func clipsToBounds(_ clipsToBounds: Bool) -> UIView {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    func backgroundColor(_ color: UIColor?) ->UIView {
        self.backgroundColor = color
        return self
    }
    
    func alpha(_ alpha: CGFloat) -> UIView {
        self.alpha = alpha
        return self
    }
    
    func isOpaque(_ opaque: Bool) -> UIView {
        self.isOpaque = opaque
        return self
    }
    
    func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> UIView {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        return self
    }
    
    func isHidden(_ isHidden: Bool) -> UIView {
        self.isHidden = isHidden
        return self
    }
    
    func contentMode (_ contentMode: UIView.ContentMode) -> UIView {
        self.contentMode = contentMode
        return self
    }
    
    @available(iOS 8.0, *)
    func mask (_ mask: UIView?) -> UIView {
        self.mask = mask
        return self
    }
    
    @available(iOS 7.0, *)
    func tintColor (_ tintColor: UIColor) -> UIView {
        self.tintColor = tintColor
        return self
    }
    
    @available(iOS 7.0, *)
    func tintAdjustmentMode (_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> UIView {
        self.tintAdjustmentMode = tintAdjustmentMode
        return self
    }
}

public protocol Chainable {}


extension Chainable where Self: AnyObject {
    public func conf(_ closure: (Self) throws -> Void) rethrows -> Self {
        try closure(self)
        return self
    }
//    
//    @discardableResult
//    func config(_ closure: (Self) -> Void) -> Self {
//        config(self)
//        return self
//    }
}

extension UIView: Chainable {}
extension UIBarButtonItem: Chainable {}
