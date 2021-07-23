//
//  CollectionCellModel.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public protocol CollectionCellIdentifiable {
    var cellIdentifier: String { get }
    var cellSize: CGSize { get }
    
    var userInfo: [String: Any] { get set }
}

open class CollectionCellModel: CollectionCellIdentifiable {
    
    // MARK: Properties
    open var cellIdentifier: String {
        return ""
    }
    
    open var cellSize: CGSize {
        return .zero
    }
    
    open var userInfo: [String: Any] = [:]
    
    // MARK: Initialization
    public init() { }
    
}
