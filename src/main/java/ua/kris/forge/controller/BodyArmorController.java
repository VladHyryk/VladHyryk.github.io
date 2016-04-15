package ua.kris.forge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.kris.forge.domain.BodyArmor;
import ua.kris.forge.repository.BodyArmorRepository;
import ua.kris.forge.validation.ArmorValidator;

import java.util.List;
import org.apache.log4j.Logger;

@Controller
public class BodyArmorController {
    private static final Logger log = Logger.getLogger(BodyArmorController.class);

    private BodyArmorRepository bodyArmorRepository;

    private ArmorValidator armorValidator;



    @Autowired
    public BodyArmorController(BodyArmorRepository bodyArmorRepository, ArmorValidator armorValidator) {
        this.bodyArmorRepository = bodyArmorRepository;
        this.armorValidator = armorValidator;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET )
    public String getBodyArmors(Model model) {
        List bodyArmors = this.bodyArmorRepository.listAll();
        model.addAttribute("bodyarmors", bodyArmors);

        return "index";
    }

    @RequestMapping(value = "addBodyArmor", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public String addBodyArmor(Model model) {
        model.addAttribute("bodyarmor", new BodyArmor());
        return "addBodyArmor";
    }

    @RequestMapping(value = "addBodyArmor", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String addBodyArmor(@ModelAttribute("bodyarmor") BodyArmor bodyArmor, BindingResult bindingResult) {
        this.armorValidator.validate(bodyArmor, bindingResult);

        if (bindingResult.hasErrors()){
            return "addBodyArmor";
        }

        this.bodyArmorRepository.addBodyArmor(bodyArmor);

        return "redirect:/";
    }
    @RequestMapping(value = "deleteBodyArmor/{id}", method = RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String deleteBodyArmor(@PathVariable Integer id){
        this.bodyArmorRepository.removeBodyArmor(id);
        log.info("Это информационное сообщение!");
        return "redirect:/";
    }
}
