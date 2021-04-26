package tictactoe;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;
import tictactoe.MainPage.MainPageBase;


public class Tictactoe extends Application {
    /*
        This Class is the Map Class in our Game
            
        Which lead to The Scene you Choose
    */    
    
    @Override
    public void start(Stage stage) throws Exception {
        
        /* 
            This Function which responsible for Starting the Game
        */            
        MainPageBase root = new MainPageBase();
    
        Scene scene = new Scene(root);
        
        stage.setScene(scene);
        
        stage.setTitle("XO Game");
        
        stage.getIcons().add((new Image(getClass().getResource("Images/xoicon.png").toExternalForm())));
        
        //This Method to Prevent user from full screen mode
        
        stage.maximizedProperty().addListener((observable, oldValue, newValue) -> {
            if(newValue) 
            {
                stage.setMaximized(false);
            }
        });
        
        stage.setResizable(false); //This Method to Prevent user from Resize Mode
       
        stage.show(); //This Method to Show The Game
        
        
    }
    
    public static void main(String[] args) {
        launch(args);
    }  
}
