package dev.personnelspring.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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

}
