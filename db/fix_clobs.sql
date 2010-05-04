ALTER TABLE changesets ADD comments_temp VARCHAR2(4000);
UPDATE changesets SET comments_temp = comments;
COMMIT;
ALTER TABLE changesets DROP COLUMN comments;
ALTER TABLE changesets RENAME COLUMN comments_temp TO comments;

ALTER TABLE comments ADD comments_temp VARCHAR2(4000);
UPDATE comments SET comments_temp = comments;
COMMIT;
ALTER TABLE comments DROP COLUMN comments;
ALTER TABLE comments RENAME COLUMN comments_temp TO comments;

ALTER TABLE custom_fields ADD possible_values_temp VARCHAR2(4000);
UPDATE custom_fields SET possible_values_temp = possible_values;
COMMIT;
ALTER TABLE custom_fields DROP COLUMN possible_values;
ALTER TABLE custom_fields RENAME COLUMN possible_values_temp TO possible_values;

ALTER TABLE custom_fields ADD default_value_temp VARCHAR2(4000);
UPDATE custom_fields SET default_value_temp = default_value;
COMMIT;
ALTER TABLE custom_fields DROP COLUMN default_value;
ALTER TABLE custom_fields RENAME COLUMN default_value_temp TO default_value;

ALTER TABLE custom_values ADD value_temp VARCHAR2(4000);
UPDATE custom_values SET value_temp = value;
COMMIT;
ALTER TABLE custom_values DROP COLUMN value;
ALTER TABLE custom_values RENAME COLUMN value_temp TO value;

ALTER TABLE documents ADD description_temp VARCHAR2(4000);
UPDATE documents SET description_temp = description;
COMMIT;
ALTER TABLE documents DROP COLUMN description;
ALTER TABLE documents RENAME COLUMN description_temp TO description;

ALTER TABLE issues ADD description_temp VARCHAR2(4000);
UPDATE issues SET description_temp = description;
COMMIT;
ALTER TABLE issues DROP COLUMN description;
ALTER TABLE issues RENAME COLUMN description_temp TO description;

ALTER TABLE journals ADD notes_temp VARCHAR2(4000);
UPDATE journals SET notes_temp = notes;
COMMIT;
ALTER TABLE journals DROP COLUMN notes;
ALTER TABLE journals RENAME COLUMN notes_temp TO notes;

ALTER TABLE messages ADD content_temp VARCHAR2(4000);
UPDATE messages SET content_temp = content;
COMMIT;
ALTER TABLE messages DROP COLUMN content;
ALTER TABLE messages RENAME COLUMN content_temp TO content;

ALTER TABLE news ADD description_temp VARCHAR2(4000);
UPDATE news SET description_temp = description;
COMMIT;
ALTER TABLE news DROP COLUMN description;
ALTER TABLE news RENAME COLUMN description_temp TO description;

ALTER TABLE projects ADD description_temp VARCHAR2(4000);
UPDATE projects SET description_temp = description;
COMMIT;
ALTER TABLE projects DROP COLUMN description;
ALTER TABLE projects RENAME COLUMN description_temp TO description;

ALTER TABLE queries ADD filters_temp VARCHAR2(4000);
UPDATE queries SET filters_temp = filters;
COMMIT;
ALTER TABLE queries DROP COLUMN filters;
ALTER TABLE queries RENAME COLUMN filters_temp TO filters;

ALTER TABLE queries ADD column_names_temp VARCHAR2(4000);
UPDATE queries SET column_names_temp = column_names;
COMMIT;
ALTER TABLE queries DROP COLUMN column_names;
ALTER TABLE queries RENAME COLUMN column_names_temp TO column_names;

ALTER TABLE roles ADD permissions_temp VARCHAR2(4000);
UPDATE roles SET permissions_temp = permissions;
COMMIT;
ALTER TABLE roles DROP COLUMN permissions;
ALTER TABLE roles RENAME COLUMN permissions_temp TO permissions;

ALTER TABLE settings ADD value_temp VARCHAR2(4000);
UPDATE settings SET value_temp = value;
COMMIT;
ALTER TABLE settings DROP COLUMN value;
ALTER TABLE settings RENAME COLUMN value_temp TO value;

ALTER TABLE user_preferences ADD others_temp VARCHAR2(4000);
UPDATE user_preferences SET others_temp = others;
COMMIT;
ALTER TABLE user_preferences DROP COLUMN others;
ALTER TABLE user_preferences RENAME COLUMN others_temp TO others;

ALTER TABLE wiki_contents ADD text_temp VARCHAR2(4000);
UPDATE wiki_contents SET text_temp = text;
COMMIT;
ALTER TABLE wiki_contents DROP COLUMN text;
ALTER TABLE wiki_contents RENAME COLUMN text_temp TO text;

