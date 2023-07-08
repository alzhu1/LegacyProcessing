class NamedCow extends Cow
{
	protected String myName;
	public NamedCow(String type, String name, String sound)
	{
		myType = type;
		myName = name;
		mySound = sound;
	}
	public String getName(){return myName;}
}