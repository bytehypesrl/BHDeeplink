//
//  RealPostDynamicLinkDeeplinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine
import Resolver
import Foundation

public struct RealPostDynamicLinkDeeplinkInteractor {

    // MARK: - Dependencies

    @Injected private var postDeeplinkInteractor: PostDeeplinkInteractor

    @Injected private var dynamicLinkUrlToDeeplinkMapper: DynamicLinkUrlToDeeplinkMapper
}

// MARK: - PostDynamicLinkDeeplinkInteractor

extension RealPostDynamicLinkDeeplinkInteractor: PostDynamicLinkDeeplinkInteractor {
    
    public func execute(url: URL) -> AnyPublisher<Void, Never> {
        postDeeplinkInteractor
            .execute(deepLink: dynamicLinkUrlToDeeplinkMapper.map(url: url))
            .eraseToAnyPublisher()
    }
}
