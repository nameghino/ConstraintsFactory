//
//  ConstraintFactory.swift
//  HelloSwift
//
//  Created by Nicolas Ameghino on 6/12/14.
//  Copyright (c) 2014 Nicolas Ameghino. All rights reserved.
//

import Foundation
import UIKit

typealias ConstraintTuple = (AnyObject?, NSLayoutAttribute, NSLayoutRelation, AnyObject?, NSLayoutAttribute, CGFloat, CGFloat)

class ConstraintFactory: NSObject {
    
    /*
    NSLayoutConstraint(
    item: <#AnyObject?#>,
    attribute: <#NSLayoutAttribute#>,
    relatedBy: <#NSLayoutRelation#>,
    toItem: <#AnyObject?#>,
    attribute: <#NSLayoutAttribute#>,
    multiplier: <#CGFloat#>,
    constant: <#CGFloat#>)
    */
    
    class func createConstraint(t: ConstraintTuple) -> NSLayoutConstraint {
        let (i1 : AnyObject?, a1, r, i2 : AnyObject?, a2, m, c) = t
        return NSLayoutConstraint(item: i1!, attribute: a1, relatedBy: r, toItem: i2!, attribute: a2, multiplier: m, constant: c)
    }
    
    class func createConstraints(t: ConstraintTuple[]) -> NSLayoutConstraint[] {
        var r: NSLayoutConstraint[] = []
        for tuple in t {
            let constraint = ConstraintFactory.createConstraint(tuple)
            r.append(constraint)
        }
        return r
    }
}
