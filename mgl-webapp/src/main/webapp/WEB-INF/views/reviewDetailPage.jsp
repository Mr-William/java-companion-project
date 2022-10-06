<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mgl" %>
<!DOCTYPE html>
    <html lang="en">

    <head>
    	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
        <script src="resources/static/js/games.module.js" ></script>
        <script src="resources/static/js/service/games.service.js"></script>
        <script src="resources/static/js/controller/games.controller.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Mist Game Library - Review Detail</title>
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

    <body>
     	<mgl:myNav/>
        <br>
        <div>
        <h2 class="text-light">Confirm Your Review</h2>
        <div class="container" ng-controller="GameLibraryController as ctrl">
        <table class="table table-dark text-light">
        	<tr>
        		<td>Game Reviewed</td>
        		<td>
        			<p>${submittedReview.selectedGame}</p>
        		</td>
        	</tr>
            <tr>
                <td>Review Body</td>
                <td>
                    <p>${submittedReview.reviewBody}</p>
                </td>
            </tr>
            <tr>
                <td>Author</td>
                <td>
                    <p>${submittedReview.author}</p>
                </td>
            </tr>
            <tr>
                <td>Rating</td>
                <td>
                    <p>${submittedReview.rating}</p>
                </td>
            </tr>
            <tr>
            	<td><button data-ng-click="ctrl.addReview(${submittedReview.reviewBody}
            											+${submittedReview.author}
            											+${submittedReview.rating},
            											${submittedReview.selectedGame})" class="btn btn-secondary btn-sm">Submit</button></td>
            	<td></td>
            </tr>
        </table>
        </div>
        </div>
    </body>
    <script type="text/javascript"></script>

    </html>