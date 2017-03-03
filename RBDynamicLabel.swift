//
//  DynamicUILabel.swift
//
//  Created by Rich Blanchard on 3/2/17.
//  Copyright © 2017 Rich. All rights reserved.
//

import UIKit


public class RBDynamicLabel: UILabel {
    
    private static let kNumberOfLines = "numberOfLines"
    private lazy var heightOfLabel:NSLayoutConstraint = {
        return NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: self.bounds.height)
    }()
    private lazy var MAX_SIZE:CGSize = {
        return CGSize(width: self.bounds.size.width, height: CGFloat.greatestFiniteMagnitude)
    }()
    override public var text: String? {
        didSet {
            getNewSizeOfLabel()
        }
    }
    private func getNewSizeOfLabel() {
        heightOfLabel.constant = getNewRect(fromMaxSize: MAX_SIZE).height
    }
    private func getNewRect(fromMaxSize maxSize: CGSize) -> CGSize {
        let attributedString = NSAttributedString(string: text!, attributes: [NSFontAttributeName:self.font])
        let newRect = attributedString.boundingRect(with: maxSize, options: NSStringDrawingOptions.usesLineFragmentOrigin, context: nil)
        let newSize = CGSize(width: newRect.size.width, height: newRect.size.height)
        return newSize
    }
    
    private func addConstraints() {
        self.addConstraints([heightOfLabel])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    private func setUp() {a
        self.setValue(0, forKey: RBDynamicLabel.kNumberOfLines)
        addConstraints()
    }
    
    
    
    
}
