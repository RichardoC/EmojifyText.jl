module EmojifyText
include("EmojiDict.jl")

# package code goes here

conversion_dict = conversion_dict

function convert_line(line::String)
  newline = "";
  for char in line
    newchar = get(conversion_dict, string(char), "🚓");
    newline = newline * newchar;
  end
  return newline;
end

function unconvert_line(line::String)
  newline = "";
  for char in line
    newchar = get(dict_conversion, string(char), "🚓");
    newline = newline * newchar;
  end
  return newline;
end

function convert_file(input_file_name::String, output_file_name::String)
  f_in = open(input_file_name,"r")
  f_out = open(output_file_name, "w")
  #Deleting the file if it exists
  print(f_out,"")
  close(f_out)
  f_out = open(output_file_name, "a")
  for line in eachline(f_in)
    newline = convert_line(line);
    print(f_out,newline);
  end
  close(f_in)
  close(f_out)
  print_file(output_file_name)
end

function unconvert_file(input_file_name::String, output_file_name::String)
  f_in = open(input_file_name,"r")
  f_out = open(output_file_name, "w")
  #Deleting the file if it exists
  print(f_out,"")
  close(f_out)
  f_out = open(output_file_name, "a")
  for line in eachline(f_in)
    newline = unconvert_line(line);
    print(f_out,newline);
  end
  close(f_in)
  close(f_out)
  print_file(output_file_name)
end

function print_file(file_name::String)
  f_n = open(file_name,"r")
  println("Printing file "*file_name)
  println("-----------------------------------------")
  for line in eachline(f_n)
    print(line)
  end
  close(f_n)
end



end # module
