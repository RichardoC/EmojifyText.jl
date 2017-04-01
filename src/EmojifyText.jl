module EmojifyText
include("EmojiDict.jl")
# include(EmojiDict)

# package code goes here

conversion_dict = conversion_dict
# conversion_dict["\n"] = "\n"

function convert_line(line::String)
  newline = ""
  for char in line
    # println(char)
    if char == '\n'
      continue
    end
    try
      newchar = conversion_dict[string(char)]
      # println(newchar)
      newline = newline * newchar
    catch err
      showerror(STDOUT, err, backtrace());println()
    end
  end
  # println(newline)
  return newline
end

function convert_file(input_file_name::String, output_file_name::String)
  f_in = open(input_file_name,"r")
  f_out = open(output_file_name, "w")
  print(f_out,"")
  close(f_out)
  f_out = open(output_file_name, "a")
  for line in eachline(f_in)
    newline = convert_line(line)
    println(f_out,newline)
    println(newline)
  end
  close(f_in)
  close(f_out)
  print_file(output_file_name)
end

function print_file(file_name::String)
  f_n = open(file_name,"r")
  println("Printing file "*file_name)
  for line in eachline(f_n)
    print(line)
  end
  close(f_n)
end



end # module
