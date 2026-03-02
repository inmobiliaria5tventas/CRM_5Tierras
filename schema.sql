-- 5TIERRAS CRM & GIS SCHEMA
-- Habilitar extensión PostGIS para manejo geográfico
CREATE EXTENSION IF NOT EXISTS postgis;

-- 1. Tabla de Proyectos (Los 4 loteos actuales)
CREATE TABLE proyectos (
    id_proyecto uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    nombre_proyecto TEXT NOT NULL,
    comuna TEXT,
    total_parcelas INTEGER,
    latitud NUMERIC,
    longitud NUMERIC,
    fecha_inicio DATE DEFAULT CURRENT_DATE
);

-- 2. Tabla Maestra de Parcelas (Sincronizada con el Mapa)
CREATE TABLE parcelas (
    id_parcela uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    id_proyecto uuid REFERENCES proyectos(id_proyecto),
    numero_lote TEXT NOT NULL,
    superficie_m2 NUMERIC,
    precio_lista INTEGER NOT NULL,
    precio_minimo INTEGER NOT NULL,
    -- id_sig es el nombre de la capa/id en el GeoJSON (ej: '17' o 'fid_1')
    id_sig TEXT NOT NULL, 
    estado TEXT CHECK (estado IN ('Disponible', 'Reservada', 'Vendida', 'Bloqueada')) DEFAULT 'Disponible',
    observaciones TEXT,
    ultima_actualizacion TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(id_proyecto, id_sig)
);

-- 3. Tabla de Ventas y Finanzas
CREATE TABLE ventas_transacciones (
    id_venta uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    id_parcela uuid REFERENCES parcelas(id_parcela),
    nombre_cliente TEXT NOT NULL,
    rut_cliente TEXT,
    monto_reserva INTEGER DEFAULT 0,
    monto_total_venta INTEGER,
    metodo_pago TEXT,
    estado_juridico TEXT DEFAULT 'En Promesa',
    vendedor_asignado TEXT,
    fecha_venta TIMESTAMPTZ DEFAULT NOW()
);

-- Inserción de Datos Iniciales (Proyectos)
INSERT INTO proyectos (nombre_proyecto, comuna, latitud, longitud) VALUES
('El Copihue', 'Pinto', -36.120, -71.776),
('Las Brisas', 'Parral', -36.385, -71.953),
('Los Encinos', 'San Carlos', -36.468, -71.842),
('Los Naranjos', 'San Carlos', -36.478, -71.838);
