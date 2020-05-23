Update of SNOMED

Prerequisites:
- Schema DevV5 with copies of tables concept, concept_relationship and concept_synonym from ProdV5, fully indexed. 
- Schema UMLS
- Working directory SNOMED.

1. Run create_source_tables.sql
2. Download the international SNOMED file SnomedCT_InternationalRF2_Production_YYYYMMDDTzzzzzz.zip (RF2 Release) from https://www.nlm.nih.gov/healthit/snomedct/international.html.
3. Extract the following files from the folder \Full\Terminology:
- sct2_Concept_Full_INT_YYYYMMDD.txt
- sct2_Description_Full-en_INT_YYYYMMDD.txt
- sct2_Relationship_Full_INT_YYYYMMDD.txt
from the folder \Full\Refset\Map:
- der2_sRefset_SimpleMapFull_INT_YYYYMMDD.txt
from the folder \Full\Refset\Language
- der2_cRefset_LanguageFull-en_INT_YYYYMMDD.txt
Rename files to sct2_Concept_Full_INT.txt, sct2_Description_Full-en_INT.txt, sct2_Relationship_Full_INT.txt, der2_sRefset_SimpleMapFull_INT.txt, der2_cRefset_LanguageFull_INT.txt

4. Download the British SNOMED file uk_sct2cl_xx.x.x__YYYYMMDD000001.zip from https://isd.digital.nhs.uk/trud3/user/authenticated/group/0/pack/26/subpack/101/releases.
5. Extract the following files from the folder SnomedCT_UKClinicalRF2_Production_YYYYMMDDTzzzzzz\Full\Terminology into a working folder:
- sct2_Concept_Full_GB1000000_YYYYMMDD.txt
- sct2_Description_Full-en-GB_GB1000000_YYYYMMDD.txt
- sct2_Relationship_Full-GB_GB1000000_YYYYMMDD.txt
from the folder \Full\Refset\Language
- der2_cRefset_LanguageFull-en-GB_GB1000000_YYYYMMDD.txt
Rename files to sct2_Concept_Full-UK.txt, sct2_Description_Full-UK.txt, sct2_Relationship_Full-UK.txt, der2_cRefset_LanguageFull_UK.txt

6. Download the US SNOMED file SnomedCT_USEditionRF2_PRODUCTION_YYYYMMDDTzzzzzzZ.zip from https://www.nlm.nih.gov/healthit/snomedct/us_edition.html
7. Extract the following files from the folder \Full\Terminology\ into a working folder:
- sct2_Concept_Full_US1000124_YYYYMMDD.txt
- sct2_Description_Full-en_US1000124_YYYYMMDD.txt
- sct2_Relationship_Full_US1000124_YYYYMMDD.txt
from the folder \Full\Refset\Language
- der2_cRefset_LanguageFull-en_US1000124_YYYYMMDD.txt
Remove date from file name and rename to sct2_Concept_Full_US.txt, sct2_Description_Full-en_US.txt, sct2_Relationship_Full_US.txt, der2_cRefset_LanguageFull_US.txt

8. Download the UK SNOMED CT Drug Extension, RF2 file uk_sct2dr_xx.x.x__YYYYMMDD000001.zip from https://isd.digital.nhs.uk/trud3/user/authenticated/group/0/pack/26/subpack/105/releases
9. Extract the following files from the folder SnomedCT_UKDrugRF2_Production_20180516T000001Z\Full\Terminology\ into a working folder:
- sct2_Concept_Full_GB1000000_YYYYMMDD.txt
- sct2_Description_Full-en-GB_GB1000000_YYYYMMDD.txt
- sct2_Relationship_Full_GB1000000_YYYYMMDD.txt
from the folder \Full\Refset\Language
- der2_cRefset_LanguageFull-en-GB_GB1000001_YYYYMMDD.txt
Rename files to sct2_Concept_Full_GB_DE.txt, sct2_Description_Full-en-GB_DE.txt, sct2_Relationship_Full_GB_DE.txt, der2_cRefset_LanguageFull_GB_DE.txt

10. Extract
- der2_cRefset_AssociationFull_INT_YYYYMMDD.txt from SnomedCT_InternationalRF2_Production_YYYYMMDDTzzzzzz\Full\Refset\Content
- der2_cRefset_AssociationFull_GBxxxxxxx_YYYYMMDD.txt from uk_sct2cl_xx.x.x__YYYYMMDD000001\SnomedCT_UKClinicalRF2_Production_YYYYMMDDTzzzzzz\Full\Refset\Content
- der2_cRefset_AssociationFull_USxxxxxxx_YYYYMMDD.txt from SnomedCT_USEditionRF2_PRODUCTION_YYYYMMDDTzzzzzz\Full\Refset\Content
- der2_cRefset_AssociationFull_GBxxxxxxx_YYYYMMDD.txt from SnomedCT_UKDrugRF2_Production_YYYYMMDDTzzzzzz\Full\Refset\Content
Rename to der2_cRefset_AssociationFull_INT.txt, der2_cRefset_AssociationFull_UK.txt, der2_cRefset_AssociationFull_US.txt and der2_cRefset_AssociationFull_GB_DE.txt


11. Add DM+D: Download nhsbsa_dmd_X.X.X_xxxxxxxxxxxxxx.zip from https://isd.digital.nhs.uk/trud3/user/authenticated/group/0/pack/6/subpack/24/releases
12. Extract f_ampp2_xxxxxxx.xml, f_amp2_xxxxxxx.xml, f_vmpp2_xxxxxxx.xml, f_vmp2_xxxxxxx.xml, f_lookup2_xxxxxxx.xml, f_vtm2_xxxxxxx.xml and f_ingredient2_xxxxxxx.xml
13. Rename to f_ampp2.xml, f_amp2.xml, f_vmpp2.xml, f_vmp2.xml, f_lookup2.xml, f_vtm2.xml and f_ingredient2.xml
14. Download nhsbsa_dmdbonus_X.X.X_YYYYMMDDXXXXXX.zip from https://isd.digital.nhs.uk/trud3/user/authenticated/group/0/pack/6/subpack/25/releases
15. Extract weekXXYYYY-rX_X-BNF.zip/f_bnf1_XXXXXXX.xml and rename him to dmdbonus.xml

16. Run in devv5 (with fresh vocabulary date and version): SELECT sources.load_input_tables('SNOMED',TO_DATE('20180131','YYYYMMDD'),'Snomed Release 20180131');
17. Run load_stage.sql
18. Run generic_update: devv5.GenericUpdate();