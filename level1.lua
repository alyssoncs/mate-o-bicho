----------------------------LINHAS: 42,308,324,331,397.   (ACONSELHO COPIAR O MOUSE PRESSED TODO, PQ EU MODIFIQEI MUITA COISA)--------------------------

function love.load() -- essa função é executada apenas uma vez, no início do seu programa

	
end


function love.keypressed(key,unicode)
	--------------------------------------TRAPAÇA-------------------------------------------------------------

if key == t then
	pacoquinha = ("true")		--QUANDO APERTA "q" ENTRA NA TRAPAÇA DE BALAS INFINITAS
	love.graphics.draw(trapaca, 0, 0); -- nome trapaça
end

end	


function love.draw() -- função de desenho, tudo que colocamos dentro dessa função será desenhado na tela
	

	
	-- Colocar mouse invisivel
    love.mouse.setVisible(false)

	love.graphics.draw(favela,0,0); --imagem de fundo da fase

	----------------------------------------------------------MODO ALEATORIO BANDIDO--------------------------------------------------
    love.graphics.draw( bandido1, bandido1x,bandido1y); -- colocado em modo aleatorio de aparecer
	if ftime1<=0 then	--Quando o tempo chega a zero ele perde faz perder vida
		life=life-1
		love.audio.play(ataquemorte)
		bandido1x=math.random (0,1000)	-- A POSIÇÃO MUDA ALEATORIAMENTE DE NOVO
		bandido1y=math.random (0,300)
		ftime1=5	-- E O FTIME RETORTA PRA 5
	end
    love.graphics.draw( bandido2, bandido2x,bandido2y); -- colocado em modo aleatorio de aparece
	if ftime2<=0 then
		life=life-1
		love.audio.play(ataquevampiro)
		bandido2x=math.random (0,1000)
		bandido2y=math.random (0,300)
		ftime2=5
	end
    love.graphics.draw( bandido1_50, bandido1_50x,bandido1_50y); -- colocado em modo aleatorio de aparece
	if ftime3<=0 then
		life=life-1
		love.audio.play(ataquelobo)
		bandido1_50x=math.random (0,1000)
		bandido1_50y=math.random (0,300)
		ftime3=5
	end
	-------------------------------------------------------CARTUCHO DE RIFLE E BONUS DE PAÇOCA---------------------------------------------
    if life<=1 then -- pra ficar mais dificil
		love.graphics.draw(lifeb,lifebx,lifeby) -- aparece em modo aleatorio
	else
		love.graphics.draw(lifeb,-5000,-5000) 
	end
	if bala2==0 then 
		love.graphics.draw(rifleb,riflebx,rifleby)
	else
		love.graphics.draw(rifleb,-5000,-5000)
	end
	----------------------------------------------------------------------------------------------------------------------------------------
	if love.keyboard.isDown(" ") then --mantendo pressionado, ativa o rifle
		cartucho_rifle = true 
		cartucho38 = false -- rifle sendo verdadeiro, anula 38.
		love.graphics.draw( sniper, love.mouse.getX()-1350, love.mouse.getY()-987);
		love.graphics.draw(mira, -5000, -5000) -- ESCONDENDO MIRA 38 
	else
		love.graphics.draw(mira, love.mouse.getX()-15, love.mouse.getY()-15)
		cartucho_rifle = false
		cartucho38 = true
	end

-----------------------------------------------------------------------------------------------------------------------------
	love.graphics.draw( faixascore,0,600); -- a faixa tem que ser superior à mira.

	--love.graphics.setColor(0,200,200)

	--Condição de exibição de rifle ou 38
	if cartucho_rifle == true then  -- se rifle ativado, muda a bala do rifle
		if(bala2 == 5) then love.graphics.draw( rifle5,1215,610);
		else
		if(bala2 == 4) then love.graphics.draw( rifle4,1215,610);
		else
		if(bala2 == 3) then love.graphics.draw( rifle3,1215,610);
		else
		if(bala2 == 2) then love.graphics.draw( rifle2,1215,610);
		else
		if(bala2 == 1) then love.graphics.draw( rifle1,1215,610);
		else
		if(bala2 == 0) then love.graphics.draw( rifle0,1215,610);
		end
		end
		end
		end
		end
		end
	end	
	
	if cartucho38 == true then -- se 38 ativado, muda a bala do 38
		if(bala1 == 6) then love.graphics.draw( tambor6,1215,610);
		else
		if(bala1 == 5) then love.graphics.draw( tambor5,1215,610);
		else
		if(bala1 == 4) then love.graphics.draw( tambor4,1215,610);
		else
		if(bala1 == 3) then love.graphics.draw( tambor3,1215,610);
		else
		if(bala1 == 2) then love.graphics.draw( tambor2,1215,610);
		else
		if(bala1 == 1) then love.graphics.draw( tambor1,1215,610);
		else
		if(bala1 == 0) then love.graphics.draw( tambor0,1215,610);
		end
		end
		end
		end
		end
		end
		end
	end	
	
