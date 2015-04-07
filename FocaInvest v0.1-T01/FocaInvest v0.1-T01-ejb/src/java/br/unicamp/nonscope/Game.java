/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.nonscope;

/**
 *
 * @author Matheus
 */
public class Game {
    private Player playerOne;
    private Player playerTwo;
    private Player currentPlayer;
    
    public Game(String _playerOneName, String _playerTwoName){
        this.playerOne = new Player(_playerOneName);
        this.playerTwo = new Player(_playerTwoName);         
    }
    
    public void exchangePlayerToPlayerOne(){
        this.setCurrentPlayer(getPlayerOne());
    }
    
    public void exchangePlayerToPlayerTwo(){
        this.setCurrentPlayer(getPlayerTwo());
    }

    /**
     * @return the playerOne
     */
    public Player getPlayerOne() {
        return playerOne;
    }

    /**
     * @param playerOne the playerOne to set
     */
    public void setPlayerOne(Player playerOne) {
        this.playerOne = playerOne;
    }

    /**
     * @return the playerTwo
     */
    public Player getPlayerTwo() {
        return playerTwo;
    }

    /**
     * @param playerTwo the playerTwo to set
     */
    public void setPlayerTwo(Player playerTwo) {
        this.playerTwo = playerTwo;
    }

    /**
     * @return the currentPlayer
     */
    public Player getCurrentPlayer() {
        return currentPlayer;
    }

    /**
     * @param currentPlayer the currentPlayer to set
     */
    public void setCurrentPlayer(Player currentPlayer) {
        this.currentPlayer = currentPlayer;
    }
    
    
}
