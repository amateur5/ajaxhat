-- Brisanje postojećih tabela (ako postoje)
DROP TABLE IF EXISTS ajax_chat_online;
CREATE TABLE ajax_chat_online (
    userID INT NOT NULL,
    userName VARCHAR(64) NOT NULL,
    userRole INT NOT NULL,
    channel INT NOT NULL,
    dateTime TIMESTAMP NOT NULL,
    ip BYTEA NOT NULL,
    PRIMARY KEY (userID),
    INDEX (userName)
);

DROP TABLE IF EXISTS ajax_chat_messages;
CREATE TABLE ajax_chat_messages (
    id SERIAL PRIMARY KEY,
    userID INT NOT NULL,
    userName VARCHAR(64) NOT NULL,
    userRole INT NOT NULL,
    channel INT NOT NULL,
    dateTime TIMESTAMP NOT NULL,
    ip BYTEA NOT NULL,
    text TEXT,
    CONSTRAINT message_condition UNIQUE (id, channel, dateTime),
    INDEX (dateTime)
);

DROP TABLE IF EXISTS ajax_chat_bans;
CREATE TABLE ajax_chat_bans (
    userID INT NOT NULL,
    userName VARCHAR(64) NOT NULL,
    dateTime TIMESTAMP NOT NULL,
    ip BYTEA NOT NULL,
    PRIMARY KEY (userID),
    INDEX (userName),
    INDEX (dateTime)
);

DROP TABLE IF EXISTS ajax_chat_invitations;
CREATE TABLE ajax_chat_invitations (
    userID INT NOT NULL,
    channel INT NOT NULL,
    dateTime TIMESTAMP NOT NULL,
    PRIMARY KEY (userID, channel),
    INDEX (dateTime)
);
