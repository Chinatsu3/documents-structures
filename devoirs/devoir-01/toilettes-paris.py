
#Chinatsu KUROIWA
# -*- coding: utf-8 -*-

import csv
import lxml
from lxml import etree as et
#import lxml.etree.ElementTree as et

def csv_xml(input_file, output_file ) :
	with open(input_file,"r") as in_file :
		reader = csv.DictReader(in_file, delimiter=';')
	
		#Declaration de ROOT
		root = et.Element("toilettes")
		
		#Declaration des enfants
		for lines in reader:
			toilette = et.SubElement(root,"toilette",type=lines["TYPE"],statut=str(lines["STATUT"]))
			
			adresse = et.SubElement(toilette,"adresse")
			libelle = et.SubElement(adresse,"libelle")
			libelle.text = lines["ADRESSE"]
			arrondissement = et.SubElement(adresse,"arrondissement")
			arrondissement.text = str(lines["ARRONDISSEMENT"])
			
			horaire = et.SubElement(toilette,"horaire")
			horaire.text = str(lines["HORAIRE"])
			
			services = et.SubElement(toilette,"services")
			accespmr = et.SubElement(services,"acces-pmr")
			accespmr.text = lines["ACCES_PMR"]
			relaisbebe = et.SubElement(services,"relais-bebe")
			relaisbebe.text = lines["RELAIS_BEBE"]
			
			equipement = et.SubElement(toilette,"equipement")
			
	#OUTPUT 
	out = et.tostring(root, pretty_print=True, encoding="utf-8",xml_declaration=True,doctype='<!DOCTYPE toilettes SYSTEM "wc.dtd">')
	with open(output_file,"wb") as out_file :
		out_file.write(out)
		
	
		
		




#test
if __name__ == '__main__':
	input_file = "sanisettesparis.csv"
	output_file = "toilettes-paris.xml"
	csv_xml(input_file,output_file)

