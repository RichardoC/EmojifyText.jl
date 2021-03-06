export conversion_dict

# Julia file to contain the conversion dictionary from latin chars to emoji
conversion_dict = Dict{String,String}()

# Punctuation
conversion_dict["\n"] = "🔚\n"
conversion_dict[" "] = "⬛️"
conversion_dict["!"] = "❗️"
conversion_dict["\""] = "💬"
conversion_dict["#"] = "💷"
conversion_dict["\$"] = "💵"
conversion_dict["%"] = "➿"
conversion_dict["&"] = "🃏"
conversion_dict["'"] = "🗯"
conversion_dict["("] = "↪️"
conversion_dict[")"] = "↩️"
conversion_dict["*"] = "✖️"
conversion_dict["+"] = "➕"
conversion_dict[","] = "🔸"
conversion_dict["-"] = "➖"
conversion_dict["."] = "❌"
conversion_dict["/"] = "➗"
conversion_dict[":"] = "✔️"
conversion_dict[";"] = "☑️"
conversion_dict["<"] = "↗️"
conversion_dict["="] = "💠"
conversion_dict[">"] = "↖️"
conversion_dict["?"] = "❓"
conversion_dict["@"] = "🌐"
conversion_dict["_"] = "🏁"

# Numbers
conversion_dict["0"] = "0️⃣"
conversion_dict["1"] = "1️⃣"
conversion_dict["2"] = "2️⃣"
conversion_dict["3"] = "3️⃣"
conversion_dict["4"] = "4️⃣"
conversion_dict["5"] = "5️⃣"
conversion_dict["6"] = "6️⃣"
conversion_dict["7"] = "7️⃣"
conversion_dict["8"] = "8️⃣"
conversion_dict["9"] = "9️⃣"

# Lower case
conversion_dict["a"] = "👽"
conversion_dict["b"] = "💤"
conversion_dict["c"] = "🤠"
conversion_dict["d"] = "☠️"
conversion_dict["e"] = "😎"
conversion_dict["f"] = "📂"
conversion_dict["g"] = "👻"
conversion_dict["h"] = "🏠"
conversion_dict["i"] = "🏗"
conversion_dict["j"] = "🛩"
conversion_dict["k"] = "🍾"
conversion_dict["l"] = "🐞"
conversion_dict["m"] = "🐭"
conversion_dict["n"] = "🙅‍"
conversion_dict["o"] = "🎱"
conversion_dict["p"] = "🐧"
conversion_dict["q"] = "😤"
conversion_dict["r"] = "👾"
conversion_dict["s"] = "😭"
conversion_dict["t"] = "👔"
conversion_dict["u"] = "👥"
conversion_dict["v"] = "🐸"
conversion_dict["w"] = "🌕"
conversion_dict["x"] = "😵"
conversion_dict["y"] = "🤔"
conversion_dict["z"] = "😈"

# Upper case
conversion_dict["A"] = "👾"
conversion_dict["B"] = "🦇"
conversion_dict["C"] = "💀"
conversion_dict["D"] = "🤒"
conversion_dict["E"] = "😶"
conversion_dict["F"] = "🍞"
conversion_dict["G"] = "🔱"
conversion_dict["H"] = "🚜"
conversion_dict["I"] = "😼"
conversion_dict["J"] = "🐦"
conversion_dict["K"] = "🎫"
conversion_dict["L"] = "🚨"
conversion_dict["M"] = "🚇"
conversion_dict["N"] = "🎧"
conversion_dict["O"] = "🦉"
conversion_dict["P"] = "🐼"
conversion_dict["Q"] = "🤤"
conversion_dict["R"] = "💥"
conversion_dict["S"] = "🦈"
conversion_dict["T"] = "🌳"
conversion_dict["U"] = "🔥"
conversion_dict["V"] = "🍳"
conversion_dict["W"] = "🕸"
conversion_dict["X"] = "🥅"
conversion_dict["Y"] = "😱"
conversion_dict["Z"] = "🐠"

# Back convert emoji to ASCII
dict_conversion = Dict{String,String}()
for (key, value) in conversion_dict
  # println(key)
  # println(value)
  dict_conversion[value] = key
  dict_conversion[value]
  end
# println(dict_conversion)