---------------------IMPRIMINDO O SOM RELOAD E A IMAGEM RELOAD----------------------------------

-------------SE ARMA ESCOLHIDA FOR 38 ELE  VAI IMPRIMIR RELOAD SOMENTE PRA ELE--------------------
	if cartucho38 == true then
		if(bala1 == 0) then love.graphics.draw(reload,1215,565);
			--som reload
			love.audio.play(somreload)

		end
	end	
-------------SE ARMA ESCOLHIDA FOR 38 ELE  VAI IMPRIMIR RELOAD SOMENTE PRA ELE---------------------
	if cartucho_rifle == true then
		if(bala2 == 0) then love.graphics.draw(reload,1215,565);
			--som reload
			love.audio.play(somreload)

		end
	end	

	--love.graphics.draw(life10, 700, 625); --IMPRESSÃO PRA APARECER LIFE NO INICIO


------------------------------------------IMPRIMINDO LIFE-----------------------------------------------
	if life == 10 then
		love.graphics.draw(life10, 700, 625);
	end
	if life == 9 then
		love.graphics.draw(life9, 700, 625);
	end
	if life == 8 then
		love.graphics.draw(life8, 700, 625);
	end
	if life == 7 then
		love.graphics.draw(life7, 700, 625);
	end	
	if life == 6 then
		love.graphics.draw(life6, 700, 625);
	end
	if life == 5 then
		love.graphics.draw(life5, 700, 625);
	end
	if life == 4 then
		love.graphics.draw(life4, 700, 625);
	end
	if life == 3 then
		love.graphics.draw(life3, 700, 625);
	end
	if life == 2 then
		love.graphics.draw(life2, 700, 625);
	end
	if life == 1 then
		love.graphics.draw(life1, 700, 625);
	end
	if life < 0 then -- se passar de 0 pro negativo, volta pra zero.
		life = 0
	end
	if life == 0 then
		love.audio.play(risadaperdeu)
		--------------------------------------------------CONDIÇÃO PLAY MUSICA GAMEOVER--------------------
		love.audio.play(audiogameover)	
		love.audio.stop(penetoz)
		penetoz:setVolume(0)
		love.audio.stop(tropa)
		tropa:setVolume(0)
		love.audio.stop(numb)
		numb:setVolume(0)
		love.audio.stop(avicii)
		avicii:setVolume(0)
		love.audio.stop(calvin)
		calvin:setVolume(0)
		love.audio.stop(eric)
		eric:setVolume(0)
		love.audio.stop(guetta)
		guetta:setVolume(0)
		love.audio.stop(hakan)
		hakan:setVolume(0)
		love.audio.stop(medina)
		medina:setVolume(0)
		love.audio.stop(oskar)
		oskar:setVolume(0)
		require("gameover")
	end

-----------------------------------------CONDIÇÃO DE CONCLUSÃO DO JOGO -----------------------------
	
	if score > 200 then -- PRA APRESENTAÇÃO COLOCAMOS SÓ 10 PONTOS, MAS O PROJETO ORIGINAL TEM QUE SER 1000.
		love.audio.stop();
		love.audio.play(zerado)
		love.audio.play(aplausos)
		timer_start2 = love.timer.getTime()	
		require("creditos")
	end

----------------------------------------------------ESCOLHENDO FONTES E ESCREVENDO SCORE----------------------------------------
	love.graphics.setFont(fonte_berlin80)
--IMPRIMIR SCORE 
	love.graphics.setColor( 255, 200, 0);	love.graphics.print(score, 280, 596); love.graphics.setColor( 255, 255, 255);
	
	love.graphics.setFont(fonte_impact20)

--IMPRIMIR HIGH SCORE
	love.graphics.setColor( 255, 200, 0); love.graphics.print(highscore, 178, 674); love.graphics.setColor( 255, 255, 255);


----------------------------------------------------------------------------------------------------------------------------

--COLOCAR IMPRESSÃO DE NOMES NA TELA

