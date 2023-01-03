import Foundation

/*
 The first line of the input file contains an integer N giving the number of swaps (1≤N≤100). Each of the next N lines describes a step of the game and contains three integers a, b, and g, indicating that shells a and b were swapped by Bessie, and then Elsie guessed shell g after the swap was made. All three of these integers are either 1, 2, or 3, and a≠b.
 
*/


//Define
var swaps = [[1,2,1], [3,2,1], [1,3,1]]

func move(current_position: Int, swaps: [[Int]]) -> Int{
    var i = 0
    var current_position = current_position
    var score = 0
    
    while i <= swaps.count - 1{
        if current_position == swaps[i][0] || (current_position == swaps[i][1]){
            if current_position == swaps[i][0]{
                current_position = swaps[i][1]
                
            }
            
            else {
                current_position = swaps[i][0]
                
            }
            
        }
        
        if current_position == swaps[i][2]{
            score += 1
            
        }
        
        
        i += 1
        
    }
    
    return score
    
}


print(max(move(current_position: 1, swaps: swaps), move(current_position: 2, swaps: swaps), move(current_position: 3, swaps: swaps)))
