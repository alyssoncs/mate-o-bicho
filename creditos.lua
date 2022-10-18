--INCIADO NA LINHA 192 DO LEVEL1.LUA

function love.load()
	
end
	

function love.draw()

	if math.floor(timercred) < 250 then -- tempo para a mensagem MISSÃO CUMPRIDA ficar visivel
		love.graphics.draw(creditos1,0,0)
	end
	if math.floor(timercred) > 30 then -- tempo para começar a subir a lista de nome
		love.graphics.draw(creditos2,creditos2x,creditos2y)
		love.graphics.draw(creditos3,creditos3x,creditos3y) -- sobre junto, só que ele se inicia a 5730 em Y. 
		if creditos3y < 0 then
			creditos3y = 0
		end
	end

	if math.floor(timercred) > 14240 then -- fechar assim que a música parar. calculo perfeito
		love.event.quit()
	end
end

function love.update(dt)

	creditos2y = creditos2y - dt*60
	creditos3y = creditos3y - dt*60 
	timercred = timercred + dt*60 -- condição para reproduzir imagens por vez

	
end


function love.keypressed( key, unicode ) ---pra não reproduzir outras musicas

	if key == "f" then 	
		love.audio.stop(penetoz)

		love.audio.stop(tropa)
	
		love.audio.stop(numb)
	
		love.audio.stop(avicii)

		love.audio.stop(calvin)

		love.audio.stop(eric)

		love.audio.stop(guetta)

		love.audio.stop(hakan)
	
		love.audio.stop(medina)
 
		love.audio.stop(oskar)
	end

--aperta e solta ae ativa.
end

function love.mousepressed( x, y, button )


end

function love.mousepressed( x, y, button )

end
