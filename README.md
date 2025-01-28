# Lua_Practice
graph TD
    A[Principal] --> B[Función 1]
    A --> C[Función 2]
    A --> D[Condición]
    D -->|Sí| E[Función 3]
    D -->|No| F[Bucles]
    F --> G[Condición en Bucle]
    G -->|Sí| H[Acción dentro del Bucle]
    G -->|No| I[Finalizar Bucle]
    I --> J[Fin]

    classDef enlace fill:#f9f,stroke:#333,stroke-width:2px;
    class A,B,C,D,E,F,G,H,I,J enlace;

    click A "https://www.tupagina.com/funcion_principal"
    click B "https://www.tupagina.com/funcion_1"
    click C "https://www.tupagina.com/funcion_2"
    click D "https://www.tupagina.com/condicion"
    click E "https://www.tupagina.com/funcion_3"
    click F "https://www.tupagina.com/bucle"
    click G "https://www.tupagina.com/condicion_bucle"
    click H "https://www.tupagina.com/accion_bucle"
    click I "https://www.tupagina.com/finalizar_bucle"
    click J "https://www.tupagina.com/fin"
