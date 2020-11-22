<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

    <sch:pattern>
        <sch:rule context="fermeture">
            <sch:assert test="not(text())">Un élement <sch:name/> ne peux pas contenir de texte.</sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern>
        <sch:rule context="ouverture">
            <sch:assert test="@debut">l'ouverture a toujours un attribut @début.</sch:assert>
            <sch:assert test="@fin">l'ouverture a toujours un attribut @fin.</sch:assert>
        </sch:rule> 
    </sch:pattern>
    
    <sch:pattern>
        <sch:rule context="pdv">
            <sch:report test="./ouverture[@saufjour='']" role="warn">
                <sch:name/> devrait prendre des vacances</sch:report>
        </sch:rule> 
    </sch:pattern>
    
    <sch:pattern>
        <sch:rule context="ville">
            <sch:report test="not(text() =upper-case(text()))" role="warn">
                <sch:name/> Les noms des villes devraient être tous en majuscule.</sch:report>
        </sch:rule> 
    </sch:pattern>
    
    
    
</sch:schema>