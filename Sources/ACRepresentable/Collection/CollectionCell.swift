//
//  CollectionCell.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public protocol CollectionCellRepresentable {
    var model: CollectionCellIdentifiable? { get set }
}

open class CollectionCell: UICollectionViewCell, CollectionCellRepresentable {
    
    // MARK: Properties
    public var model: CollectionCellIdentifiable? {
        didSet {
            self.updateViews()
        }
    }
    
    // MARK: Initialization
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    // MARK: Setup functions
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }
    
    open func setupView() { }
    
    open func updateViews() { }
}
