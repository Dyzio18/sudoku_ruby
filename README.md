# sudoku_ruby
Sudoku class in Ruby 

## sudoku.rb
### example:
Create sudoku ( arr[N][N] , default: size = 3 )
```
small_sudoku = [
	[4,3,2,1],
	[2,1,4,3],
	[1,2,3,4],
	[3,4,1,2]
]

normal_sudoku = [
	[nil, 9, 5, 7, 4, 3, 8, 6, 1],
	[4, 3, 1, 8, 6, 5, 9, 2, 7],
	[8, 7, 6, 1, 9, 2, 5, 4, 3],
	[3, 8, 7, 4, 5, 9, 2, 1, 6],
	[6, 1, 2, 3, 8, 7, 4, 9, 5],
	[5, 4, 9, 2, 1, 6, 7, 3, 8],
	[7, 6, 3, 5, 2, 4, 1, 8, 9],
	[9, 2, 8, 6, 7, 1, 3, 5, 4],
	[1, 5, 4, 9, 3, 8, 6, 7, 2]
]

sudoku_1 = Sudoku.new(normal_sudoku)
sudoku_2 = Sudoku.new(small_sudoku, 2)

```
Print board: 
```
sudoku_1.prints
```
output:
```
|   9 5 | 7 4 3 | 8 6 1 |
| 4 3 1 | 8 6 5 | 9 2 7 |
| 8 7 6 | 1 9 2 | 5 4 3 |
-------------------------
| 3 8 7 | 4 5 9 | 2 1 6 |
| 6 1 2 | 3 8 7 | 4 9 5 |
| 5 4 9 | 2 1 6 | 7 3 8 |
-------------------------
| 7 6 3 | 5 2 4 | 1 8 9 |
| 9 2 8 | 6 7 1 | 3 5 4 |
| 1 5 4 | 9 3 8 | 6 7 2 |
-------------------------
```
Set value in board: 
```
sudoku_1.set(0,0,2)
```

Check correct solve: 
```
sudoku_1.solve?
```
output: 
```
puts sudoku_1.solve? #=> false/true
```

## test.rb

#### run 
```
ruby test.rb
```
output:
```
test_solve: correct
test_solve: correct
test_solve: correct
test_solve: correct
test_set: correct
Set error, wrong coordinates!
test_set: correct
Set error, wrong coordinates!
test_set: correct
Print test: 
| 2 9 5 | 7 4 3 | 8 6 1 |
| 4 3 1 | 8 6 5 | 9 2 7 |
| 8 7 6 | 1 9 2 | 5 4 3 |
-------------------------
| 3 8 7 | 4 5 9 | 2 1 6 |
| 6 1 2 | 3 8 7 | 4 9 5 |
| 5 4 9 | 2 1 6 | 7 3 8 |
-------------------------
| 7 6 3 | 5 2 4 | 1 8 9 |
| 9 2 8 | 6 7 1 | 3 5 4 |
| 1 5 4 | 9 3 8 | 6 7 2 |
-------------------------
 
Print test: 
| 4 3 | 2 1 |
| 2 1 | 4 3 |
-------------
| 1 2 | 3 4 |
| 3 4 | 1 2 |
-------------
```

