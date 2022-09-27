package com.organization.mvcproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.organization.mvcproject.model.Game;
import com.organization.mvcproject.repository.MockGameDAO;

@Service
public class GameServiceImp implements GameService {
	
	@Autowired
	private MockGameDAO mockDao;
	
	@Override
	public List<Game> readAllGames() {
		return mockDao.retrieveAllGames();
	}

	@Override
	public Game createGame(Game game) {
		
		return mockDao.saveGame(game);
	}

	@Override
	public boolean deleteGame(Long id) {
		
		return mockDao.deleteGameById(id);
	}
	
	@Override 
	public boolean deleteGame(String name) {
		return mockDao.deleteGameByName(name);
	}

	@Override
	public boolean updateGame(Game game) {
		
		return mockDao.updateGame(game);
	}

}