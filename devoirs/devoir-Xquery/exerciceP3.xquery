declare namespace local = "documents-structures-fonctions";

declare function local:normalise-texte($texte as xs:string) as xs:string* {
    let $ponctuations := "?!;.,'"
    return translate($texte, $ponctuations, "") => lower-case() => tokenize()
};

declare function local:calcul-freque($mots as xs:string*) as node()* { 
    for $mot in distinct-values($mots)
    let $freqs := xs:string(count($mots[.=$mot]))
    return <mot frquence="{$freqs}">{$mot}</mot>
};


let $texte := local:normalise-texte(unparsed-text('file:////C:/Users/china/Desktop/documentStructure/documents-structures/07-XQuery/text.txt'))
return <dictionaire>{'&#xa;',local:calcul-freque($texte),'&#xa;'}</dictionaire>


