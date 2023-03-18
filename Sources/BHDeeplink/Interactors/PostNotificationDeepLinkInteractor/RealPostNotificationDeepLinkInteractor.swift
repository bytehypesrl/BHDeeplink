//
//  RealPostNotificationDeepLinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine
import Resolver

public struct RealPostNotificationDeepLinkInteractor {

    // MARK: - Dependencies

    @Injected private var postDeeplinkUseCase: PostDeeplinkInteractor

    @Injected private var mapper: PushNotificationToDeepLinkMapper
}

// MARK: - PostNotificationDeepLinkInteractor

extension RealPostNotificationDeepLinkInteractor: PostNotificationDeepLinkInteractor {

    public func execute(notificationUserInfo: [AnyHashable: Any]) -> AnyPublisher<Void, Never> {
        postDeeplinkUseCase.execute(deepLink: mapper.map(from: notificationUserInfo))
    }
}
