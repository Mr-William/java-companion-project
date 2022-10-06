<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mgl" %>
    <!DOCTYPE html>
        <html lang="en">
        <head>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
        <script src="resources/static/js/games.module.js"></script>
        <script src="resources/static/js/service/games.service.js"></script>
        <script src="resources/static/js/controller/games.controller.js"></script>
            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

            <title>Mist Game Library - New Review</title>
            <link rel="icon" href="resources/static/images/favicon.ico" />
            <style type="text/css">
                body {
                	background-image:
                		url('https://ak6.picdn.net/shutterstock/videos/1024598666/thumb/1.jpg');
                	background-repeat: no-repeat;
                	background-size: cover;
                }
            </style>
        </head>

        <body ng-app="GameLibraryApp" class="ng-cloak">
           <mgl:myNav />
            <div id="ReviewFormDiv" class="container" ng-controller="GameLibraryController as ctrl">
                <br>
                <form ng-submit="ctrl.addReview()"name="submitReviewForm" method="POST" >
                    <table class="table table-dark text-light">
                    	<tr>
                    		<td><label>Select a game from the list</label> </td>
                    		<td><select id="gameSelection" name="selectedGame" id="gameSelect" class="chzn-select"
                    			data-ng-options="game.name as game.name for game in ctrl.games"
                    			data-ng-model="ctrl.selectedGame"
                    			style="width: 300px" required><option value="">--Select Game--</option></select></td>                    		
                        </tr>
                        <tr>
                            <td><label>Review Body*</label></td>
                            <td><textarea name="reviewBody" id="reviewBody" class="form-control" placeholder="What did you like/dislike about the game? [required]" required></textarea></td>
                        </tr>
                        <tr>
                            <td><label>Author</label></td>
                            <td><input type="text" name="author" id="reviewAuthor" class="form-control" placeholder="Your name (leave blank to leave an anonymous review)"></input>
                            </td>
                        </tr>
                        <tr>
                            <td><label>Rating</label></td>
                            <td><select id="ratingSelection" name="rating" id="reviewRating" class="chzn-select" style="width: 100px" required>
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
							<option value=4>4</option>
							<option value=5>5</option>
					</select></td>
                        </tr>
                        <tr>
                            <td><input type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </body>
        <script type="text/javascript"></script>

        </html>