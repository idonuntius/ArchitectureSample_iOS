//
//  GithubApi.swift
//  Data.Api
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

import Foundation
import Alamofire
import Data_Entity

public struct GithubApi {
    private let base = URL(string: "https://api.github.com/")!

    public func getOrganizations() async throws -> [OrganizationEntity] {
        try await AF.request(base.appendingPathComponent("organizations").absoluteURL).publish([OrganizationEntity].self)
    }
}

private extension DataRequest {
    func publish<T>(_ type: T.Type) async throws -> T where T : Decodable {
        try await withCheckedThrowingContinuation { continuation in
            self.response { response in
                switch response.result {
                case .success(let data): do {
                    let decodedResponse = try JSONDecoder().decode(type, from: data!)
                    continuation.resume(returning: decodedResponse)
                } catch {
                    continuation.resume(throwing: error)
                }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