--IMPRIMIR TEXTO PROXIMA MUSICA ------------------------------

-----TESTE----


if highscore < score then
	highscore = score
end


	----------------PRINTAR TEMPO-------------------------------------------
love.graphics.setColor( 255, 200, 0); love.graphics.print(math.floor(timer_start), 113, 701); love.graphics.setColor( 255, 255, 255);

	if  (insideBox(bandido1x,bandido1y,bandido2x,bandido2y,bandido2:getWidth(),bandido2:getHeight())) then
		bandido1x=math.random (0,1000)	--esse comando gera um valor aleatorio pra X
		bandido1y=math.random (0,300)	--e esse um valor aleatorio pra Y
	else
		if (insideBox(bandido1x,bandido1y,bandido1_50x,bandido1_50y,bandido1_50:getWidth(),bandido1_50:getHeight())) then
			bandido1x=math.random (0,1000)	--esse comando gera um valor aleatorio pra X
			bandido1y=math.random (0,300)	--e esse um valor aleatorio pra Y
		else
			if (insideBox(bandido2x,bandido2y,bandido1x,bandido1y,bandido1:getWidth(),bandido1:getHeight())) then
				bandido2x=math.random (0,1000)	--esse comando gera um valor aleatorio pra X
				bandido2y=math.random (0,300)	--e esse um valor aleatorio pra Y
			else
				if (insideBox(bandido2x,bandido2y,bandido1_50x,bandido1_50y,bandido1_50:getWidth(),bandido1_50:getHeight())) then
					bandido2x=math.random (0,1000)	--esse comando gera um valor aleatorio pra X
					bandido2y=math.random (0,300)	--e esse um valor aleatorio pra Y
				else
					if (insideBox(bandido1_50x,bandido1_50y,bandido1x,bandido1y,bandido1:getWidth(),bandido1:getHeight())) then
						bandido1_50x=math.random (0,1000)	--esse comando gera um valor aleatorio pra X
						bandido1_50y=math.random (0,300)	--e esse um valor aleatorio pra Y
					else
						if (insideBox(bandido1_50x,bandido1_50y,bandido2x,bandido2y,bandido2:getWidth(),bandido2:getHeight())) then
							bandido1_50x=math.random (0,1000)	--esse comando gera um valor aleatorio pra X
							bandido1_50y=math.random (0,300)	--e esse um valor aleatorio pra Y
						end
					end
				end
			end
		end
	end	
--------------------------------------------------PRINTAR TIMER DE CADA MONSTRO------------------------
	love.graphics.setColor( 255, 20, 20)
	love.graphics.print(math.floor(ftime1), bandido1x+150, bandido1y-20); --morte
	love.graphics.print(math.floor(ftime2), bandido2x+95, bandido2y-20); --vampiro
	love.graphics.print(math.floor(ftime3), bandido1_50x+155, bandido1_50y-20); --lobisomen
	love.graphics.setColor( 255, 255, 255)

------------------------------------------------------------------------------------------------------
------------------------------------CHEAT DA VIDA INFINITA--------------------------------
	if pacoquinha==true then 
		love.graphics.draw(trapaca, 0, 500); -- PRINTAR FAIXA 
		if life<10 then
			life=10
		end
	end

end -- end da função draw

function love.update(dt)
	
---------------------------------------------------LOGICA PRA RESOLVER A SOBREPOSIÇÃO-------------------------------


----------------------------------------------FUNÇÃO TEMPO---------------------------------
timer_start = timer_start + (dt)

-------------------------------------- CONTADORES DE TEMPO -----------------------------------
ftime1=ftime1-dt	-- COMEÇA COM 5 E VAI DIMINUINDO CONFORME DT AUMENTA
ftime2=ftime2-dt
ftime3=ftime3-dt

----------------------------------------------------------------------------------------------


end


function love.focus(bool)


end


function love.mousepressed( x, y, button )



--Imprimir som se arma descarregada e tentativa de tiro

	if cartucho38 == true then -- arma escolhida
		if bala1> 0 and button=="l" then

		----------------------------------INSIDEBOX DO BONUS DE VIDA--------------------------------------------
			if(insideBox(x,y,lifebx,lifeby,lifeb:getWidth(),lifeb:getHeight())) then
				life=life+1
				lifebx=math.random (0,1200)
				lifeby=math.random (0,430)
			end
		---------------------------------------------------------------------------------------------------------
		-------------------------------INSIDEBOX DO CHARTUCHO DE RIFLE (SÓ DA PRA PEGAR COM A 38)----------------------------------------------
			if(insideBox(x,y,riflebx,rifleby,rifleb:getWidth(),rifleb:getHeight())) then
				bala2=5
				lifebx=math.random (0,1200)
				lifeby=math.random (0,430)
				love.audio.play(somtambor2)
			end			
		-----------------------------------------------------------------------------------------------------------------------------------------
			
			love.audio.play(somtiro)	
			--somtiro:setVolume(0.5)
