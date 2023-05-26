//
//  edcb_env_swift.swift
//  EDCBEnv
//
//  Created by petitstrawberry on 2023/05/26.
//

import Foundation

// EDCBから渡される環境変数
public struct EDCBEnv: Codable {
    // https://github.com/xtne6f/EDCB の
    // Readme_EpgTimer.txt のマクロ一覧から自動生成

    public let filePath: String // ファイルのフルパス
    public let folderPath: String // ファイルのフォルダパス（最後に\はなし）
    public let fileName: String // ファイル名（拡張子なし）
    public let title: String // 番組名（予約一覧の番組名に表示されているもの）
    public let title2: String // 番組名（[]の括弧でくくられている部分を削除したもの）
    public let sdYYYY: String // 開始日の年4桁固定
    public let sdYY: String // 開始日の年2桁固定
    public let sdMM: String // 開始日の月2桁固定
    public let sdM: String // 開始日の月
    public let sdDD: String // 開始日の日2桁固定
    public let sdD: String // 開始日の日
    public let sdW: String // 開始日の曜日
    public let stHH: String // 開始時間の時2桁固定
    public let stH: String // 開始時間の時
    public let stMM: String // 開始時間の分2桁固定
    public let stM: String // 開始時間の分
    public let stSS: String // 開始時間の秒2桁固定
    public let stS: String // 開始時間の秒
    public let edYYYY: String // 終了日の年4桁
    public let edYY: String // 終了日の年2桁
    public let edMM: String // 終了日の月2桁固定
    public let edM: String // 終了日の月
    public let edDD: String // 終了日の日2桁固定
    public let edD: String // 終了日の日
    public let edW: String // 終了日の曜日
    public let etHH: String // 終了時間の時2桁固定
    public let etH: String // 終了時間の時
    public let etMM: String // 終了時間の分2桁固定
    public let etM: String // 終了時間の分
    public let etSS: String // 終了時間の秒2桁固定
    public let etS: String // 終了時間の秒
    public let onid10: String // OriginalNetworkID 10進数
    public let tsid10: String // TransportStreamID 10進数
    public let sid10: String // ServiceID 10進数
    public let eid10: String // EventID 10進数
    public let onid16: String // OriginalNetworkID 16進数
    public let tsid16: String // TransportStreamID 16進数
    public let sid16: String // ServiceID 16進数
    public let eid16: String // EventID 16進数
    public let serviceName: String // サービス名（予約一覧の放送局に表示されているもの）
    public let sdYYYY28: String // 28時間表記開始日の年4桁固定
    public let sdYY28: String // 28時間表記開始日の年2桁固定
    public let sdMM28: String // 28時間表記開始日の月2桁固定
    public let sdM28: String // 28時間表記開始日の月
    public let sdDD28: String // 28時間表記開始日の日2桁固定
    public let sdD28: String // 28時間表記開始日の日
    public let sdW28: String // 28時間表記開始日の曜日
    public let stHH28: String // 28時間表記開始時間の時2桁固定
    public let stH28: String // 28時間表記開始時間の時
    public let edYYYY28: String // 28時間表記終了日の年4桁
    public let edYY28: String // 28時間表記終了日の年2桁
    public let edMM28: String // 28時間表記終了日の月2桁固定
    public let edM28: String // 28時間表記終了日の月
    public let edDD28: String // 28時間表記終了日の日2桁固定
    public let edD28: String // 28時間表記終了日の日
    public let edW28: String // 28時間表記終了日の曜日
    public let etHH28: String // 28時間表記終了時間の時2桁固定
    public let etH28: String // 28時間表記終了時間の時
    public let duHH: String // 番組総時間の時2桁固定（ファイル名：録画開始時の番組総時間、Bat：録画終了時の番組総時間）
    public let duH: String // 番組総時間の時（ファイル名：録画開始時の番組総時間、Bat：録画終了時の番組総時間）
    public let duMM: String // 番組総時間の分2桁固定（ファイル名：録画開始時の番組総時間、Bat：録画終了時の番組総時間）
    public let duM: String // 番組総時間の分（ファイル名：録画開始時の番組総時間、Bat：録画終了時の番組総時間）
    public let duSS: String // 番組総時間の秒2桁固定（ファイル名：録画開始時の番組総時間、Bat：録画終了時の番組総時間）
    public let duS: String // 番組総時間の秒（ファイル名：録画開始時の番組総時間、Bat：録画終了時の番組総時間)
    public let drops: String // 録画結果のドロップ数
    public let scrambles: String // 録画結果のスクランブル数
    public let result: String // 録画結果
    public let titleF: String // $Title$と同内容でファイル名に使用できない記号が存在した場合全角に変換するもの
    public let title2F: String // $Title2$と同内容でファイル名に使用できない記号が存在した場合全角に変換するもの
    public let addKey: String // EPG自動予約で登録されたキーワード

