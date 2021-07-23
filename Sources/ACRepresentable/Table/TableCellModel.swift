//
//  TableCellModel.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public protocol TableCellIdentifiable {
    var cellHeight: CGFloat { get }
    var cellIdentifier: String { get }
    var userInfo: [String: Any] { get set }
}

open class TableCellModel: TableCellIdentifiable {
    
    // MARK: Properties
    open var cellIdentifier: String {
        return ""
    }
    
    open var cellHeight: CGFloat {
        return UITableView.automaticDimension
    }
    
    open var userInfo: [String: Any] = [:]
    
    // MARK: Initialization
    public init() { }
}
