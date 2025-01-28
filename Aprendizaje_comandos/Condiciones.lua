--Condiciones
local valor_user = 12
--Lo que pone es Si valor es mayor o igual a 18
-- Entonces pondra eres mayor de edad sino pues no
if valor_user >= 18 then
    print("Si eres mayor de edad")
else 
    print("No eres mayor de edad")
end

--EJEMPLO2
local numero = 4
local numero2 = 4
if numero < numero2 then
    print("Numero", numero2, "es mayor que ", numero)
elseif numero == numero2 then
    print("Son iguales los numeros", numero2, "y", numero)
else
    print("Numero", numero2, "es menor que", numero)
end