    // Readme_Mod.txt から

    // 正直よくわからない

    public let batFileTag: String // batファイルのタグ (何これ)

    // PostRecEnd のみ

    public let recInfoID: String // 録画結果のID

    // PostRecEnd 以外

    public let reserveID: String // 予約ID
    public let recMode: String // 録画モード (録画モード0=全サービス～4=視聴)
    public let reserveComment: String // 予約コメント

    // PostNotifyのみ

    // 通知ID (1=EPGデータ更新, 2=予約情報更新, 3=録画結果情報更新)
    // _EDCBX_NOTIFY_INTERVAL_指定での通知は ID=0
    public let notifyID: String

    public init() {
        let environment = ProcessInfo.processInfo.environment
        self.init(environment: environment)
    }

    internal init(environment: [String: String]) {
        filePath = environment["FilePath"] ?? ""
        folderPath = environment["FolderPath"] ?? ""
        fileName = environment["FileName"] ?? ""
        title = environment["Title"] ?? ""
        title2 = environment["Title2"] ?? ""
        sdYYYY = environment["SDYYYY"] ?? ""
        sdYY = environment["SDYY"] ?? ""
        sdMM = environment["SDMM"] ?? ""
        sdM = environment["SDM"] ?? ""
        sdDD = environment["SDDD"] ?? ""
        sdD = environment["SDD"] ?? ""
        sdW = environment["SDW"] ?? ""
        stHH = environment["STHH"] ?? ""
        stH = environment["STH"] ?? ""
        stMM = environment["STMM"] ?? ""
        stM = environment["STM"] ?? ""
        stSS = environment["STSS"] ?? ""
        stS = environment["STS"] ?? ""
        edYYYY = environment["EDYYYY"] ?? ""
        edYY = environment["EDYY"] ?? ""
        edMM = environment["EDMM"] ?? ""
        edM = environment["EDM"] ?? ""
        edDD = environment["EDDD"] ?? ""
        edD = environment["EDD"] ?? ""
        edW = environment["EDW"] ?? ""
        etHH = environment["ETHH"] ?? ""
        etH = environment["ETH"] ?? ""
        etMM = environment["ETMM"] ?? ""
        etM = environment["ETM"] ?? ""
        etSS = environment["ETSS"] ?? ""
        etS = environment["ETS"] ?? ""
        onid10 = environment["ONID10"] ?? ""
        tsid10 = environment["TSID10"] ?? ""
        sid10 = environment["SID10"] ?? ""
        eid10 = environment["EID10"] ?? ""
        onid16 = environment["ONID16"] ?? ""
        tsid16 = environment["TSID16"] ?? ""
        sid16 = environment["SID16"] ?? ""
        eid16 = environment["EID16"] ?? ""
        serviceName = environment["ServiceName"] ?? ""
        sdYYYY28 = environment["SDYYYY28"] ?? ""
        sdYY28 = environment["SDYY28"] ?? ""
        sdMM28 = environment["SDMM28"] ?? ""
        sdM28 = environment["SDM28"] ?? ""
        sdDD28 = environment["SDDD28"] ?? ""
        sdD28 = environment["SDD28"] ?? ""
        sdW28 = environment["SDW28"] ?? ""
        stHH28 = environment["STHH28"] ?? ""
        stH28 = environment["STH28"] ?? ""
        edYYYY28 = environment["EDYYYY28"] ?? ""
        edYY28 = environment["EDYY28"] ?? ""
        edMM28 = environment["EDMM28"] ?? ""
        edM28 = environment["EDM28"] ?? ""
        edDD28 = environment["EDDD28"] ?? ""
        edD28 = environment["EDD28"] ?? ""
        edW28 = environment["EDW28"] ?? ""
        etHH28 = environment["ETHH28"] ?? ""
        etH28 = environment["ETH28"] ?? ""
        duHH = environment["DUHH"] ?? ""
        duH = environment["DUH"] ?? ""
        duMM = environment["DUMM"] ?? ""
        duM = environment["DUM"] ?? ""
        duSS = environment["DUSS"] ?? ""
        duS = environment["DUS"] ?? ""
        drops = environment["Drops"] ?? ""
        scrambles = environment["Scrambles"] ?? ""
        result = environment["Result"] ?? ""
        titleF = environment["TitleF"] ?? ""
        title2F = environment["Title2F"] ?? ""
        addKey = environment["AddKey"] ?? ""

        batFileTag = environment["BatFipublic leTag"] ?? ""
        recInfoID = environment["RecInfoID"] ?? ""
        reserveID = environment["ReserveID"] ?? ""
        recMode = environment["RecMode"] ?? ""
        reserveComment = environment["ReserveComment"] ?? ""
        notifyID = environment["NotifyID"] ?? ""
    }
}
