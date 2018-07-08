personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]

hash = {}
personas.each_with_index { |value, index| hash[value] = edades[index] }

print hash
