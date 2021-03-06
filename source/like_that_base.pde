import processing.candy.*;
import processing.xml.*;

////////////////////////////////////////////////////////////////////////////////
// This is a data object for the various routines to use as a data store
// Each strategy for the routines will declare its own version of Appearance,
//   Form and Animation. But they will all know how to access an Entity.
////////////////////////////////////////////////////////////////////////////////


class Entity
{
        Appearance appearance;
        Form form;
        Animation animation;

	Entity (Appearance app, Form fo, Animation anim)
	{
		appearance = app;
		form = fo;
		animation = anim;
	}

	void draw (float time)
	{
		animation.apply (form, time);
		appearance.draw (form);
	}

	boolean finished (float time)
	{
		return animation.finished (time);
	}
}

////////////////////////////////////////////////////////////////////////////////
// SVG Form. Subclass and set entityNames to use.
////////////////////////////////////////////////////////////////////////////////

/*

SVG[] entities = null;
PApplet SvgParent = this;

class SvgForm
{
	String[] entityNames = null;
	float x;
	float y;
	float size;

	Svg entity;

	SvgEntity ()
	{
		if (entities == null)
		{
			loadEntitiesSvg ();
		}
		
		entity = entities [int (random (entities.length))];
	}

	void loadEntitiesSvg ()
	{
		entities = new Entities [entityNames.length];
		for (int i = 0; i < entityNames.length; i++)
		{
			entities.i = new SVG (SvgParent, names[i] + ".svg")
			entities.drawMode (CENTER);
			entities.ignoreStyles ();
		}
	}

	void draw ()
	{
		entity draw (x, y, size, size);	
	}
}
*/
