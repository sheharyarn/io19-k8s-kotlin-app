package gdglahore.io2019.kubernetes.demoapp

import org.springframework.web.bind.annotation.*

data class Message(val text: String)

@RestController
class HelloController {
    @RequestMapping("/hello")
    fun message(): Message {
        return Message("Hello World!")
    }
}

