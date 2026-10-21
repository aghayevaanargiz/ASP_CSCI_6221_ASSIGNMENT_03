using System;

class Instrument{
    public void Play(){
        Console.WriteLine("The instrument is playing.");
    }
}

class Piano : Instrument{
    public new void Play(){
        Console.WriteLine("The piano is playing beautiful notes.");
    }
}

class Program{
    static void Main(){
        Console.WriteLine("Welcome to the Music World!");

        Instrument instrument = new Instrument();
        instrument.Play();

        Piano piano = new Piano();
        piano.Play();
    }
}
