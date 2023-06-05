#Inicio de ciclo que contiene todo el desafío, agregado para no tener que ejecutar para testear todas las opciones.
while true
  
  print("\n ⚡░▒▓ Bienvenido al cachipún ! ▓▒░⚡\n \n")
  #Selección de jugada y opción de salir
  print(" 1.Piedra \n 2.Tijera \n 3.Papel \n 4.Salir \n")
  print("\n  Elige sabiamente tu jugada: ")
  seleccion = gets.chomp.to_i
  selecciontxt = ""
  if seleccion == 1 then
    selecciontxt = "Piedra"
  elsif seleccion == 2 then
    selecciontxt = "Tijera"
  elsif seleccion == 3 then
    selecciontxt = "Papel"
  elsif seleccion == 4 then
    abort("adiós....")
  else
    puts("debes seleccionar entre las opciones")
  end
  
  puts("Tu selección es: #{selecciontxt} ")
  #Random para la jugada del PC
  pctxt =""
  prng = Random.new
  pc = prng.rand(3).to_int
  
  if pc == 0 then
    pctxt = "Piedra"
  elsif pc == 1 then
    pctxt = "Tijera"
  elsif pc == 2 then
    pctxt = "Papel"
  
  end
  
  puts("El PC seleccionó #{pctxt}")
  #Comparación de jugadas vs PC y impresion por pantalla del ganador.
  if (pctxt == 'Piedra' && selecciontxt == 'Tijera') || (pctxt == 'Tijera' && selecciontxt == 'Papel') || (pctxt == 'Papel' && selecciontxt == 'Piedra') then
    puts("El PC Ganó")
  elsif (selecciontxt == 'Piedra' && pctxt == 'Tijera') || (selecciontxt == 'Tijera' && pctxt == 'Papel') || (selecciontxt == 'Papel' && pctxt == 'Piedra')
    then puts("Ganaste !")
  elsif selecciontxt == pctxt then puts("Empate !") end
  
end