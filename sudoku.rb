#!/usr/bin/env ruby

class Sudoku
  
  def initialize( board, size = 3 )
    @board = board
    @size = size
    @size_pow = size*size
  end
     
  # print current board
  def prints( s_arr = @board)
    row_iterator = 0
    sign_count = ((@size*2+1)*@size+@size+1)
    @board.each do |row|
      col_iterator = 0
      row.each do |col|
        if col_iterator%@size == 0 then
          print "| "
        end
        if !col.is_a? Integer then
          print " "
        end
        col_iterator += 1
        print "#{col} "
      end
      row_iterator += 1
      print "|\n"
        if row_iterator%@size == 0 then
          sign_count.times {print "-"}
          print "\n"
        end
    end
    puts " "
  end
  
  # enter value to board with coordinates x,y
  def set( x, y, number )
    correct = (0..@size_pow).to_a
    if ( correct.include? x ) && ( correct.include? y) then
      @board[x][y] = number
    else
      puts "Set error, wrong coordinates!"
    end
  end
  
  def solve?(s_arr = @board)
    #check row
    s_arr.each do |arr|
      return false unless valid_set?(arr)
    end
    #check block
    get_blocks(s_arr).each do |arr|
      return false unless valid_set?(arr)
    end
    #check column 
    s_arr.transpose.each do |arr|
      return false unless valid_set?(arr)
    end
    true
  end
  
private

  # check it has all values
  def valid_contents?(arr)
    arr.each do |e|
      return false unless (1..@size_pow).include?(e)
    end
    return true
  end
  
  # check if arr has no duplicates
  def has_no_duplicates?(arr)
    arr.uniq.size < arr.size ? false : true
  end
  
  def valid_set?(arr)
    valid_contents?(arr) &&  has_no_duplicates?(arr)
  end
 
  # check blocks
  def get_blocks(s_arr)
    blocks = []
    # create N^2 minors
    @size_pow.times do
      blocks.push([])
    end
    minor=0
    row=0
    col=0
    # inserts the appropriate numbers to minors
    @size_pow.times do
      @size.times do
        blocks[minor].push(s_arr[row][col,@size])
        row+=1
      end
      if minor % @size == (@size-1) then
        col+=@size
        row=0
      end 
      blocks[minor] = blocks[minor].flatten!
      minor+=1    
    end
    blocks
  end

end