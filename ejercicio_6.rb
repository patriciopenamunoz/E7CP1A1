restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }

# Obtener el plato mas caro.
puts restaurant_menu.key(restaurant_menu.values.max)

# Obtener el plato mas barato.
puts restaurant_menu.key(restaurant_menu.values.min)

# Sacar el promedio del valor de los platos.
puts restaurant_menu.values.sum.to_f / restaurant_menu.length

# Crear un arreglo con solo los nombres de los platos.
restaurant_nom = restaurant_menu.keys
print "#{restaurant_nom}\n"

# Crear un arreglo con solo los valores de los platos.
restaurant_val = restaurant_menu.values
print "#{restaurant_val}\n"

# Modificar el hash y agregar el IVA a los valores de los platos
# (multiplicar por 1.19).
restaurant_menu = restaurant_menu.map { |key, val| [key, (val * 1.19)] }.to_h
print "#{restaurant_menu}\n"

# Dar descuento del 20% para los platos que tengan un nombre de
# mas 1 una palabra.
restaurant_menu = restaurant_menu.map do |key, val|
  [key, (key.split(' ').length > 1 ? (val * 0.8) : val)]
end.to_h
print restaurant_menu
