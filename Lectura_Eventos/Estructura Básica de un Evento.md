## La sintaxis básica para un evento en Roblox es:
objeto.Evento:Connect(function(parámetros)
    -- código a ejecutar cuando ocurra el evento
end)

# Eventos Comunes en Roblox
### 1. Touched
¿Qué hace?: Se activa cuando algo entra en contacto con una parte (objeto) en el mundo del juego.
¿Cuándo usarlo?: Cuando quieras que algo suceda cuando un jugador o un objeto toque una parte (por ejemplo, para hacer daño o abrir una puerta).
**Ejemplo:**
``local parte = script.Parent

parte.Touched:Connect(function(hit)
    -- Imprimir el nombre del objeto que tocó la parte
    print(hit.Name .. " tocó la parte")
end)``

### 2. PlayerAdded
¿Qué hace?: Se activa cuando un jugador entra al juego.
¿Cuándo usarlo?: Si necesitas configurar algo para un jugador cuando se conecta (como darle puntos iniciales, ponerlo en un equipo, mostrarle un mensaje, etc.).
**Ejemplo:**
game.Players.PlayerAdded:Connect(function(jugador)
    print(jugador.Name .. " ha entrado al juego.")
end)

### 3. PlayerRemoving
¿Qué hace?: Se activa cuando un jugador sale del juego.
¿Cuándo usarlo?: Puedes usarlo para guardar datos de un jugador, como su puntuación, cuando se desconecta.
**Ejemplo:**
game.Players.PlayerRemoving:Connect(function(jugador)
    print(jugador.Name .. " ha salido del juego.")
    -- Aquí podrías guardar sus datos
end) 

### 4. Heartbeat
¿Qué hace?: Este evento se activa cada vez que se actualiza la física en el juego (es decir, en cada frame).
¿Cuándo usarlo?: Es útil cuando necesitas ejecutar un código de forma continua, como para animaciones o mover un objeto constantemente.
**Ejemplo:**
game:GetService("RunService").Heartbeat:Connect(function()
    print("Un frame ha pasado.")
end)

### 5. MouseButton1Click (Botón del Ratón)
¿Qué hace?: Se activa cuando el jugador hace clic con el botón izquierdo del ratón sobre un objeto que tiene un TextButton, ImageButton o cualquier otro objeto interactivo.
¿Cuándo usarlo?: Perfecto para botones de interfaces o para detectar clics en botones dentro de la UI.
**Ejemplo:**
local boton = script.Parent

boton.MouseButton1Click:Connect(function()
    print("¡El botón fue clickeado!")
end)

### 6. Touched (Part)
¿Qué hace?: Similar a Touched, pero más específico para detectar interacciones con un objeto físico en el mundo 3D del juego (por ejemplo, un bloque, una esfera, etc.).
¿Cuándo usarlo?: Cuando un jugador o un objeto entra en contacto con una parte y necesitas realizar una acción, como activar un mecanismo o hacer daño.
**Ejemplo:**
local parte = game.Workspace.Part

parte.Touched:Connect(function(hit)
    if hit:IsA("Player") then
        print("El jugador tocó la parte")
    end
end)

### 7. Changed
¿Qué hace?: Este evento se activa cuando una propiedad de un objeto cambia.
¿Cuándo usarlo?: Útil para detectar cambios en las propiedades de objetos (como cambios en la posición, color, transparencia, etc.).
**Ejemplo:**
local parte = game.Workspace.Part

parte.Changed:Connect(function()
    print(parte.Name .. " ha cambiado alguna propiedad.")
end)

### 8. Heartbeat (RunService)
¿Qué hace?: Se activa en cada frame del juego, lo que lo convierte en un evento perfecto para tareas continuas como mover objetos o realizar animaciones.
¿Cuándo usarlo?: Cuando necesitas hacer algo constantemente en cada frame (animaciones, mover objetos, etc.).
**Ejemplo:**
game:GetService("RunService").Heartbeat:Connect(function()
    -- Mover una parte suavemente hacia adelante en cada frame
    game.Workspace.Part.Position = game.Workspace.Part.Position + Vector3.new(0, 0, 1)
end)

## Resumen de Eventos Importantes
**Touched**: Se activa cuando un objeto entra en contacto con otro.
**PlayerAdded**: Se activa cuando un jugador entra al juego.
**PlayerRemoving**: Se activa cuando un jugador deja el juego.
**Heartbeat**: Se activa en cada frame de actualización del juego.
**MouseButton1Click**: Se activa cuando un jugador hace clic con el botón izquierdo del ratón en un botón de la UI.
**Changed**: Se activa cuando se cambia cualquier propiedad de un objeto.
**InputBegan**: Detecta la entrada de un jugador, como el presionar una tecla o hacer clic.

# Cómo Conectar un Evento a una Función
Para responder a un evento, debes usar Connect(). Esto conecta el evento con una función que se ejecutará cuando el evento ocurra. 
**Ejemplo:**
part.Touched:Connect(function(hit)
    -- Esto se ejecutará cuando 'part' sea tocado por otro objeto
    print("¡La parte fue tocada!")
end)


