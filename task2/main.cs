using System;


class Instrument{
  static void Main(){
    Console.WriteLine("Welcome to the Music World!");

    Instrument instrument = new Instrument();
    instrument.Play();
  }

  void Play(){
    Console.WriteLine("The instrument is playing.");
  }
}

class Piano : Instrument{
}

