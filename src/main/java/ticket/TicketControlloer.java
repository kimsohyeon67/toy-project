package ticket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TicketControlloer {

    @GetMapping("/ticket")
    public String ticketDesign() {
        return "ticket/ticket_design";
    }


}
