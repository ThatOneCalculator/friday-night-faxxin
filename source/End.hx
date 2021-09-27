package;
import flixel.*;

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
		
		var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("weekFax/" + balls));
		add(bg);
		FlxG.sound.playMusic(Paths.music("AbyssalFactory"));
	}
	
	
	override function update(elapsed:Float) 
	{
		super.update(elapsed);
		
		if (controls.ACCEPT){
		FlxG.sound.playMusic(Paths.music("BrainLeak"));
			FlxG.switchState(new StoryMenuState());
		}
	}
	
}