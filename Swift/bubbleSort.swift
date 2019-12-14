let unsortedIntegers = [5, 1, 4, 2, 8, 100]                                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                                            
class Sort {                                                                                                                                                                                                
    var sortedIntegers : [Int] = unsortedIntegers                                                                                                                                                           
                                                                                                                                                                                                            
    func swap(Arr : inout [Int], xCoord : Int, yCoord : Int) {                                                                                                                                              
        let originalX = Arr[xCoord]                                                                                                                                                                         
        Arr[xCoord] = Arr[yCoord]                                                                                                                                                                           
        Arr[yCoord] = originalX                                                                                                                                                                             
    }                                                                                                                                                                                                       
                                                                                                                                                                                                            
    /* Bubblesort implementation */                                                                                                                                                                         
    func bubbleSort(Arr: [Int]) {                                                                                                                                                                           
        var pass = 0                                                                                                                                                                                        
        var swaps = 0                                                                                                                                                                                       
        var totalSwaps = 0                                                                                                                                                                                  
                                                                                                                                                                                                            
        print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(sortedIntegers)")                                                                                                                     
                                                                                                                                                                                                            
        repeat {                                                                                                                                                                                            
            /* Reset swaps and increment pass in order to prepare for upcoming pass */                                                                                                                      
            swaps = 0                                                                                                                                                                                       
            pass += 1                                                                                                                                                                                       
            for index in 0 ..< sortedIntegers.count - 1 {                                                                                                                                                   
                if(sortedIntegers[index] > sortedIntegers[index + 1]) {                                                                                                                                     
                    swap(Arr : &sortedIntegers, xCoord : index, yCoord : index + 1)                                                                                                                         
                    swaps += 1                                                                                                                                                                              
                    totalSwaps += 1                                                                                                                                                                         
                }                                                                                                                                                                                           
            }                                                                                                                                                                                               
            print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(sortedIntegers)")                                                                                                                 
        } while (swaps != 0)                                                                                                                                                                                
    }                                                                                                                                                                                                       
}                                                                                                                                                                                                           
                                                                                                                                                                                                            
/* Instantiate sort class */                                                                                                                                                                                
var sort = Sort()                                                                                                                                                                                           
                                                                                                                                                                                                            
/* Invoke bubbleSort method */                                                                                                                                                                              
sort.bubbleSort(Arr: sort.sortedIntegers)                                                                                                                                                                   
                                                