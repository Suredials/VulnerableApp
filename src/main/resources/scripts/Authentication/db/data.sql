-- Level 1: Parameterized username lookup and adaptive password hashing.
INSERT INTO auth_users VALUES (1, 'admin_sqli', '$2a$12$G.oa0oWm4zrDOYeMrgzT7.vSzVmcTjJgXIFhEZYh/RYAlsnPs6e5y', NULL, 'BCRYPT', 1, 'admin_sqli@example.com', 'ADMIN');

-- Level 2: Adaptive password hashing; credentials are never logged.
-- The previously exposed password has been rotated; only its adaptive hash is retained.
INSERT INTO auth_users VALUES (2, 'admin_logs', '$2a$12$hWisITUbfBffdJWymRTKsehJbdv17OxWeuekZIoI2rr4Nuu07uAfC', NULL, 'BCRYPT', 2, 'admin_logs@example.com', 'ADMIN');

-- Level 3: Adaptive password hashing; no plaintext password is stored.
INSERT INTO auth_users VALUES (3, 'admin_plain', '$2a$12$CMGRzG7KWvNHmpxvQOg/vubWvGKB.SzzIakdy73m/Vo6Fr6sNhu66', NULL, 'BCRYPT', 3, 'admin_plain@example.com', 'ADMIN');

-- Level 4: Adaptive password hashing.
INSERT INTO auth_users VALUES (4, 'admin_md5', '$2a$12$qP9tfESuTgFjH9Y5VI1s3uUR723mZwFP/B4ZHMOBtt8JFEfw2nSzC', NULL, 'BCRYPT', 4, 'admin_md5@example.com', 'ADMIN');

-- Level 5: Adaptive password hashing.
INSERT INTO auth_users VALUES (5, 'admin_sha1', '$2a$12$XOAiTohMV9XhWeOTiInJHufbao.Ybdwfa42c1o2FQrTJ3ZvLz4N4y', NULL, 'BCRYPT', 5, 'admin_sha1@example.com', 'ADMIN');

-- Level 6: Adaptive password hashing.
INSERT INTO auth_users VALUES (6, 'admin_sha256', '$2a$12$e.phWhRwM8k13.43DRFJfewv2mNE6rzn5sScdR9qHlIZ5MpnDo1zK', NULL, 'BCRYPT', 6, 'admin_sha256@example.com', 'ADMIN');

-- Level 7: Adaptive password hashing.
INSERT INTO auth_users VALUES (7, 'admin_enum', '$2a$12$U0kWAg2hcXT/Si1VNPQkiuk9lh2EhumoTyFMaZVx761HkIiKG0x8W', NULL, 'BCRYPT', 7, 'admin_enum@example.com', 'ADMIN');

-- Level 8: Strong random password protected with BCrypt cost 12.
INSERT INTO auth_users VALUES (8, 'admin_weak', '$2a$12$E1KebLYElKl7bAy2N/LX4ug8Lmp6hzvXJnlHpEBUC8ZsXkTZYUE1C', NULL, 'BCRYPT', 8, 'admin_weak@example.com', 'ADMIN');

-- Level 9: Adaptive password hashing with a generic failure response.
INSERT INTO auth_users VALUES (9, 'admin_secure', '$2a$12$PiVoxu43joIJzvib34Bw8Oqm6aZB5545lDs1QB3AXWkQgA69e13oS', NULL, 'BCRYPT', 9, 'admin_secure@example.com', 'ADMIN');

-- Level 10: Strong random password protected with BCrypt cost 12.
INSERT INTO auth_users VALUES (10, 'admin_lowcost', '$2a$12$j3mUITePwHPst/DbMOCpeeQ.p5sFAAQzydwCVXiPrYSD4LWlFPksC', NULL, 'BCRYPT', 10, 'admin_lowcost@example.com', 'ADMIN');
