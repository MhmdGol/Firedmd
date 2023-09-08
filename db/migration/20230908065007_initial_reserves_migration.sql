-- +goose Up
-- +goose StatementBegin
CREATE TABLE reserves(
    id BIGINT PRIMARY KEY,
    user_id BIGINT,
    property_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (property_id) REFERENCES properties(id)
)
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE reserves;
-- +goose StatementEnd
