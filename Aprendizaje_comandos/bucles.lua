--Bucle de for
for i = 1, 10 do
    print(i) -- Imprime números del 1 al 10
end

--bucle de while
--Es un bucle infinito
local contador = 1

while contador <= 10 do
    print(contador)
    contador = contador + 1  -- Incrementa el contador en 1
end

--Es como un while pero la condicion se evalúa
--Es como un do while
local contador = 1
repeat
    print(contador)
    contador = contador + 1
until contador > 5
