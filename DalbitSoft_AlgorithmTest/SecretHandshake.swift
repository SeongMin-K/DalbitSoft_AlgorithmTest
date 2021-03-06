//
//  SecretHandshake.swift
//  DalbitSoft_AlgorithmTest
//
//  Created by SeongMinK on 2021/10/11.
//

// 3. 눈빛 교환

// 우리는 이진수를 아는 개발자 들이니까 개발자끼리 약속을 정해 비밀 소통 해봐요.

// 아래와 같이 규칙을 정했습니다.

// 1 = wink
// 10 = double blink
// 100 = close your eyes
// 1000 = jump
// 10000 = Reverse the order of the operations in the secret handshake.

// 만약 3이 주어지면 ["wink", "double blink"] 를 반환합니다.
// 16을 더하면 배열을 반전시킵니다.
// 그래서 19가 주어지면 [ "double blink", "wink"] 를 반환합니다.

struct SecretHandshake {
    let num: Int
    
    var commands: [String] {
        var result: [String] = []
        
        // ex) 11 -> 00011로 변환하는 과정
        let str = "00000" + String(num, radix: 2)
        let startIdx: String.Index = str.index(str.endIndex, offsetBy: -5)
        let binary = String(str[startIdx...])
        
        var count = 0
        var reverse = true
        
        // * 기본적으로 배열 순서가 반대 *
        for s in binary {
            if s == "1" {
                // 1xxxx 이면 그대로
                if count == 0 {
                    reverse = false
                }
                // x1xxx 이면 jump 추가
                else if count == 1 {
                    result.append("jump")
                }
                // xx1xx 이면 close your eyes 추가
                else if count == 2 {
                    result.append("close your eyes")
                }
                // xxx1x 이면 double blink 추가
                else if count == 3 {
                    result.append("double blink")
                }
                // xxxx1 이면 wink 추가
                else if count == 4 {
                    result.append("wink")
                }
            }
            // 다음 비트로
            count += 1
        }
        // 1xxxx 아니면 반대로
        if reverse == true {
            result = result.reversed()
            print("reverse: \(num)")
        }
        
        return result
    }
}
