package dev.personnelspring.web.controller;


import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dev.personnelspring.entite.Collaborateur;
import dev.personnelspring.repository.CollaborateurRepository;
import dev.personnelspring.repository.DepartementRepository;
import dev.personnelspring.repository.PosteRepository;

@Controller
@RequestMapping("/collab")
public class CollaborateurController {
	
	
	@Autowired CollaborateurRepository listeCollaborateur;
	@Autowired DepartementRepository listeDepartement;
	@Autowired PosteRepository listePoste;
	
	@RequestMapping (method = RequestMethod.GET, path="/creer")
	public ModelAndView creerCollaborateur() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("collab/creerCollabo");
		mv.addObject("ListeCollaborateur",listeCollaborateur.findAll());
		mv.addObject("ListeDepartement",listeDepartement.findAll());
		mv.addObject("ListePoste",listePoste.findAll());
		
		return mv;
	}
	
	@RequestMapping (method = RequestMethod.GET, path="/lister")
	public ModelAndView listerCollaborateur() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("collab/lister");
		mv.addObject("ListerCollab",listeCollaborateur.findAll());
		
		return mv;
	}
	
	@RequestMapping (method = RequestMethod.POST, path="/creer")
	public ModelAndView creerCollab (boolean actif, String photo, String nom, String prenom, String dateNaissance, String adresse, String codePostal, String ville, Integer numeroSecuriteSociale, Integer numeroTelephone, String coordonneesBancaire,int poste, Integer departement) {
		ModelAndView mv = new ModelAndView();
		Collaborateur nouveauCollab = new Collaborateur();
		
		nouveauCollab.setActif(true);
		nouveauCollab.setPhoto(photo);
		nouveauCollab.setNom(nom);
		nouveauCollab.setPrenom(prenom);
		nouveauCollab.setAdresse(adresse);
		nouveauCollab.setCodePostal(codePostal);
		nouveauCollab.setVille(ville);
		nouveauCollab.setNumeroSecuriteSociale(numeroSecuriteSociale);
		nouveauCollab.setNumeroTelephone(numeroTelephone);
		nouveauCollab.setCoordonneesBancaire(coordonneesBancaire);
		nouveauCollab.setDepartement(listeDepartement.findOne(departement));
		nouveauCollab.setPoste(listePoste.findOne(poste));
		// 2017-12-01
		nouveauCollab.setDateNaissance(LocalDate.parse(dateNaissance));
		
		listeCollaborateur.save(nouveauCollab);	
		
		mv.setViewName("collab/creerCollabo");
		return mv;
	}

}
