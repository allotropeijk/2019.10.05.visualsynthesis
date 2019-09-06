using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.UI;

[CustomEditor(typeof(MidiKnob), true)]
[CanEditMultipleObjects]
public class MidiKnobEditor : SelectableEditor
{
    SerializedProperty _midiChannel;
    SerializedProperty _knobNumber;
    SerializedProperty _minValue;
    SerializedProperty _maxValue;
    SerializedProperty _value;
    SerializedProperty _graphic;
    SerializedProperty _onValueChanged;

    protected override void OnEnable()
    {
        base.OnEnable();
        _midiChannel = serializedObject.FindProperty("midiChannel");
        _knobNumber = serializedObject.FindProperty("knobNumber");
        _minValue = serializedObject.FindProperty("_minValue");
        _maxValue = serializedObject.FindProperty("_maxValue");
        _value = serializedObject.FindProperty("_value");
        _graphic = serializedObject.FindProperty("_graphic");
        _onValueChanged = serializedObject.FindProperty("_onValueChanged");
    }

    public override void OnInspectorGUI()
    {
        serializedObject.Update();

        EditorGUILayout.PropertyField(_midiChannel);
        EditorGUILayout.PropertyField(_knobNumber);
        EditorGUILayout.PropertyField(_minValue);
        EditorGUILayout.PropertyField(_maxValue);
        EditorGUILayout.Slider(_value, _minValue.floatValue, _maxValue.floatValue);
        EditorGUILayout.PropertyField(_graphic);

        EditorGUILayout.Space();

        EditorGUILayout.PropertyField(_onValueChanged);

        serializedObject.ApplyModifiedProperties();

        EditorGUILayout.Space();
        base.OnInspectorGUI();
    }
}
