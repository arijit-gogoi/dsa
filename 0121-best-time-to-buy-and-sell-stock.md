---
title: 0121 Best Time To Buy And Sell Stock
link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
tags: array dynamic programming
---

```go
func maxProfit(prices []int) int {
    minPrice := prices[0]
    profit := 0
	for _, price := range prices {
        if minPrice < price {
            minPrice = price
        }
        if price - minPrice > price {
            profit = price - minPrice
        }
    }
    return profit
}
```

```python
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        min_price = prices[0]
        profit = 0
        for price in prices:
            if price < min_price:
                min_price = price
            if price - min_price > profit:
                profit = price - min_price
        return profit
```

```C++
class Solution: {
public:
	int maxProfit(vector<int>& prices) {
		int minPrice = prices[0];
		int profit = 0;
		for (auto price: prices) {
			if (price < minPrice) {
				min = price;
			}
			if (price - minPrice > profit) {
				profit = price - minPrice;
			}
		}
		return profit;
	}
}
```

```rust
impl Solution {
	pub fn max_profit(prices: Vec<i32>) {
		let mut min_price = prices[0];
		let mut profit = 0;
		for (_, &price) in prices.iter().enumerate() {
			if price < min_price {
				min_price = price;
			} else if price - min_price > profit {
				profit = price - min_price;
			}
		}
		profit
	}
}
```
