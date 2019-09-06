using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.UI;
using UnityEngine;

[CustomEditor(typeof(MidiToggle), true)]
[CanEditMultipleObjects]
public class MidiToggleEditor : SelectableEditor
{
    SerializedProperty _midiChannel;
    SerializedProperty _noteNumber;
    SerializedProperty _isOn;
    SerializedProperty _graphic;
    SerializedProperty _onValueChanged;

    protected override void OnEnable()
    {
        base.OnEnable();
        _midiChannel = serializedObject.FindProperty("midiChannel");
        _noteNumber = serializedObject.FindProperty("noteNumber");
        _isOn = serializedObject.FindProperty("_isOn");
        _graphic = serializedObject.FindProperty("_graphic");
        _onValueChanged = serializedObject.FindProperty("_onValueChanged");
    }

    public override void OnInspectorGUI()
    {
        serializedObject.Update();

        EditorGUILayout.PropertyField(_midiChannel);
        EditorGUILayout.PropertyField(_noteNumber);
        EditorGUILayout.PropertyField(_isOn);
        EditorGUILayout.PropertyField(_graphic);

        EditorGUILayout.Space();

        EditorGUILayout.PropertyField(_onValueChanged);

        serializedObject.ApplyModifiedProperties();

        EditorGUILayout.Space();
        base.OnInspectorGUI();
    }
}
