package webserver

class LoginController {

    def loginService
    def sessionService

    def index() {

        def user_id = sessionService.getUserId(session.token)
        log.info("User_id: " + user_id)

        if (user_id){
            redirect(controller: "home", action: "index")
            return
        }

        render (view:"/login/index")
        return
    }

    def login(){
        def user_id = sessionService.getUserId(session.token)
        log.info("User_id: " + user_id)
        def resp = [:]

        if (user_id){
            redirect(controller: "home", action: "index")
            return
        }

        log.info("Params: " + params)

        if(params.sign_up){

            redirect(controller: "registration", action: "index")
            return

        }

        resp = loginService.doLogin(params.username, params.password)

        if (resp.status == 201) {
            //Default session time: 30 minutes
            session.token = resp.session_token
            redirect(controller: "home", action: "index")
            return
        }

        render (view:"/login/index", model:[message:resp.message])
        return
    }

    def logout(){
        session.invalidate()
        redirect(controller: "home", action: "index")
        return
    }
}
