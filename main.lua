


function love.load()
-------------------------------------------------------SOBRE O MENU----------------------------------------------------------
	
	love.mouse.setVisible(false)
	cursormira = love.graphics.newImage("objetos/cursormira.png")
	start = love.graphics.newImage("objetos/start.png")
	quit = love.graphics.newImage("objetos/quit.png")

	--------------------------------EXIT--------------------
	exit = false

	----------------------------SOBRE O ZERAMENTO-----------------------------------------------
	creditos1 = love.graphics.newImage("imagens/creditos1.png")
	creditos2 = love.graphics.newImage("imagens/creditos2.png")
	creditos3 = love.graphics.newImage("imagens/creditos3.png")
	zerado = love.audio.newSource("musica/zerado.ogg")
	aplausos = love.audio.newSource("sons/aplausos.ogg")

	creditos2x=(0)
	creditos2y=(730)
	creditos3x=(0)
	creditos3y=(5730)


	---------------------------------------SOBRE O LIFE--------------------------------------------------
	ftime1=5 -- morte
	ftime2=5 --	vampiro       --CORRESPONDEM AOS SEGUNDOS
	ftime3=5 -- lobisomen

	trapaca = love.graphics.newImage("objetos/trapaca.png")
	------------------------------------------------------------------------------------------------------

	--love.graphics.setBackgroundColor(100,100,200)
	menufundo = love.graphics.newImage("imagens/menufundo.png")
	
	--love.graphics.setBackgroundColor(100,100,200)
	--efeito explosão, fail. por equanto. 
	--boom = love.graphics.newImage("objetos/boom.png") -- deu bug.
	
	favela = love.graphics.newImage("imagens/favela.png")
	
	--------------------- ESSE CODIGO SALVA O VALOR DO ARQUIVO RECORDE.TXT NA VARIAVEL RECORDE-----------------------------------
	recorde = love.filesystem.read("recorde.txt")		--Aqui ele lê o que esta no arquivo na pasta do love
	recorde = recorde*1		--mas ele lê como string, isso aqui é pra transformar o valor em numero
	highscore = love.filesystem.read("recorde.txt")
	highscore = highscore*1
	sucesso=false	--Isso aqui é necessario la na linha 625 e 628
	-----------------------------------------------------------------------------------------------------------------------------
			
	--INICIAR MIRAS
    mira = love.graphics.newImage("objetos/mira38.png")
    sniper = love.graphics.newImage ("objetos/mirasnp.png")
	----------------------------------------------------------------BONUS-----------------------------------------------------------------------------------
	lifeb= love.graphics.newImage("objetos/lifeb.png")	--BONUS DE LIFE, TROCA A IMAGEM, SE QUISER COLOCAR UM COGUMELO DO MARIO OU UMA LATA DE PAÇOCA ACHO QUE FICA LEGAL KKK
	lifebx=math.random (0,1200)
	lifeby=math.random (0,430)
	
	rifleb= love.graphics.newImage("objetos/rifleb.png")	--AS BALAS DE RIFLES ESTÃO LIMITADAS, QUANDO CHEGA A ZERO APARECE ESSA IMAGEM NA TELA PRA ATIRAR E GANHAR BALAS
	riflebx=math.random (0,1200)
	rifleby=math.random (0,430)
	
	pacoquinha=false --CONDIÇÃO PARA CHEAT ATIVADO OU NÃO --funcionando parcialmente 
	------------------------------------------------------------------------------------------------------------------------------------------------------
	 
    -- Carregar tambores 38
	tambor6= love.graphics.newImage("objetos/tambor6.png")
	tambor5= love.graphics.newImage("objetos/tambor5.png")
	tambor4= love.graphics.newImage("objetos/tambor4.png")
	tambor3= love.graphics.newImage("objetos/tambor3.png")
	tambor2= love.graphics.newImage("objetos/tambor2.png")
	tambor1= love.graphics.newImage("objetos/tambor1.png")
	tambor0= love.graphics.newImage("objetos/tambor0.png")

	--Carregar cartucho rifle snipe
	rifle5= love.graphics.newImage("objetos/rifle5.png")
	rifle4= love.graphics.newImage("objetos/rifle4.png")
	rifle3= love.graphics.newImage("objetos/rifle3.png")
	rifle2= love.graphics.newImage("objetos/rifle2.png")
	rifle1= love.graphics.newImage("objetos/rifle1.png")
	rifle0= love.graphics.newImage("objetos/rifle0.png")

	--INICIAR VARIAVEL LIFE 
	life = 10
	--INICAR AS IMAGENS LIFE
	life10= love.graphics.newImage("objetos/life10.png")
	life9= love.graphics.newImage("objetos/life9.png")
	life8= love.graphics.newImage("objetos/life8.png")
	life7= love.graphics.newImage("objetos/life7.png")
	life6= love.graphics.newImage("objetos/life6.png")
	life5= love.graphics.newImage("objetos/life5.png")
	life4= love.graphics.newImage("objetos/life4.png")
	life3= love.graphics.newImage("objetos/life3.png")
	life2= love.graphics.newImage("objetos/life2.png")
	life1= love.graphics.newImage("objetos/life1.png")
	life0= love.graphics.newImage("objetos/life0.png")


	----------------------------------------------------------------------------------
	-------------------CONDIÇÃO GAMEOVER

	telapreta = love.graphics.newImage("imagens/telapreta.png")
	youaredead0 = love.graphics.newImage("imagens/youaredead0.png")
	youaredead1 = love.graphics.newImage("imagens/youaredead1.png")
	youaredead2 = love.graphics.newImage("imagens/youaredead2.png")
	youaredead3 = love.graphics.newImage("imagens/youaredead3.png")
	youaredead4 = love.graphics.newImage("imagens/youaredead4.png")
	youaredead5 = love.graphics.newImage("imagens/youaredead5.png")
	youaredead6 = love.graphics.newImage("imagens/youaredead6.png")
	youaredead7 = love.graphics.newImage("imagens/youaredead7.png")
	youaredead8 = love.graphics.newImage("imagens/youaredead8.png")
	youaredead9 = love.graphics.newImage("imagens/youaredead9.png")
	youaredead10 = love.graphics.newImage("imagens/youaredead10.png")
	youaredead11 = love.graphics.newImage("imagens/youaredead11.png")
	youaredead12 = love.graphics.newImage("imagens/youaredead12.png")

	cont = 0
	temp = 0
	----------------------------------------------------------------------------------

	-----------------------------------------------------------------------------------
	--INICIAR SCORE
	score = 0
	--highscore() --FAZER LOGICA HIGH SCORE
	--CARREGAR FONTE
	fonte_berlin80= love.graphics.newFont("fonts/BRLNSDB.TTF", 80)
	fonte_impact20= love.graphics.newFont("fonts/impact.ttf", 20)
	------------------------------------------------------------------------------------

	--ARMA ESCOLHIDA com o espaço pressionado ou não.
	cartucho38 = true
	cartucho_rifle = false
		
	reload= love.graphics.newImage("objetos/reload.png") -- carregar audio reload
    faixascore = love.graphics.newImage("objetos/faixascore.png")
