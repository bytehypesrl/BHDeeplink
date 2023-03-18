//
//  RealDeleteDeeplinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine
import Resolver

public struct RealDeleteDeeplinkInteractor {

    // MARK: - Dependencies

    @Injected private var repository: DeeplinkRepository
}

extension RealDeleteDeeplinkInteractor: DeleteDeeplinkInteractor {

    // MARK: - DeleteDeeplinkInteractor

    public func execute() -> AnyPublisher<Void, Never> {
        repository.deleteLatestDeeplink()
    }

}
