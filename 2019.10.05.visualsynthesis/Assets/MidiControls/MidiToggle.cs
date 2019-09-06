
using Controls.Midi;
using MidiJack;
using System.Collections.Concurrent;
using UnityEngine;

public class MidiToggle : Toggle
{
    [SerializeField]
    private MidiChannel midiChannel = MidiChannel.All;

    [SerializeField]
    private int noteNumber = 0;

    private bool toggle = false;

    protected override void Start()
    {
        MidiMaster.SubscribeToNoteOnUpdates(midiChannel, noteNumber, OnNoteOn);
    }

    private void OnNoteOn(MidiChannel channel, int note, float velocity)
    {
        toggle = true;
    }

    private void Update()
    {
        if (toggle)
        {
            Set(!isOn, true);
            toggle = false;
        }
    }
}
