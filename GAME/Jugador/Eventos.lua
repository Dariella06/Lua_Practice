--EVENTOS
--Touched: Detecta cuando un objeto (una "Part") es tocado por otro objeto (como un personaje).
--.Connect: Es el método que usas para "conectar" un evento a una función.
--function(hit): Cuando un evento como Touched se dispara, puede proporcionar información adicional como qué objeto causó el evento.
local part = script.Parent -- Obtenemos la parte (objeto físico) donde está el script

part.Touched:Connect(function(hit) -- Conectamos el evento 'Touched' a una función
    print(hit.Name .. " tocó la parte.") -- Mostramos el nombre del objeto que tocó la parte
end)


--ChildAdded
--Se dispara cuando un objeto es agregado como hijo de otro.
local folder = script.Parent -- Una carpeta u objeto que queremos monitorizar

folder.ChildAdded:Connect(function(child)
    print(child.Name .. " fue agregado a " .. folder.Name)
end)


