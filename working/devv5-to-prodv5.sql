-- Copy all relevant tables from DevV5

CREATE TABLE PRODV5.CONCEPT AS SELECT * FROM DEVV5.CONCEPT;
CREATE TABLE PRODV5.VOCABULARY AS SELECT * FROM DEVV5.VOCABULARY;
CREATE TABLE PRODV5.CONCEPT_RELATIONSHIP AS SELECT * FROM DEVV5.CONCEPT_RELATIONSHIP;
CREATE TABLE PRODV5.RELATIONSHIP AS SELECT * FROM DEVV5.RELATIONSHIP;
CREATE TABLE PRODV5.CONCEPT_SYNONYM AS SELECT * FROM DEVV5.CONCEPT_SYNONYM;
CREATE TABLE PRODV5.CONCEPT_ANCESTOR AS SELECT * FROM DEVV5.CONCEPT_ANCESTOR;
CREATE TABLE PRODV5.DOMAIN AS SELECT * FROM DEVV5.DOMAIN;
CREATE TABLE PRODV5.DRUG_STRENGTH AS SELECT * FROM DEVV5.DRUG_STRENGTH;
CREATE TABLE PRODV5.CONCEPT_CLASS AS SELECT * FROM DEVV5.CONCEPT_CLASS;
CREATE TABLE PRODV5.VOCABULARY_CONVERSION AS SELECT * FROM DEVV5.VOCABULARY_CONVERSION;

UPDATE PRODV5.VOCABULARY SET VOCABULARY_NAME = 'OMOP Standardized Vocabularies', VOCABULARY_VERSION = 'v5.0 21-Mar-2015' WHERE VOCABULARY_ID = 'NONE';

ALTER TABLE PRODV5.CONCEPT ADD CONSTRAINT XPK_CONCEPT PRIMARY KEY (CONCEPT_ID);
CREATE INDEX CONCEPT_VOCAB ON PRODV5.CONCEPT (VOCABULARY_ID);

CREATE INDEX CONCEPT_RELATIONSHIP_C_1 ON PRODV5.CONCEPT_RELATIONSHIP (CONCEPT_ID_1);
CREATE INDEX CONCEPT_RELATIONSHIP_C_2 ON PRODV5.CONCEPT_RELATIONSHIP (CONCEPT_ID_2);

CREATE INDEX CONCEPT_SYNONYM_CONCEPT ON PRODV5.CONCEPT_SYNONYM (CONCEPT_ID);

GRANT SELECT ON VOCAB_DOWNLOAD.VOCABULARY_USER TO PRODV5;