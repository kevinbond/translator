say "Press 1 for English"
language = ask "Pulse dos para españos", {
  :choices => "[1 DIGITS]",
  :voice => "carmen",
  :timeout => 10.0
}
exit = true 
playIntro = false
while exit
  init = init + 1
  if language.value == '1'
    if playIntro
      say "Welcome to English to Spanish translations!"
      playIntro = false
    end
    translation = ask "For translations: press 1 for hello, press two for goodbye, press 3 for She was dead when I got here, 0 to exit", {
      :choices => "[1 DIGITS]",
      :timeout => 60.0
    }
    if translation.value == '1'
      say "¡hola!", {:voice => "carmen"}
    elsif translation.value == '2'
      say "despedida", {:voice => "carmen"}
    elsif translation.value == '3'
      say "Ella estaba muerta cuando llegué aquí", {:voice => "carmen"}
    else
      say"Thank you for using English to Spanish translation! Goodbye"
      exit = false
    end
    
     
  elsif language == 2
    if playIntro
      say "Bienvenido a Traducciones de español a Inglés!", {:voice => "carmen"}
      playIntro = false
    end
    translation = ask "Para las traducciones: pulse 1 para saludar, pulse dos para despedirse, pulse 3 para Ella estaba muerta cuando llegué aquí, cero para salir", {
      :choices => "[1 DIGITS]",
      :voice => "carmen",
      :timeout => 60.0
    }
    if translation.value  == '1'
      say "Hello"
    elsif translation.value == '2'
      say "Goodbye"
    elsif translation.value == '3'
      say "She was dead when I got here"
    else 
      say "Gracias por usar el español con traducción en Inglés! Adiós"
      exit = false
    end
  else
    say "I'm sorry but that is not a valid entry"
    say "Press 1 for English"
    language = ask "Pulse dos para españos", {
      :choices => "[1 DIGITS]",
      :voice => "carmen",
      :timeout => 10.0
    }
  end
end
  
