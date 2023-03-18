//
//  Injector.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Resolver
import Foundation

public struct Injector {

    public static func inject() {
        Resolver.register { RealDeeplinkRepository() as DeeplinkRepository }.scope(.application)
        Resolver.register { RealGetDeeplinkInteractor() as GetDeeplinkInteractor }
        Resolver.register { RealPostDeeplinkInteractor() as PostDeeplinkInteractor }
        Resolver.register { RealPostDynamicLinkDeeplinkInteractor() as PostDynamicLinkDeeplinkInteractor }
        Resolver.register { RealPostNotificationDeepLinkInteractor() as PostNotificationDeepLinkInteractor }
        Resolver.register { RealDeleteDeeplinkInteractor() as DeleteDeeplinkInteractor }
    }
}