----------------------------------------------------------------------------
    --iniciando personagens (bandidos)
    bandido1 = love.graphics.newImage("imagens/bandido1.png")
	--Função que determina aleatoreamente a posição inicial do bondido
	bandido1x=math.random (0,1200)
	bandido1y=math.random (0,430)
	--hp do bandido
	bandido1hp=2

    bandido2 = love.graphics.newImage("imagens/bandido2.png")
	--Função que determina aleatoreamente a posição inicial do bondido
	bandido2x=math.random (0,1200)
	bandido2y=math.random (0,430)
	--hp do bandido
	bandido2hp=2

    bandido1_50 = love.graphics.newImage("imagens/bandido1_50.png")
	--Função que determina aleatoreamente a posição inicial do bondido
	bandido1_50x=math.random (0,1200)
	bandido1_50y=math.random (0,430)
	--hp do bandido
	bandido1_50hp=2
 
	----------------------------------------------------------

    --quantidade de bala
    bala1 = 6 -- 6 (balas)
    bala2 = 5

    --quantidad de tiros
    life = 10

--------------------------------------------PEGAR ALTURA E LARGURA DA JANELA--------------------------------------------------
    w = love.graphics.getWidth() 
	h = love.graphics.getHeight() 

	-----------------------------------SONS E MUSICAS----------------------------------------------------------------------
	--sound = love.audio.newSource("pling.wav", "static") -- "static" faz com que LÖVE carregue o arquivo na memória, 
	-- para efeitos curtos

	----------------------------MUSICAS------------------------------------------------
	--CARREGA AS MUSICAS

	prox_faixa = 0 -- contador pra mudar de musica
	proximalogic = false --fail
	proximatext = ("Proxima Musica") --fail
	tropa = love.audio.newSource("musica/tropa.ogg") 
	numb = love.audio.newSource("musica/numb.ogg")
	avicii = love.audio.newSource("musica/avicii.ogg")
	calvin = love.audio.newSource("musica/calvin.ogg")
	eric = love.audio.newSource("musica/eric.ogg")
	guetta = love.audio.newSource("musica/guetta.ogg")
	hakan = love.audio.newSource("musica/hakan.ogg")
	medina = love.audio.newSource("musica/medina.ogg")
	oskar = love.audio.newSource("musica/oskar.ogg")
	penetoz = love.audio.newSource("musica/penetoz.ogg")

	-------------------MUSICA MENU-------------------------------------------------

	menuaudio = love.audio.newSource("musica/menuaudio.ogg")

	--------------MUSICA GAMEOVER--------------------------------------------------

	audiogameover = love.audio.newSource("musica/audiogameover.ogg")

	------------------------SONS------------------------------------------------
	somtambor = love.audio.newSource("sons/somtambor.ogg", "static") --som de recarga do cartucho 38
	somtambor2 = love.audio.newSource("sons/somtambor2.ogg", "static") --som de recarda do rifle
	somtiro = love.audio.newSource("sons/somtiro.ogg") --som do 38
	somrifle = love.audio.newSource("sons/somrifle.ogg", "static") --som do rifle
	somreload = love.audio.newSource("sons/somreload.ogg", "static") 
	descarregada = love.audio.newSource("sons/descarregada.ogg", "static")
	balacaindo = love.audio.newSource("sons/balacaindo.ogg", "static")
	gritomenu = love.audio.newSource("sons/gritomenu.ogg", "static")

	--------------------------SONS BICHOS--------------------------------------------
	tiromorte = love.audio.newSource("sons/tiromorte.ogg", "static")
	tirovampiro = love.audio.newSource("sons/tirovampiro.ogg", "static")
	tirolobo = love.audio.newSource("sons/tirolobo.ogg", "static")
	ataquemorte = love.audio.newSource("sons/ataquemorte.ogg", "static")
	ataquevampiro = love.audio.newSource("sons/ataquevampiro.ogg", "static")
	ataquelobo = love.audio.newSource("sons/ataquelobo.ogg", "static")
	risadaterror = love.audio.newSource("sons/risadaterror.ogg", "static")
	somdeinvalido = love.audio.newSource("sons/somdeinvalido.ogg", "static")
	risadaperdeu = love.audio.newSource("sons/risadaperdeu.ogg", "static")
	-----------------------------------------------------SOBRE O TIMER---------------------------------------------------
	timer_start = love.timer.getTime()
	timercred = 0
	--------------------------------   -------------SOBRE A PERDA DE SCORE-----------------------------------------------
	--se liga no nome da variavel
	--timerbandido1_100 = 0

	---------------------------------------------------SEGUNDO--------------------------------
	sec = 0 
	
	
	----TESTE----
	startx=230 --coordenada onde começa a imagem no eixo x PARA USAR NO INSIDE BOX
	starty=390 --coordenada onde começa a imagem no eixo y para usar no INSIDE BOX
	quitx=890
	quity=390

	

	love.audio.play(menuaudio)
