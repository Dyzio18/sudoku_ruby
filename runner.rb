#!/usr/bin/env ruby

require_relative 'sudoku'

sb = [
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
mn = [
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
sm = [
	[4,3,2,1],
	[2,1,4,3],
	[1,2,3,4],
	[3,4,1,2]
]


gra = Sudoku.new(sb)

gra.prints
puts gra.solve?

gra.set(0,0,2)

gra.prints
puts gra.solve?




