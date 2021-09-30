package;
import flixel.*;
import Discord.DiscordClient;

/**
 * ...
 * @author bbpanzu
 * THANK YOU BBPANZU :pray: !!
 */
class End extends MusicBeatState
{
    var balls = null;
	var balls2 = null;
	public function new(ending:String) 
	{
        balls = ending;
		super();
	}
	
	override function create() 
	{
		super.create();
		
		var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("weekFax/Endings/" + balls));
		add(bg);

		switch(balls){
			case null:
				FlxG.sound.playMusic(Paths.music("AbyssalFactory"));
			case "True Ending":
				FlxG.sound.playMusic(Paths.music("Ending_True"));
			case "Lame Ending":
				FlxG.sound.play(Paths.sound("botplayending"));
			case "Practice Ending":
				FlxG.sound.playMusic(Paths.music("Ending_practice"));
		}
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("Story Mode", balls, 'ending');
		#end
	}
	
	
	override function update(elapsed:Float) 
	{
		super.update(elapsed);
		
		if (controls.ACCEPT){
			if(balls == "Lame Ending"){
				FlxG.sound.playMusic(Paths.music("Ending_butyoucheated"));
			}
			FlxG.switchState(new StoryMenuState());
		}
	}
	
}