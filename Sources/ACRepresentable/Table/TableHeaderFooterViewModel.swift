//
//  TableHeaderFooterViewModel.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public protocol TableHeaderFooterViewIdentifiable {
    var viewIdentifier: String { get }
    var viewHeight: CGFloat { get }
    var viewEstimatedHeight: CGFloat { get }
    
    var userInfo: [String: Any] { get set }
}

open class TableHeaderFooterViewModel: TableHeaderFooterViewIdentifiable {
    
    // MARK: Properties
    open var viewIdentifier: String {
        return ""
    }
    
    open var viewHeight: CGFloat {
        return UITableView.automaticDimension
    }
    
    open var viewEstimatedHeight: CGFloat {
        return 50.0
    }
    
    open var userInfo: [String: Any] = [:]
    
    // MARK: Initialization
    public init() { }
    
}
