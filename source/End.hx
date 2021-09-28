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
		FlxG.sound.playMusic(Paths.music("AbyssalFactory"));

		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("Story Mode", balls, 'icon');
		#end

	}
	
	
	override function update(elapsed:Float) 
	{
		super.update(elapsed);
		
		if (controls.ACCEPT){
		//FlxG.sound.playMusic(Paths.music("BrainLeak"));
			FlxG.switchState(new StoryMenuState());
		}
	}
	
}