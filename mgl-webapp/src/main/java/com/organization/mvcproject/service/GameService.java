package com.organization.mvcproject.service;

import java.util.List;

import com.organization.mvcproject.model.Game;

public interface GameService {

	//CRUD Methods
	Game createGame(Game game);

	List<Game> readAllGames();
	
	boolean updateGame(Game game);
	
	boolean deleteGame(Long gameId);

	boolean deleteGame(String name);
}
