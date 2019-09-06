using UnityEditor;
using UnityEditor.UI;

[CustomEditor(typeof(MidiButton), true)]
[CanEditMultipleObjects]
public class MidiButtonEditor : SelectableEditor
{
    SerializedProperty _midiChannel;
    SerializedProperty _noteNumber;
    SerializedProperty _onButtonDown;
    SerializedProperty _onButtonUp;

    protected override void OnEnable()
    {
        base.OnEnable();
        _midiChannel = serializedObject.FindProperty("midiChannel");
        _noteNumber = serializedObject.FindProperty("noteNumber");
        _onButtonDown = serializedObject.FindProperty("_onButtonDown");
        _onButtonUp = serializedObject.FindProperty("_onButtonUp");
    }

    public override void OnInspectorGUI()
    {
        serializedObject.Update();

        EditorGUILayout.PropertyField(_midiChannel);
        EditorGUILayout.PropertyField(_noteNumber);
        EditorGUILayout.PropertyField(_onButtonDown);
        EditorGUILayout.PropertyField(_onButtonUp);

        serializedObject.ApplyModifiedProperties();

        EditorGUILayout.Space();
        base.OnInspectorGUI();
    }
}
