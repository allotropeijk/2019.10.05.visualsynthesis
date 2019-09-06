using System.Collections.Concurrent;
using Klak.VJUI;
using MidiJack;
using UnityEngine;

public class MidiButton : Button
{
    [SerializeField]
    private MidiChannel midiChannel = MidiChannel.All;

    [SerializeField]
    private int noteNumber = 0;

    private ConcurrentQueue<SelectionState> queuedStates = new ConcurrentQueue<SelectionState>();

    protected override void Start()
    {
        MidiMaster.SubscribeToNoteOnUpdates(midiChannel, noteNumber, OnNoteOn);
        MidiMaster.SubscribeToNoteOffUpdates(midiChannel, noteNumber, OnNoteOff);
    }

    private void OnNoteOn(MidiChannel channel, int note, float velocity)
    {
        queuedStates.Enqueue(SelectionState.Pressed);
    }

    private void OnNoteOff(MidiChannel channel, int note)
    {
        queuedStates.Enqueue(SelectionState.Normal);
    }

    private void Update()
    {
        while(queuedStates.TryDequeue(out var state))
        {
            DoStateTransition(state, true);
            if (state == SelectionState.Pressed)
            {
                _onButtonDown.Invoke();
            }
            else
            {
                _onButtonUp.Invoke();
            }
        }
    }
}
