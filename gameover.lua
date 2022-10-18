function love.load()
	
end

function update(dt)
	-- body
end

function love.draw()
	
	if temp == 0 then
		love.graphics.draw(youaredead0, 0, 0);
	end
	if temp == 1 then
		love.graphics.draw(youaredead1, 0, 0);
	end	
	if temp == 2 then
		love.graphics.draw(youaredead2, 0, 0);
	end
	if temp == 3 then
		love.graphics.draw(youaredead3, 0, 0);
	end
	if temp == 4 then
		love.graphics.draw(youaredead4, 0, 0);
	end	
	if temp == 5 then
		love.graphics.draw(youaredead5, 0, 0);
	end
	if temp == 6 then
		love.graphics.draw(youaredead6, 0, 0);
	end
	if temp == 7 then
		love.graphics.draw(youaredead7, 0, 0);
	end	
	if temp == 8 then
		love.graphics.draw(youaredead8, 0, 0);
	end
	if temp == 9 then
		love.graphics.draw(youaredead9, 0, 0);
	end
	if temp == 10 then
		love.graphics.draw(youaredead10, 0, 0);
	end
	if temp == 11 then
		love.graphics.draw(youaredead11, 0, 0);
	end
	if temp == 12 then
		love.graphics.draw(youaredead12, 0, 0);
	end
	if temp > 12 then
		love.graphics.draw(youaredead12, 0, 0);
	end



	-------------------------------PARAR TODAS AS MUSICAS AO APERTAR F-----------------
function love.keypressed( key, unicode )

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

end
function love.update(dt)
	cont = cont + (dt) + 0.01 -- pra ficar um pouquinho mais rapido
	temp = (math.floor(cont));	

end

function love.mousepressed( x, y, button )

end