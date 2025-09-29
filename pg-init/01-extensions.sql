-- pg-init/01-extensions.sql (idempotent)
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ensure role demo exists with password 'demo'
DO
$$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'demo') THEN
    CREATE ROLE demo LOGIN PASSWORD 'demo';
  ELSE
    -- set password to known value (safe for dev)
    ALTER ROLE demo WITH PASSWORD 'demo';
  END IF;
END
$$;
