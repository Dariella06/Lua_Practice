--EVENTOS
--Workspace (game.Workspace)
--Descripción: Contiene todos los objetos visibles y físicos del juego.

--FindFirstChild(name: string): Busca el primer objeto hijo con un nombre específico.
local objeto = game.Workspace:FindFirstChild("Pared")

--WaitForChild(name: string, timeout?: number): Espera a que un objeto específico aparezca en la jerarquía.
local objeto = game.Workspace:WaitForChild("Puerta")

--GetChildren(): Devuelve una tabla con todos los objetos hijos.
local objetos = game.Workspace:GetChildren()
for _, objeto in pairs(objetos) do
    print(objeto.Name)
end

--ChildAdded: Se activa cuando un nuevo hijo es agregado al Workspace
game.Workspace.ChildAdded:Connect(function(child)
    print(child.Name .. " fue añadido al Workspace")
end)


--Players (game.Players)
--Descripción: Maneja a los jugadores que ingresan al juego.

--GetPlayers(): Devuelve una lista de todos los jugadores conectados.
local jugadores = game.Players:GetPlayers()

--GetPlayerFromCharacter(character: Model): Obtiene el jugador a partir de su modelo en el juego
local jugador = game.Players:GetPlayerFromCharacter(modelo)

--PlayerAdded: Se activa cuando un jugador entra al juego.
game.Players.PlayerAdded:Connect(function(jugador)
    print(jugador.Name .. " ha ingresado")
end)

--PlayerRemoving: Se activa cuando un jugador se desconecta
game.Players.PlayerRemoving:Connect(function(jugador)
    print(jugador.Name .. " ha salido")
end)


--ReplicatedStorage (game.ReplicatedStorage)
--Descripción: Almacena objetos y scripts que son accesibles tanto para el cliente como para el servidor.
--FindFirstChild(name: string): Similar al Workspace.
local objeto = game.ReplicatedStorage:FindFirstChild("ObjetoCompartido")

--Funciones importantes:
--WaitForChild: Espera a que un objeto hijo esté disponible.




--2.Física y Animaciones
--Estos servicios controlan la física y las interacciones visuales.

--BasePart
--Descripción: Todos los objetos físicos (como bloques o esferas) heredan de BasePart.
--SetPrimaryPartCFrame(cframe: CFrame): Mueve un modelo completo
modelo:SetPrimaryPartCFrame(CFrame.new(0, 10, 0))

--Touched: Se activa cuando algo toca la parte
local part = script.Parent
part.Touched:Connect(function(hit)
    print(hit.Name .. " tocó la parte")
end)



--3. Servicios Avanzados
--TweenService (game:GetService("TweenService"))
--Descripción: Permite crear animaciones suaves entre propiedades de objetos.

--Create(instance: Instance, tweenInfo: TweenInfo, properties: Table): Crea un tween para animar un objeto
local TweenService = game:GetService("TweenService")
local part = script.Parent
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
local properties = {Position = Vector3.new(0, 10, 0)}
local tween = TweenService:Create(part, tweenInfo, properties)
tween:Play()

--Lighting (game.Lighting)
--Descripción: Controla el ambiente y las luces del juego.
--Cambiar el tiempo del día
game.Lighting.TimeOfDay = "14:00:00"

--DataStoreService (game:GetService("DataStoreService"))
--Descripción: Guarda datos persistentes para los jugadores.
--GetDataStore(name: string): Obtiene o crea un almacén de datos
local DataStoreService = game:GetService("DataStoreService")
local dataStore = DataStoreService:GetDataStore("Puntos")

--SetAsync(key: string, value: any): Guarda un valor
dataStore:SetAsync("Jugador123", 100)

--GetAsync(key: string): Obtiene un valor guardado
local puntos = dataStore:GetAsync("Jugador123")



--4. Interfaces y UX
--Gui (Interfaz Gráfica de Usuario)
--ScreenGui: Elementos visibles en la pantalla

--MouseButton1Click: Se activa cuando un botón es clickeado.
local boton = script.Parent
boton.MouseButton1Click:Connect(function()
    print("¡Botón clickeado!")
end)



--5. Audio y Sonido
--Play(): Reproduce un sonido
local sonido = game.Workspace.Sonido
sonido:Play()

--Stop(): Detiene un sonido
local sonido = game.Workspace.Sonido
sonido:Stop()

--Ended: Se activa cuando el sonido termina.




