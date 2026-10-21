using System;

class Instrument{
    public virtual void Play(){
        Console.WriteLine("The instrument is playing.");
    }
}

class Piano : Instrument{
    public override void Play(){
        Console.WriteLine("The piano is playing beautiful notes.");
    }
}

class Program{
    static void Main(){
        Console.WriteLine("Welcome to the Music World!");

        Instrument instrument = new Instrument();
        instrument.Play();
		
		Instrument instrument2 = new Piano();
		instrument2.Play();

        Piano piano = new Piano();
        piano.Play();
    }
}
