//
//  AppConst.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import Foundation

class AppConst {
    enum JapanesePrefecture: Int {

        // 北海道
        case hokkaido

        // 東北
        case aomori
        case iwate
        case miyagi
        case akita
        case yamagata
        case fukushima

        // 関東
        case ibaraki
        case tochigi
        case gunma
        case saitama
        case chiba
        case tokyo
        case kanagawa

        // 中部
        case niigata
        case toyama
        case ishikawa
        case fukui
        case yamanashi
        case nagano
        case gifu
        case shizuoka
        case aichi

        // 関西
        case mie
        case shiga
        case kyoto
        case osaka
        case hyogo
        case nara
        case wakayama

        // 中国
        case tottori
        case shimane
        case okayama
        case hiroshima
        case yamaguchi

        //　四国
        case tokushima
        case kagawa
        case ehime
        case kochi

        // 九州
        case fukuoka
        case saga
        case nagasaki
        case kumamoto
        case oita
        case miyazaki
        case kagoshima
        case okinawa

        var name: String {
            switch self {

            // 北海道
            case .hokkaido: return "北海道"

            // 東北
            case .aomori   : return "青森"
            case .iwate    : return "岩手"
            case .miyagi   : return "宮城"
            case .akita    : return "秋田"
            case .yamagata : return "山形"
            case .fukushima: return "福島"

            // 関東
            case .ibaraki : return "茨城"
            case .tochigi : return "栃木"
            case .gunma   : return "群馬"
            case .saitama : return "埼玉"
            case .chiba   : return "千葉"
            case .tokyo   : return "東京"
            case .kanagawa: return "神奈川"

            // 中部
            case .niigata  : return "新潟"
            case .toyama   : return "富山"
            case .ishikawa : return "石川"
            case .fukui    : return "福井"
            case .yamanashi: return "山梨"
            case .nagano   : return "長野"
            case .gifu     : return "岐阜"
            case .shizuoka : return "静岡"
            case .aichi    : return "愛知"

            // 関西
            case .mie     : return "三重"
            case .shiga   : return "滋賀"
            case .kyoto   : return "京都"
            case .osaka   : return "大阪"
            case .hyogo   : return "兵庫"
            case .nara    : return "奈良"
            case .wakayama: return "和歌山"

            // 中国
            case .tottori  : return "鳥取"
            case .shimane  : return "島根"
            case .okayama  : return "岡山"
            case .hiroshima: return "広島"
            case .yamaguchi: return "山口"

            // 四国
            case .tokushima: return "徳島"
            case .kagawa   : return "香川"
            case .ehime    : return "愛媛"
            case .kochi    : return "高知"

            // 九州
            case .fukuoka  : return "福岡"
            case .saga     : return "佐賀"
            case .nagasaki : return "長崎"
            case .kumamoto : return "熊本"
            case .oita     : return "大分"
            case .miyazaki : return "宮崎"
            case .kagoshima: return "鹿児島"
            case .okinawa  : return "沖縄"
            }
        }

        var id: String {
            switch self {

            // 北海道
            case .hokkaido: return "016010"

            // 東北
            case .aomori   : return "020010"
            case .iwate    : return "030010"
            case .miyagi   : return "040010"
            case .akita    : return "050010"
            case .yamagata : return "060010"
            case .fukushima: return "070010"

            // 関東
            case .ibaraki : return "080010"
            case .tochigi : return "090010"
            case .gunma   : return "100010"
            case .saitama : return "110010"
            case .chiba   : return "120010"
            case .tokyo   : return "130010"
            case .kanagawa: return "140010"

            // 中部
            case .niigata  : return "150010"
            case .toyama   : return "160010"
            case .ishikawa : return "170010"
            case .fukui    : return "180010"
            case .yamanashi: return "190010"
            case .nagano   : return "200010"
            case .gifu     : return "210010"
            case .shizuoka : return "220010"
            case .aichi    : return "230010"

            // 関西
            case .mie     : return "240010"
            case .shiga   : return "250010"
            case .kyoto   : return "260010"
            case .osaka   : return "270000"
            case .hyogo   : return "280010"
            case .nara    : return "290010"
            case .wakayama: return "300010"

            // 中国
            case .tottori  : return "310010"
            case .shimane  : return "320010"
            case .okayama  : return "330010"
            case .hiroshima: return "340010"
            case .yamaguchi: return "350010"

            // 四国
            case .tokushima: return "360010"
            case .kagawa   : return "370000"
            case .ehime    : return "380010"
            case .kochi    : return "390010"

            // 九州
            case .fukuoka  : return "400010"
            case .saga     : return "410010"
            case .nagasaki : return "420010"
            case .kumamoto : return "430010"
            case .oita     : return "440010"
            case .miyazaki : return "450010"
            case .kagoshima: return "460010"
            case .okinawa  : return "470010"
            }
        }

        static var all: [JapanesePrefecture] {
            return [
            // 北海道
                .hokkaido,

            // 東北
            .aomori,
            .iwate,
            .miyagi,
            .akita,
            .yamagata,
            .fukushima,

            // 関東
            .ibaraki,
            .tochigi,
            .gunma,
            .saitama,
            .chiba,
            .tokyo,
            .kanagawa,

            // 中部
            .niigata,
            .toyama,
            .ishikawa,
            .fukui,
            .yamanashi,
            .nagano,
            .gifu,
            .shizuoka,
            .aichi,

            // 関西
            .mie,
            .shiga,
            .kyoto,
            .osaka,
            .hyogo,
            .nara,
            .wakayama,

            // 中国
            .tottori,
            .shimane,
            .okayama,
            .hiroshima,
            .yamaguchi,

            //　四国
            .tokushima,
            .kagawa,
            .ehime,
            .kochi,

            // 九州
            .fukuoka,
            .saga,
            .nagasaki,
            .kumamoto,
            .oita,
            .miyazaki,
            .kagoshima,
            .okinawa,
            ]
        }
    }
}
