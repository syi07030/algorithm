import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {

    var answer = [Int]()

    for arr in commands {
        var i = arr[0] - 1
        var j = arr[1] - 1
        var k = arr[2] - 1
        print(i,j,k)

        var newarr = [Int]()

        for ii in i...j {
            newarr.append(array[ii])
        }

        newarr.sort()
        answer.append(newarr[k])

    }

    return answer
}

//map 사용!

//2022.3.22
import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer = [Int]()
    for i in commands{
        var newArr = Array(array[(i[0]-1)...(i[1]-1)])
        newArr.sort()
        answer += [newArr[i[2]-1]]
    }
    return answer
}