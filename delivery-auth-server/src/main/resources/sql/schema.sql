CREATE TABLE IF NOT EXISTS usuario (
  username VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  password VARCHAR(500),
  activated BOOLEAN DEFAULT FALSE,
  activationkey VARCHAR(50) DEFAULT NULL,
  resetpasswordkey VARCHAR(50) DEFAULT NULL,
  primary key (username)
);

CREATE TABLE IF NOT EXISTS authority (
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY(name)
);

CREATE TABLE IF NOT EXISTS user_authority (
  username VARCHAR(50) NOT NULL,
  authority VARCHAR(50) NOT NULL,
  FOREIGN KEY (username) REFERENCES usuario (username),
  FOREIGN KEY (authority) REFERENCES authority (name)
);

CREATE UNIQUE INDEX IF NOT EXISTS user_authority_idx_1 ON user_authority (username, authority);

CREATE TABLE IF NOT EXISTS oauth_access_token (
  token_id VARCHAR(256) DEFAULT NULL,
  token text,
  authentication_id VARCHAR(256) DEFAULT NULL,
  user_name VARCHAR(256) DEFAULT NULL,
  client_id VARCHAR(256) DEFAULT NULL,
  authentication text,
  refresh_token VARCHAR(256) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS oauth_refresh_token (
  token_id VARCHAR(256) DEFAULT NULL,
  token text,
  authentication text
);

CREATE TABLE IF NOT EXISTS  oauth_client_details (
  client_id VARCHAR(255) ,
  resource_ids VARCHAR(255),
  client_secret VARCHAR(255),
  scope VARCHAR(255),
  authorized_grant_types VARCHAR(255),
  web_server_redirect_uri VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(255),
  PRIMARY KEY(client_id)
);