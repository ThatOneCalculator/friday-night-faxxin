package;

import flixel.effects.particles.FlxEmitter;
import flixel.effects.particles.FlxParticle;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.VarTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flash.display.BlendMode;

class ParticleSmoke extends FlxState{
    public var dad:Character;
	public var gf:Character;
	public var boyfriend:Boyfriend;

    override public function create():Void
    {
        super.create();
        // Create an emitter at [200,100] position
        var emitter = new FlxEmitter(dad.x, dad.y);
 
        // Remember that emitters are just FlxGroups
        // that help you recycle particles for repeated
        // usage. As such, we need to add the particles
        // into the emitters before we can use them.
        for (i in 0 ... 100)
        {
        	var p = new FlxParticle();
        	p.makeGraphic(10, 10, 0xFFFFFFFF);
        	// p.loadGraphic("assets/images/sparkle.png", false, 32, 32);
        	// p.animation.add("my-sparkle", [0,1,2,3], 10, true);
        	// p.animation.play("my-sparkle");
        	p.exists = false;
        	emitter.add(p);
        }
 
        // Add emitter to stage
        add(emitter);
 
        // Set radius around origin where particles will appear
        emitter.setSize(25, 25);
    }
}