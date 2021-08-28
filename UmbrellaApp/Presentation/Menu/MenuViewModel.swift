//
//  MenuViewModel.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import RxSwift

class MenuViewModel {
    private let disposeBag: DisposeBag = DisposeBag()
    
    var selectedPrefecture: Observable<String> {
        return selectedPrefectureSubject
    }

    private let selectedPrefectureSubject = PublishSubject<String>()

    func set(text: String) {
        selectedPrefectureSubject.onNext(text)
    }

}
