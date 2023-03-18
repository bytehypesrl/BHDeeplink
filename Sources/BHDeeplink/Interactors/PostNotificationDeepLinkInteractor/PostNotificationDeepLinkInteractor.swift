//
//  PostNotificationDeepLinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine

public protocol PostNotificationDeepLinkInteractor {

    func execute(notificationUserInfo: [AnyHashable: Any]) -> AnyPublisher<Void, Never>
}
