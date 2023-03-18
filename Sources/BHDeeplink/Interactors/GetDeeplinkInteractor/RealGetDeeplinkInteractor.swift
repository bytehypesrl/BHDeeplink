//
//  RealGetDeeplinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine
import Resolver

public struct RealGetDeeplinkInteractor {

    // MARK: - Dependencies

    @Injected private var repository: DeeplinkRepository
}

// MARK: - GetDeeplinkInteractor

extension RealGetDeeplinkInteractor: GetDeeplinkInteractor {

    public func execute() -> AnyPublisher<Deeplink, Never> {
        repository.streamDeeplink()
    }
}
