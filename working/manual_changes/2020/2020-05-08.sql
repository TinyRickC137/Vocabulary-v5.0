
--add new relationships between Regimen and Condition 
--and Components and Condition ('Is historical in', 'Is current in', 'Has accepted use', 'Has FDA indication')

DO $_$
BEGIN
	PERFORM vocabulary_pack.AddNewRelationship(
	pRelationship_name			=>'Has accepted use (HemOnc)',
	pRelationship_id			=>'Has accepted use',
	pIs_hierarchical			=>0,
	pDefines_ancestry			=>0,
	pReverse_relationship_id	=>'Accepted use of',
	pRelationship_name_rev		=>'Accepted use of (HemOnc)',
	pIs_hierarchical_rev		=>0,
	pDefines_ancestry_rev		=>0
);
END $_$;

DO $_$
BEGIN
	PERFORM vocabulary_pack.AddNewRelationship(
	pRelationship_name			=>'Has FDA indication (HemOnc)',
	pRelationship_id			=>'Has FDA indication',
	pIs_hierarchical			=>0,
	pDefines_ancestry			=>0,
	pReverse_relationship_id	=>'FDA indication of',
	pRelationship_name_rev		=>'FDA indication of (HemOnc)',
	pIs_hierarchical_rev		=>0,
	pDefines_ancestry_rev		=>0
);
END $_$;

DO $_$
BEGIN
	PERFORM vocabulary_pack.AddNewRelationship(
	pRelationship_name			=>'Is currently used in (HemOnc)',
	pRelationship_id			=>'Is current in',
	pIs_hierarchical			=>0,
	pDefines_ancestry			=>0,
	pReverse_relationship_id	=>'Current treated by',
	pRelationship_name_rev		=>'Currently treated by (HemOnc)',
	pIs_hierarchical_rev		=>0,
	pDefines_ancestry_rev		=>0
);
END $_$;

DO $_$
BEGIN
	PERFORM vocabulary_pack.AddNewRelationship(
	pRelationship_name			=>'Is historically used in (HemOnc)',
	pRelationship_id			=>'Is historical in',
	pIs_hierarchical			=>0,
	pDefines_ancestry			=>0,
	pReverse_relationship_id	=>'Historic treated by',
	pRelationship_name_rev		=>'Historically treated by (HemOnc)',
	pIs_hierarchical_rev		=>0,
	pDefines_ancestry_rev		=>0
);
END $_$;


--new classes for HemOnc
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.AddNewConceptClass(
	pConcept_class_id	=>'Regimen Class',
	pConcept_class_name	=>'Regimen Class'
);
END $_$;
