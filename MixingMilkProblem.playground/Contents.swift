import UIKit

/*

 To mix the three different milks, he takes three buckets containing milk from the three cows. The buckets may have different sizes, and may not be completely full. He then pours bucket 1 into bucket 2, then bucket 2 into bucket 3, then bucket 3 into bucket 1, then bucket 1 into bucket 2, and so on in a cyclic fashion, for a total of 100 pour operations (so the 100th pour would be from bucket 1 into bucket 2). When Farmer John pours from bucket a into bucket b, he pours as much milk as possible until either bucket a becomes empty or bucket b becomes full.

 Please tell Farmer John how much milk will be in each bucket after he finishes all 100 pours.
 
*/


//Define
var capacity = [10, 11, 12]
var volume = [3, 4, 5]


for i in 0...99{
    var next = (i + 1) % 3
    var current = i % 3
    
    var TransferVolume = min(capacity[next] - volume[next], volume[current])
    volume[next] += TransferVolume
    volume[current] -= TransferVolume
    
}

print(volume)
