-- Enable extensions
create extension if not exists "uuid-ossp";
create extension if not exists "pgcrypto";
create extension if not exists "vector";

-- Table: auth
create table if not exists auth (
    id text primary key,
    email text,
    password text,
    active boolean
);

-- Table: chat
create table if not exists chat (
    id text primary key,
    user_id text,
    title text,
    chat text,
    timestamp bigint
);

-- Table: chatidtag
create table if not exists chatidtag (
    id text primary key,
    tag_name text,
    chat_id text,
    user_id text,
    timestamp bigint
);

-- Table: document
create table if not exists document (
    id serial primary key,
    collection_name text unique,
    name text unique,
    title text,
    filename text,
    content text,
    user_id text,
    timestamp bigint
);

-- Table: modelfile
create table if not exists modelfile (
    id serial primary key,
    tag_name text unique,
    user_id text,
    modelfile text,
    timestamp bigint
);

-- Table: prompt
create table if not exists prompt (
    id serial primary key,
    command text unique,
    user_id text,
    title text,
    content text,
    timestamp bigint
);

-- Table: tag
create table if not exists tag (
    id text primary key,
    name text,
    user_id text,
    data text
);

-- Table: user
create table if not exists "user" (
    id text primary key,
    name text,
    email text,
    role text,
    profile_image_url text,
    timestamp bigint
);