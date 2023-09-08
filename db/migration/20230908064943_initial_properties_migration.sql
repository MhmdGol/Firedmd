-- +goose Up
-- +goose StatementBegin
CREATE TABLE properties(
    id BIGINT PRIMARY KEY,
    owned_by BIGINT,
    long VARCHAR(10),
    lat VARCHAR(10),
    FOREIGN KEY (owned_by) REFERENCES users(id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE properties;
-- +goose StatementEnd
