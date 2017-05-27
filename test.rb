#!/usr/bin/env ruby

require_relative 'sudoku'

def test_solve(arr, expected_value, size = 3)
	sudoku = Sudoku.new(arr, size)
	if expected_value == sudoku.solve?
		puts "test_solve: correct"
		return true	
	else
		puts "test_solve: error"	
	end
	false
end

def test_set(arr, x, y, value, expected_value, size = 3)
	sudoku = Sudoku.new(arr,size)
	if expected_value == sudoku.set(x,y, value)
		puts "test_set: correct"
		return true	
	else
		puts "test_set: error"	
	end
	false
end

def test_print(arr, size = 3)
	sudoku = Sudoku.new(arr, size)
	puts "Print test: "
	sudoku.prints
end

wrong_sudoku = [
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

correct_sudoku = [
	[2, 9, 5, 7, 4, 3, 8, 6, 1],
	[4, 3, 1, 8, 6, 5, 9, 2, 7],
	[8, 7, 6, 1, 9, 2, 5, 4, 3],
	[3, 8, 7, 4, 5, 9, 2, 1, 6],
	[6, 1, 2, 3, 8, 7, 4, 9, 5],
	[5, 4, 9, 2, 1, 6, 7, 3, 8],
	[7, 6, 3, 5, 2, 4, 1, 8, 9],
	[9, 2, 8, 6, 7, 1, 3, 5, 4],
	[1, 5, 4, 9, 3, 8, 6, 7, 2]
]

wrong_sudoku_2 = [
	[1,2,3,4,5,6,7,8,9],
	[2,3,4,5,6,7,8,9,1],
	[3,4,5,6,7,8,9,1,2],
	[4,5,6,7,8,9,1,2,3],
	[5,6,7,8,9,1,2,3,4],
	[6,7,8,9,1,2,3,4,5],
	[7,8,9,1,2,3,4,5,6],
	[8,9,1,2,3,4,5,6,7],
	[9,1,2,3,4,5,6,7,8]
]

small_wrong_sudoku = [
	[3,3,2,1],
	[2,1,4,3],
	[1,2,3,4],
	[3,4,1,2]
]

small_sudoku = [
	[4,3,2,1],
	[2,1,4,3],
	[1,2,3,4],
	[3,4,1,2]
]

test_solve(wrong_sudoku,false)
test_solve(correct_sudoku,true)
test_solve(small_sudoku, true, 2)
test_solve(small_wrong_sudoku, false, 2)

test_set(wrong_sudoku,0,0,2,true)
test_set(wrong_sudoku,0,10,2,false)
test_set(small_sudoku,4,4,2,false, 2)

test_print(wrong_sudoku)
test_print(small_sudoku, 2)

