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
public class Player {
    private boolean isPlaying;
    private String playerName;
    
    public Player(String _playerName){
        this.playerName = _playerName;
    }
    
    public void setIsPlaying(boolean _isPlaying){
        this.isPlaying = _isPlaying;
    }
    
    public boolean isPlaying(){
        return this.isIsPlaying();
    }

    /**
     * @return the isPlaying
     */
    public boolean isIsPlaying() {
        return isPlaying;
    }

    /**
     * @return the playerName
     */
    public String getPlayerName() {
        return playerName;
    }

    /**
     * @param playerName the playerName to set
     */
    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }
    
    
}
