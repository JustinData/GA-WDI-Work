require 'benchmark'

class PascalTriangle
  def initialize
    @digits = []
  end

  def calculate_row(row)
    row = row.to_f
    0.upto(row) { |column| @digits << calculate_number(row, column).to_i }
    @digits
  end

  def calculate_number(row, column)
    r = row + 1
    if column == 0
      1
    else
      previous = calculate_number(row, column-1)
      previous * ((r - column) / column)
    end
  end
end


rows = 20
while rows <= 200
  puts "ROW #{rows}"

  Benchmark.bm(10) do |benchmark|
    benchmark.report("simple") do
      # create triangle-row data structure
      triangle = []

      # initiate triangle
      if rows >= 1
        triangle.push([1])
      end
      if rows >= 2
        triangle.push([1, 1])
      end

      # set last row
      last_row = [1, 1]

      # iterate over rows
      count = 3
      while count <= rows
        next_row = [1]

        # build the next row based on the last
        index = 0
        while index < last_row.length - 1
          next_row.push last_row[index]+last_row[index + 1]
          index = index + 1
        end
        next_row.push(1)

        # add that row to the triangle
        triangle.push(next_row)
        last_row = next_row
        count = count + 1
      end
    end

    benchmark.report("recursive") do
      pc = PascalTriangle.new
      digits = pc.calculate_row(rows)
    end
  end

  rows += 50
end