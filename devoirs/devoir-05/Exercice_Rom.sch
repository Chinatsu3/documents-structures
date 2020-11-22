<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <!--1. Assurer vous que le document contient bien un teiHeader et un text-->
    <!--2. Définir une règle abstraite qui vérifie qu'un élément contient toujours un enfant paragraphe. Appliquer sur les éléments sp et projectDesc.-->
    <!--<sch:pattern abstract="true" id="contient">
        <sch:rule context="TEI">
            <sch:assert test="self::*[child::teiHeader and child::text]">L'élément <sch:name/> doit avoir deux enfants : teiHeader et text.</sch:assert>
            <sch:assert test="./sp[child::*]">L'élément "sp" doit contenir toujours un enfant.</sch:assert>
            <sch:assert test="./projectDesc[child::*]">L'élément "projectDesc" doit contenir toujours un enfant.</sch:assert>
        </sch:rule>
    </sch:pattern>-->
    
    <!--3.Créer un bloc abstrait pour vérifier que chaque div qui sont des actes contiennent un élément head et plusieurs scènes.-->
    <sch:pattern abstract="true" id="structure-div">
        <sch:rule context="$element">
            <sch:assert test="@type='act'"></sch:assert>
            <sch:assert test="$attrib > 1"> le <sch:name/> qui est act doit contenir plusieurs scènes.</sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern is-a="structure-div" id="div">
        <sch:param name="element" value="div"/>
        <sch:param name="attrib" value="@n"/>
    </sch:pattern>
</sch:schema>