-----------------------------------------------------------------BANDIDO1_100-----------------------------------------------------------------
			if(insideBox(x,y,bandido1x,bandido1y,bandido1:getWidth(),bandido1:getHeight())) then --tudo isso é pra quando tiver usando a .38
				love.audio.play(tiromorte)
				score = score + 1 -- AUMENTA O SCORE
				print("sua pontuacao eh: ", score) --PRINTA NO TERMINAL
				if bandido1hp>0 then
					bandido1hp=bandido1hp-1
				end
			end
			if bandido1hp==0 then	--quando o hp chegar em zero
				ftime1=5
				bandido1x=math.random (0,1200)	--esse comando gera um valor aleatorio pra X
				bandido1y=math.random (0,430)	--e esse um valor aleatorio pra Y
---------------------------------------------------------------LOGICA SOBREPOSIÇÃO--------------------------------------------


				bandido1hp=2	--no final ele volta com o msm hp
			end
-----------------------------------------------------------------BANDIDO1_75-----------------------------------------------------------------
			if(insideBox(x,y,bandido2x,bandido2y,bandido2:getWidth(),bandido2:getHeight())) then --tudo isso é pra quando tiver usando a .38
				love.audio.play(tirovampiro)
				score = score + 1 -- AUMENTA O SCORE
				print("sua pontuacao eh: ", score) --PRINTA NO TERMINAL
				if bandido2hp>0 then
					bandido2hp=bandido2hp-1
				end
			end
			if bandido2hp==0 then	--quando o hp chegar em zero
				ftime2=5
				bandido2x=math.random (0,1200)	--esse comando gera um valor aleatorio pra X
				bandido2y=math.random (0,430)	--e esse um valor aleatorio pra Y
				bandido2hp=2	--no final ele volta com o msm hp
			end
-----------------------------------------------------------------BANDIDO1_50-----------------------------------------------------------------
			if(insideBox(x,y,bandido1_50x,bandido1_50y,bandido1_50:getWidth(),bandido1_50:getHeight())) then --tudo isso é pra quando tiver usando a .38
				love.audio.play(tirolobo)
				score = score + 1 -- AUMENTA O SCORE
				print("sua pontuacao eh: ", score) --PRINTA NO TERMINAL
				if bandido1_50hp>0 then
					bandido1_50hp=bandido1_50hp-1
				end
			end
			if bandido1_50hp==0 then	--quando o hp chegar em zero
				ftime3=5
				bandido1_50x=math.random (0,1200)	--esse comando gera um valor aleatorio pra X
				bandido1_50y=math.random (0,430)	--e esse um valor aleatorio pra Y
				bandido1_50hp=2	--no final ele volta com o msm hp
			end
------------------------------------------------------------------------------------------------------------------------------------------------

			if bala1 == 0 then --quando ele zerar, ele não vai subtrair 1. Isso garante que a bala se limite a zero.
				bala1 = 0;
			else
				bala1 = bala1 - 1
			end
			------------------------------------CHEAT DA BALA INFINITA--------------------------------
			if pacoquinha==true then --- BALA INFINITA 38
				if bala1<6 then
					bala1=6
				end
			end



			---------------------------------------------------------------------------------------------------
			--print("quantidade de tiro: ", quanttiro1)
		else
			if button=="l" then
				love.audio.play(descarregada)
			end
		end

		if bala1 ~= 6 then --garante que só recarregue se tiver com menos de 6 balas
			if(button == "r") then --usa botão direito pra recarregar o tambor
				love.audio.play(somtambor) 
				bala1 = 6
			end
		end	
	end


--CONDIÇÃO DE ESCOLHA RIFLE
	if cartucho_rifle == true then
		if bala2 > 0 then
			if button=="l" then	
			------------------------------INSIDEBOX DO BONUS DE LIFE, PRA PODER PEGAR COM O RIFLE---------------------------
				if(insideBox(x,y,lifebx,lifeby,lifeb:getWidth(),lifeb:getHeight())) then
					life=life+1
					lifebx=math.random (0,1200)
					lifeby=math.random (0,430)
			----------------------------------------------------------------------------------------------
				end
				love.audio.play(somrifle)
				love.audio.play(balacaindo) -- som bala caindo no chão

