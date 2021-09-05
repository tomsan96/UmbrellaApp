//
//  ForetuneTellingViewModel.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import RxSwift
import Moya

class ForetuneTellingViewModel {
    private let disposeBag: DisposeBag = DisposeBag()
    let getWeatherInformationSubject = PublishSubject<(WeatherModel?, Error?)>()
    
    var selectedPrefecture: Observable<String> {
        return selectedPrefectureSubject
    }

    private let selectedPrefectureSubject = PublishSubject<String>()

    func set(text: String) {
        selectedPrefectureSubject.onNext(text)
    }
    
    func getWeatherInformation() {
        _ = ApiRepository.shared.getWeatjerInformation().asObservable().subscribe(onNext: { (weatherModel) in
            self.getWeatherInformationSubject.onNext((weatherModel, nil))
            }, onError: { (error) in
                do {
                    let errorResponse = error as? Moya.MoyaError
                    if let body = try errorResponse?.response?.mapJSON() {
                        print(body)
                        print("---")
                        print(error)

                    }
                } catch {
                    print(error)
                }
            }
        )
        .disposed(by: disposeBag)
    }

}

