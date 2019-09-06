using Klak.VJUI;
using MidiJack;
using UnityEngine;

public class MidiKnob : Knob
{
    [SerializeField]
    private MidiChannel midiChannel = MidiChannel.All;

    [SerializeField]
    private int knobNumber = 0;

    private bool shouldUpdate = false;
    private float lastReportedValue = 0.5f;

    protected override void Start()
    {
        MidiMaster.SubscribeToKnobUpdates(midiChannel, knobNumber, OnKnobUpdate);
    }

    private void OnKnobUpdate(MidiChannel channel, int knobNumber, float value)
    {
        lastReportedValue = value;
        shouldUpdate = true;
    }

    private void Update()
    {
        if (shouldUpdate &&
            lastReportedValue != value)
        {
            Set(lastReportedValue, true);
            shouldUpdate = false;
        }
    }
}
