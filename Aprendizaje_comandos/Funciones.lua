--Funciones
function saludar(nombre)
    print("Hola, " .. nombre)  -- Concatenación de texto
end

saludar("Juan")  -- Llama a la función y pasa el argumento "Juan"

--Funcion de returns
function suma(a, b)
    return a + b
end

local resultado = suma(3, 4)  -- Devuelve 7
