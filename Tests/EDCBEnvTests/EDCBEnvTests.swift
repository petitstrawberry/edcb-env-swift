@testable import EDCBEnv
import Foundation
import XCTest

class EDCBEnvTests: XCTestCase {
    func testInit() {
        // テストデータの作成
        let environment: [String: String] = [
            "FilePath": "/path/to/file",
            "FolderPath": "/path/to/folder",
            "FileName": "example",
            "Title": "なんじゃ！これすこヤバみんGO..",
            // 他の環境変数も適切に設定する
        ]

        // テスト対象の初期化
        let edcbEnv = EDCBEnv(environment: environment)

        // プロパティの値をテスト
        XCTAssertEqual(edcbEnv.filePath, "/path/to/file")
        XCTAssertEqual(edcbEnv.folderPath, "/path/to/folder")
        XCTAssertEqual(edcbEnv.fileName, "example")
        XCTAssertEqual(edcbEnv.title, "なんじゃ！これすこヤバみんGO..")
        // 他のプロパティの値も適切にテストする
    }
}
