//
//  OrganizationListState.swift
//  Presentation.ViewModel
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Foundation
import Domain_Model

public enum OrganizationListState {
    case loading
    case loaded(organizations: Organizations)
    case failed(error: Error)
}
