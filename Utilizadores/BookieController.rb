class BookieController
	
	attr_accessor :bookieView,:bookie

	def initialize()
		@bookieView=BookieView.new
		@bookie=Bookie.new
	end

	def initialize(nome,mail,password,nickname)
		@bookie.nome=nome
		@bookie.mail=mail
		@bookie.password=password
		@bookie.nickname=nickname
	end

	def criarBookie()
		lista=@bookieView.criarBookieView
		@bookie.nome=lista[0]
		@bookie.mail=lista[1]		
	end

	def verificaUtilizador(nome,password)
		@apostador.verificaUtilizador(nome,password)
	end
end