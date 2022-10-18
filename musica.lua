
love.audio.play(tropa)
tropa:setVolume(0.5)

--------------------------------------------------------------------------------------------------------------------------------


function love.keypressed( key, unicode )

		if key == "f" then 
			prox_faixa = prox_faixa + 1
		end
		if prox_faixa == 10 then
			prox_faixa = 0
		end

			if prox_faixa == 0 then 
				love.audio.stop(penetoz)
				love.audio.play(tropa)
				tropa:setVolume(0.5)
			end
			if prox_faixa == 1 then 
				love.audio.stop(tropa)
				love.audio.play(numb)
				numb:setVolume(0.5)
			end
			if prox_faixa == 2 then 
				love.audio.stop(numb)
				love.audio.play(avicii)
				avicii:setVolume(0.5)
			end
			if prox_faixa == 3 then 
				love.audio.stop(avicii)
				love.audio.play(calvin)
				calvin:setVolume(0.5)
			end
			if prox_faixa == 4 then 
				love.audio.stop(calvin)
				love.audio.play(eric)
				eric:setVolume(0.5)
			end
			if prox_faixa == 5 then 
				love.audio.stop(eric)
				love.audio.play(guetta)
				guetta:setVolume(0.5)
			end
			if prox_faixa == 6 then 
				love.audio.stop(guetta)
				love.audio.play(hakan)
				hakan:setVolume(0.7)
			end
			if prox_faixa == 7 then 
				love.audio.stop(hakan)
				love.audio.play(medina)
				medina:setVolume(0.5)
			end
			if prox_faixa == 8 then 
				love.audio.stop(medina)
				love.audio.play(oskar)
				oskar:setVolume(0.5)
			end
			if prox_faixa == 9 then 
				love.audio.stop(oskar)
				love.audio.play(penetoz)
				penetoz:setVolume(0.5)
			end
--aperta e solta ae ativa.
end
