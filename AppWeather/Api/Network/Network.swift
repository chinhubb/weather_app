//
//  Network.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Alamofire
import Foundation
import RxSwift

protocol NetworkProviderType: AnyObject {
    associatedtype Target: TargetType
    func request<Mapper: Decodable>(_ target: Target, mapper: Mapper.Type) -> Single<Mapper>
}

final class Network<Target: TargetType>: NetworkProviderType {
    typealias Target = Target

    func request<Mapper: Decodable>(_ target: Target, mapper: Mapper.Type) -> Single<Mapper> {
        let url = target.baseURL.appendingPathComponent(target.path)
        let request = AF.request(url.absoluteString, method: target.method, parameters: target.parameters, headers: target.headers)
        return Single<Mapper>.create { single in
            request.responseDecodable(of: mapper.self) { response in
                if let result = response.value {
                    single(.success(result))
                }

                if let error = response.error {
                    single(.failure(error))
                }
            }
            return Disposables.create()
        }
    }
}
