
import grails.plugin.breakerbox.*

class BootStrap {

	def init = { servletContext ->
		println "### BootStrap init"

		if(CircuitBreaker.count())
			return

		assert new CircuitBreaker(name:"breaker1", trigger:2).save()
		assert new CircuitBreaker(name:"breaker2", trigger:4).save()
		assert new CircuitBreaker(name:"breaker3", trigger:6).save()
	}

	def destroy = {
		println "### BootStrap destroy"
	}
	
}
