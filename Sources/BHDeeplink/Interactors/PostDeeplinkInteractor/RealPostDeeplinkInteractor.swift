//
//  RealPostDeeplinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine
import Resolver

public struct RealPostDeeplinkInteractor {

    // MARK: - Dependencies

    @Injected private var repository: DeeplinkRepository
}

// MARK: - PostDeeplinkInteractor

extension RealPostDeeplinkInteractor: PostDeeplinkInteractor {

    public func execute(deepLink: Deeplink) -> AnyPublisher<Void, Never> {
        repository.post(deeplink: deepLink)
    }
}
