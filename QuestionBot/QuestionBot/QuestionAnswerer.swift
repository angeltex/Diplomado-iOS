struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let lowercasedQuestion = question.lowercased()
        
        if lowercasedQuestion == "como funcionas?" {
            return "Solo soy una simple app, que aprende de vos y de otras personas,digo lo que otros dicen..."
        } else if lowercasedQuestion == "que tan inteligente eres?" {
            return "Soy lo suficiente inteligente, como para saber que no debo responder a esa pregunta"
        } else if lowercasedQuestion == "sigues las leyes de la robótica?" {
            return "creo que son tres..."
        //}
        //else if lowercasedQuestion.hasPrefix("") {
        //   return "De donde que?...fue lo unico que entendi..."
        } else {
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "I don´t speak Spanish perdon ingles. Mejor pregunta en español"
            } else if defaultNumber == 1 {
                return "Jajajaja no entendi....😅.  Mejor pregunta en español"
            } else { // 2
                return "ammm no lo se.  Mejor pregunta en español"
            }
        }
    }
}
