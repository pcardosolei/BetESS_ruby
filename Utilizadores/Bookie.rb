require_relative'Utilizador.rb'

<<<<<<< HEAD
class Bookie < Utilizador
=======
class Apostador < Utilizador

>>>>>>> development

	def initialize(nome,mail,password,nickname)
		super(nome,mail,password,nickname)
	end

	def verificaUtilizador(nome,password)
		super
	end
end


