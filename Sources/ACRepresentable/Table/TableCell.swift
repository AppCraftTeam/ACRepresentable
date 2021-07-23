//
//  TableCell.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public protocol TableCellRepresentable {
    var model: TableCellIdentifiable? { get set }
}

open class TableCell: UITableViewCell, TableCellRepresentable {
    
    // MARK: Properties
    public var model: TableCellIdentifiable? {
        didSet {
            self.updateViews()
        }
    }
    
    // MARK: Initialization
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    // MARK: Setup functions
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }
    
    open func setupView() { }
    
    open func updateViews() { }
    
    override open func setHighlighted(_ highlighted: Bool, animated: Bool) {
        if highlighted {
            self.alpha = 0.4
        } else {
            self.alpha = 1.0
        }
    }
    
    override open func setSelected(_ selected: Bool, animated: Bool) { }
    
}