end 

function love.draw()
	love.graphics.draw(menufundo,0,0)
	love.graphics.draw(start, 230, 390)
	love.graphics.draw(quit, 890, 390)
	---MOUSE SOBRE TUDO
	love.graphics.setColor( 255, 255, 255)
	love.graphics.draw(cursormira, love.mouse.getX()-20, love.mouse.getY()-20)
	love.graphics.setColor( 255, 255, 255)
-----------------executa e repete sempre a musica do menu-----




-----------------------------------------------------------------------

end

function love.update(dt)

end

function love.mousereleased( x, y, button )

---------------------------------------------------CONDIÇÃO DE START NO MENU -------------------------------------------------

	if button == "l" then -- UM TIRO EM QUALQUER LUGAR DA TELA DO MENU FAZ ENTRAR NO JOGO, SÓ ALYSSON PRA CONSERTAR ISSO
		love.audio.play(somdeinvalido)
		if  (insideBox(x,y,startx,starty,start:getWidth(),start:getHeight())) then -- (X,Y)= REPRESENTA O TOQUE DO MOUSE. (STARTX E STARTY)= REPRESENTA A POSIÇÃO DA FIGURA, START É A FIGURA.d
			require("level1")
			require("musica")
			love.audio.stop(menuaudio) -- no momento que ele chamar a fase, para o audio do menu
			love.audio.stop(descarregada)
			love.audio.play(gritomenu)	
			timer_start = 0
		end
		if (insideBox(x,y,quitx,quity,quit:getWidth(),quit:getHeight())) then
			love.event.quit()
		end
	end

-------------------------------------------------------------------------------------------------------------------------------

end 



function love.mousepressed( x, y, button )
end 

function love.quit()
end


function insideBox( px, py, x, y, wx, wy )
	if px > x and px < x + wx then
		if py > y and py < y + wy then
			return true
		end
	end
	return false
end


