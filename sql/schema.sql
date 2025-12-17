CREATE TABLE IF NOT EXISTS products (
    id           INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sku          VARCHAR(64) UNIQUE NOT NULL,
    name         VARCHAR(200) NOT NULL,
    description  TEXT,
    price_cents  INTEGER NOT NULL CHECK (price_cents >= 0),
    quantity     INTEGER NOT NULL CHECK (quantity >= 0),
    created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at   TIMESTAMPTZ NOT NULL DEFAULT NOW()
    );

CREATE INDEX IF NOT EXISTS idx_products_name ON products (name);