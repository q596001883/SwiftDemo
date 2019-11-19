//
//  NavView.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/18.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

class NavView: UIView {

    typealias BackColsure = () -> Void
    
    @IBOutlet weak var topLabel: UILabel!
    var backColsure: BackColsure?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        autoresizingMask = []
    }
    @IBAction func back(_ sender: Any) {
        if self.backColsure != nil {
            self.backColsure!()
        }
    }
    
}

extension NavView {
    class func navView() -> NavView {
        return Bundle.main.loadNibNamed("NavView", owner: nil, options: nil)?.first as! NavView
    }
}
