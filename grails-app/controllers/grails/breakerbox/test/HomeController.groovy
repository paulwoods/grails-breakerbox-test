package grails.breakerbox.test

import grails.plugin.breakerbox.*

class HomeController {

	def index() {
		def breakers = CircuitBreaker.createCriteria().list(params) {}
		[breakers:breakers]
	}

	def execute(String name) {
		def breaker = CircuitBreaker.findByName(name)
		if(breaker) {
			breaker.protect {
				throw new RuntimeException("Something Bad Happened.")
			}
		}
		redirect action:"index"
	}

	def reset(Long id) {
		def breaker = CircuitBreaker.get(id) 
		if(breaker)
			breaker.reset()
		
		redirect action:"index"
	}

	def messages(Long id) {
		def breaker = CircuitBreaker.get(id) 
		if(breaker)
			[breaker:breaker]
		else
			redirect action:"index"
	}

}
