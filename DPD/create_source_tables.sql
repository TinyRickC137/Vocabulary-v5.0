﻿/**************************************************************************
* Copyright 2016 Observational Health Data Sciences and Informatics (OHDSI)
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
**************************************************************************/

-- INPUT TABLES CREATION
CREATE TABLE PREV_RTC
(
   CONCEPT_CODE_1      VARCHAR2(255 Byte),
   CONCEPT_NAME_1      VARCHAR2(255 Byte),
   CONCEPT_CLASS_ID_1  VARCHAR2(255 Byte),
   CONCEPT_ID_2        NUMBER,
   CONCEPT_NAME_2      VARCHAR2(255 Byte),
   CONCEPT_CODE_2      VARCHAR2(255 Byte),
   INVALID_REASON_2    VARCHAR2(1 Byte),
   PRECEDENCE          NUMBER,
   CONVERSION_FACTOR   NUMBER
);