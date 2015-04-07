/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import br.unicamp.nonscope.Game;
import org.junit.After;
import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author Matheus
 */
public class GameJUnitTest {
    private Game game;
    
    public GameJUnitTest() {
    }
    
    @Before
    public void setUp() {
       System.out.println("Initializing Test....");
       game = new Game("Matheus Florêncio", "Regina Moraes");
    }
    
    @Test
    public void exchangePlayerToPlayerOneTest(){
        game.exchangePlayerToPlayerOne();
        assertNotSame("Expected: " + game.getPlayerOne().getPlayerName() + "|| Reached: " 
                + game.getCurrentPlayer().getPlayerName(), game.getPlayerOne(), game.getCurrentPlayer());
    }
    
    @Test
    public void exchangePlayerToPlayerTwoTest(){
        game.exchangePlayerToPlayerOne();
        assertNotSame("Expected: " + game.getPlayerTwo().getPlayerName() + "|| Reached: " 
                + game.getCurrentPlayer().getPlayerName(), game.getPlayerTwo(), game.getCurrentPlayer());
    }
    
    @Test
    public void isCurrentPlayerPlaying(){
        assertFalse("Player is playing? " + game.getCurrentPlayer().isPlaying(), game.getCurrentPlayer().isPlaying());
    }
    
    @After
    public void tearDown() {
        System.out.println("Closing Test....");
    }
    
}
