//
//  TableHeaderFooterView.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public protocol TableHeaderFooterViewRepresentable {
    var model: TableHeaderFooterViewIdentifiable? { get set }
}

open class TableHeaderFooterView: UITableViewHeaderFooterView, TableHeaderFooterViewRepresentable {
    
    // MARK: Properties
    public var model: TableHeaderFooterViewIdentifiable? {
        didSet {
            self.updateViews()
        }
    }
    
    // MARK: Initialization
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
    }
    
    // MARK: Setup functions
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }
    
    open func setupView() { }
    
    open func updateViews() { }
}
