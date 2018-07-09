inventario = {
  'Notebooks' => 4,
  'PC Escritorio' => 6,
  'Routers' => 10,
  'Impresoras' => 6
}

opcion = 0
salir = false
# Crear un menu de 4 opciones, es decir, el usuario puede
# ingresar 1 2 3 o 4 y segun eso el programa realizara distintas funciones.
until salir
  puts 'Ingrese una de las siguientes opciones:
  1 Agregar nuevo item.
  2 Eliminar item.
  3 Actualizar item.
  4 Total de stock de cada item.
  5 Consultar por item con mayor stock.
  6 Consultar si item existe.
  7 SALIR'
  opcion = gets.chomp.to_i

  if opcion == 1
    # Si el usuario ingresa 1, podra agregar un item y su stock en
    # un solo string y agregarlo al hash. Para separar el nombre del
    # stock el usuario debe utilizar una coma.
    ## Ejemplo del input: "Pendrives, 100"
    puts 'Ingrese el nuevo producto con el siguiente formato: Pendrives, 100'
    respuesta = gets.chomp.split(',')
    inventario[respuesta[0]] = respuesta[1].to_i
  elsif opcion == 2
    # Si el usuario ingresa 2, podra eliminar un item.
    puts 'Escriba el producto que desee eliminar:'
    inventario.delete(gets.chomp)
  elsif opcion == 3
    # Si el usuario ingresa 3, puede actualizar la informacian
    # almacenada (item y stock).
    puts 'Seleccione el producto al cual desea cambiar su valor:'
    producto = gets.chomp
    puts 'Ingrese el nuevo valor:'
    inventario[producto] = gets.chomp.to_i
  elsif opcion == 4
    # Si el usuario ingresa 4, podra ver el stock total
    # (suma del stock de cada item) que hay en el negocio.
    puts 'Total de stock:'
    inventario.each { |key, val| puts "* #{key}: #{val}" }
  elsif opcion == 5
    # Si el usuario ingresa 5, podra ver el item que tiene la mayor
    # cantidad de stock.
    puts "El item con mayor stock es #{inventario.key(inventario.values.max)}."
  elsif opcion == 6
    # Si el usuario ingresa 6 podra ingresar y preguntarle al sistema si
    # un item existe en el inventario o no. Por ejemplo, el usuario
    # ingresara "Notebooks" y el programa respondera "Si".
    puts 'Ingrese el producto que quiere comprobar que existe:'
    puts inventario.key?(gets.chomp) ? 'Si' : 'No'
  elsif opcion == 7
    salir = true
  else
    # El programa debe repertirse hasta que el usuario ingrese 7 (salir).
    puts 'ERROR: La opcion ingresada es invalida.'
  end

end