-----------------------------------------------------------------BANDIDO1_100-----------------------------------------------------------------
				if(insideBox(x,y,bandido1x,bandido1y,bandido1:getWidth(),bandido1:getHeight())) then --tudo isso é pra quando tiver usando a .38
					love.audio.play(tiromorte)
					score = score + 2 -- AUMENTA O SCORE
					print("sua pontuacao eh: ", score) --PRINTA NO TERMINAL
					if bandido1hp>0 then
						bandido1hp=0
					end
				end
				if bandido1hp==0 then	--quando o hp chegar em zero
					ftime1=5
					bandido1x=math.random (0,1200)	--esse comando gera um valor aleatorio pra X
					bandido1y=math.random (0,430)	--e esse um valor aleatorio pra Y
					bandido1hp=2	--no final ele volta com o msm hp
				end
-----------------------------------------------------------------BANDIDO1_75-----------------------------------------------------------------
				if(insideBox(x,y,bandido2x,bandido2y,bandido2:getWidth(),bandido2:getHeight())) then --tudo isso é pra quando tiver usando a .38
					love.audio.play(tirovampiro)
					score = score + 2 -- AUMENTA O SCORE
					print("sua pontuacao eh: ", score) --PRINTA NO TERMINAL
					if bandido2hp>0 then
						bandido2hp=0
					end
				end
				if bandido2hp==0 then	--quando o hp chegar em zero
					ftime2=5
					bandido2x=math.random (0,1200)	--esse comando gera um valor aleatorio pra X
					bandido2y=math.random (0,430)	--e esse um valor aleatorio pra Y
					bandido2hp=2	--no final ele volta com o msm hp
				end
-----------------------------------------------------------------BANDIDO1_50-----------------------------------------------------------------
				if(insideBox(x,y,bandido1_50x,bandido1_50y,bandido1_50:getWidth(),bandido1_50:getHeight())) then --tudo isso é pra quando tiver usando a .38
					love.audio.play(tirolobo)
					score = score + 2 -- AUMENTA O SCORE
					print("sua pontuacao eh: ", score) --PRINTA NO TERMINAL
					if bandido1_50hp>0 then
						bandido1_50hp=0
					end
				end
				if bandido1_50hp==0 then	--quando o hp chegar em zero
					ftime3=5
					bandido1_50x=math.random (0,1200)	--esse comando gera um valor aleatorio pra X
					bandido1_50y=math.random (0,430)	--e esse um valor aleatorio pra Y
					bandido1_50hp=2	--no final ele volta com o msm hp
				end
------------------------------------------------------------------------------------------------------------------------------------------------
				if bala2 == 0 then
					bala2 = 0;
				else
					bala2 = bala2 -1 
				end
				if pacoquinha==true then -----------CHEAT BALA RIFLE INFINITA 
					if bala2<5 then
						bala2=5
					end
				end
			end	
		else
			if button=="l" then
				love.audio.play(descarregada) 
			end
		end
		
		
	end

	if pacoquinha==true then --- BALA INFINITA 38
		if bala1<6 then
			bala1=6
		end
	end

end


function love.mousereleased( x, y, button )


end


function love.keyreleased( key, unicode )

	--------------------------------------TRAPAÇA-------------------------------------------------------------
	if key == "t" then
		pacoquinha = true		--QUANDO APERTA "q" ENTRA NA TRAPAÇA DE BALAS INFINITAS
		 -- nome trapaça
	end

end

function love.keypressed(key,unicode)


end	

function love.quit()

-----------------------------------------Logica do highscore----------------------------------------------------------
	if highscore>recorde then
		recorde=highscore	--recorde é uma variavel que guarda o ultimo valor do highscore e não se modifica
		sucesso=true		--isso é importante...
	end
	
	sucesso = love.filesystem.write( "recorde.txt", recorde )	--para isso funcionar, isso cria um arquivo no %appdata% chamado recorde.txt, foi a unica maneira que eu encontrei de modificar um aquivo por aqui
-----------------------------------------------------------------------------------------------------------------------	
end



function insideBox( px, py, x, y, wx, wy )
	if px > x and px < x + wx then
		if py > y and py < y + wy then
			return true
		end
	end
	return false
end
