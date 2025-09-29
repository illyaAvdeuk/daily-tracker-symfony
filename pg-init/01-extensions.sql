CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE ROLE demo LOGIN PASSWORD 'demo';
CREATE DATABASE demo;
-- при необходимости: создать схему, таблицы или миграции будут это делать
