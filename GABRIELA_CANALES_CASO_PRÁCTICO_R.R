time_convert <- function(){
  tryCatch({
  segundos <- readline(prompt="Ingrese la cantidad de segundos a convertir: ")
  segundos <- as.numeric(segundos)
  unidad <- readline(prompt="Presione:\n1.Segundos - Horas\n2.Segundos - Minutos\n3.Segundos - Días\n")
  unidad <- as.character(unidad)
  
  if((segundos < 0) == TRUE){
    print("VALOR NÚMERICO NEGATIVO INTRODUCIDO")
    stop()
  }
  if(unidad == "1"){
    a <- as.character(round((segundos/3600),2))
    print(paste0(segundos," segundos equivalen a ",a," horas"))
  }
  else if(unidad == "2"){
    a <- as.character(round((segundos/60),2))
    print(paste0(segundos, " segundos equivalen a ",a, " minutos"))
  }
  else if(unidad == "3"){
    a <- as.character(round(segundos/(3600*24),2))
    print(paste0(segundos, " segundos equivalen a ",a," días"))
  }
  else{
    print("Opción no válida")
  time_convert()}
  
  },error = function(e){
  print("ERROR")
  time_convert()
  })
  }

### usuario
time_convert()









