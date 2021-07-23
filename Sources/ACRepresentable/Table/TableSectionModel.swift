//
//  TableSectionModel.swift
//  ACRepresentable
//
//  Created by AppCraft LLC on 8/23/21.
//


public protocol TableSectionRepresentable {
    var rows: [TableCellIdentifiable] { get set }
    var header: TableHeaderFooterViewIdentifiable? { get set }
    var footer: TableHeaderFooterViewIdentifiable? { get set }
}

open class TableSectionModel: TableSectionRepresentable {
    
    // MARK: Properties
    open var rows: [TableCellIdentifiable]
    open var header: TableHeaderFooterViewIdentifiable?
    open var footer: TableHeaderFooterViewIdentifiable?
    
    // MARK: Initialization
    public init() {
        self.rows = []
    }
}
