//
//  GetOrganizationsUseCase.swift
//  Domain.UseCase
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Domain_Model

public protocol GetOrganizationsUseCase {
    func call() async throws -> Organizations
}
