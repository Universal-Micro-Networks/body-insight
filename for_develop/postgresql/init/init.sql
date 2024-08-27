CREATE DATABASE body_insight;
\c body_insight

CREATE USER body_insight_user WITH PASSWORD '36n9zaHuExtB' CREATEDB;
GRANT ALL PRIVILEGES ON DATABASE body_insight TO body_insight_user;
GRANT CREATE ON SCHEMA public TO body_insight_user;
CREATE SCHEMA body_insight AUTHORIZATION body_insight_user;
