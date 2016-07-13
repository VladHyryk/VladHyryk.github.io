package ua.kris.forge.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.kris.forge.domain.Order;
import ua.kris.forge.repository.OrderRepository;
import ua.kris.forge.validation.OrderValidator;

import java.util.List;

@Controller
public class OrderController {

        private static final Logger log = Logger.getLogger(OrderController.class);

        private OrderRepository orderRepository;

        private OrderValidator orderValidator;



        @Autowired
        public OrderController(OrderRepository orderRepository, OrderValidator orderValidator) {
            this.orderRepository = orderRepository;
            this.orderValidator = orderValidator;
        }

        @RequestMapping(value = "orders", method = RequestMethod.GET )
        public String getOrders(Model model) {
            List orders = this.orderRepository.listAll();
            model.addAttribute("orders", orders);

            return "orders";
        }

        @RequestMapping(value = "addOrder", method = RequestMethod.GET)
        @PreAuthorize("isAuthenticated()")
        public String addOrder(Model model) {
            model.addAttribute("order", new Order());
            return "addOrder";
        }

        @RequestMapping(value = "addOrder", method = RequestMethod.POST)
        @PreAuthorize("isAuthenticated()")
        public String addOrder(@ModelAttribute("order") Order order, BindingResult bindingResult) {
            this.orderValidator.validate(order, bindingResult);

            if (bindingResult.hasErrors()){
                return "addOrder";
            }

            this.orderRepository.addOrder(order);

            return "redirect:/";
        }
        @RequestMapping(value = "deleteOrder/{id}", method = RequestMethod.GET)
        @PreAuthorize("hasRole('admin')")
        public String deleteOrder(@PathVariable Integer id){
            this.orderRepository.removeOrder(id);
            log.info("Это информационное сообщение!");
            return "redirect:/orders";
        }


}
