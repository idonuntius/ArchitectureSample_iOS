//
//  RepoListState.swift
//  Presentation.ViewModel
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

import Domain_Model

public enum RepoListState {
    case loading
    case loaded(repos: Repos)
    case failed(error: Error)
}
