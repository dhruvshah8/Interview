/** 
Buy and Sell Stock 

https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

Notes:
 - iterate through and change price if profit increases 

**/ 


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        
        guard prices.count > 1 else {
            return 0
        }
        
        
        var buyPrice = prices[0] 
        var profit = 0
        
        for price in prices {
            
            if (price < buyPrice) {
                buyPrice = price
            } else if ((price - buyPrice) > profit) {
                profit = price - buyPrice
            }
        }
        
        
        return profit    

    }  
}   
