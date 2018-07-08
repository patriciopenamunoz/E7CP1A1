def obtener_promedio(hash)
  hash.values.inject(0) { |sum, n| sum + n }.to_f / hash.length
end

personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]

hash = {}
personas.each_with_index { |value, index| hash[value] = edades[index] }

# Crear un metodo que reciba el hash y devuelva el promedio de las edades
# del hash pasado como argumento.

print obtener_promedio(hash)
