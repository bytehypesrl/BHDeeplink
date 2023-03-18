//
//  RealDeeplinkRepository.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine

public struct RealDeeplinkRepository {

    // MARK: - Properties

    private var currentValueSubject: CurrentValueSubject<Deeplink, Never> = .init(IgnoreDeepLink())
}

// MARK: - DeeplinkRepository

extension RealDeeplinkRepository: DeeplinkRepository {

    public func streamDeeplink() -> AnyPublisher<Deeplink, Never> {
        currentValueSubject.eraseToAnyPublisher()
    }

    public func post(deeplink: Deeplink) -> AnyPublisher<Void, Never> {
        Just(currentValueSubject.send(deeplink)).eraseToAnyPublisher()
    }

    public func deleteLatestDeeplink() -> AnyPublisher<Void, Never> {
        Just(currentValueSubject.send(IgnoreDeepLink())).eraseToAnyPublisher()
    }
}
