//MARK:문제 설명
/*
 문제 설명
1와 0로 채워진 표(board)가 있습니다. 표 1칸은 1 x 1 의 정사각형으로 이루어져 있습니다. 표에서 1로 이루어진 가장 큰 정사각형을 찾아 넓이를 return 하는 solution 함수를 완성해 주세요. (단, 정사각형이란 축에 평행한 정사각형을 말합니다.)

예를 들어

1    2    3    4
0    1    1    1
1    1    1    1
1    1    1    1
0    0    1    0
가 있다면 가장 큰 정사각형은

1    2    3    4
0    1    1    1
1    1    1    1
1    1    1    1
0    0    1    0
가 되며 넓이는 9가 되므로 9를 반환해 주면 됩니다.

제한사항
표(board)는 2차원 배열로 주어집니다.
표(board)의 행(row)의 크기 : 1,000 이하의 자연수
표(board)의 열(column)의 크기 : 1,000 이하의 자연수
표(board)의 값은 1또는 0으로만 이루어져 있습니다.
입출력 예
board    answer
[[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]    9
[[0,0,1,1],[1,1,1,1]]    4
입출력 예 설명
입출력 예 #1
위의 예시와 같습니다.

입출력 예 #2
| 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 |
로 가장 큰 정사각형의 넓이는 4가 되므로 4를 return합니다.
 */

//MARK: 가장 큰 정사각형 찾기
import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var copy = board // 입력으로 주어진 배열
    var answer:Int = 0 // 정답 출력 변수
    let x = copy[0].count // 배열의 열
    let y = copy.count // 배열의 행
    var max = 0 // 가장 큰 정사각형의 한 변의 길이를 담을 변수
    
    if x == 1 && y == 1 { // 길이가 1이라면 copy[0][0] 값 그래도 출력
        max = copy[x - 1][y - 1]
    } else {
        for i in 1..<y {
            for j in 1..<x {
                if copy[i][j] != 0 { //해당하는 배열의 값이 0이 아니라면
                    // 왼쪽, 위쪽, 왼대각선 위쪽 중 최솟값 + 1 값으로 바꿔줌
                    copy[i][j] = min(copy[i - 1][j], copy[i][j - 1], copy[i - 1][j - 1]) + 1
                }
                if copy[i][j] > max {
                    max = copy[i][j]
                }
            }
        }
    }
    answer = max * max
    return answer
}
