//
//  CollectionSectionModel.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//

public protocol CollectionSectionRepresentable {
    var items: [CollectionCellIdentifiable] { get set }
}

open class CollectionSectionModel: CollectionSectionRepresentable {
    
    // MARK: Properties
    open var items: [CollectionCellIdentifiable]
    
    // MARK: Initialization
    public init() {
        self.items = []
    }
    
}
