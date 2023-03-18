//
//  DeeplinkRepository.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine

public protocol DeeplinkRepository {

    func streamDeeplink() -> AnyPublisher<Deeplink, Never>

    func post(deeplink: Deeplink) -> AnyPublisher<Void, Never>

    func deleteLatestDeeplink() -> AnyPublisher<Void, Never>
}

