using UnityEngine;
using Klak.VJUI;
using UnityEditor;

public class MidiControlMenuOptions : MonoBehaviour
{
    [MenuItem("GameObject/UI/allotrope.ijk/Midi Knob", false, 1)]
    static void AddKnob(MenuCommand menuCommand)
    {
        var go = CreateMidiKnob(
            MenuOptions.LoadResource<Material>("Knob.mat"),
            MenuOptions.LoadResource<Sprite>("Knob.png"),
            MenuOptions.LoadResource<Font>("DejaVuSans-ExtraLight.ttf")
        );
        MenuOptions.PlaceUIElementRoot(go, menuCommand);
    }

    [MenuItem("GameObject/UI/allotrope.ijk/Midi Button", false, 2)]
    static void AddButton(MenuCommand menuCommand)
    {
        var go = CreateMidiButton(
            MenuOptions.LoadResource<Sprite>("Button.png"),
            MenuOptions.LoadResource<Font>("DejaVuSans-ExtraLight.ttf")
        );
        MenuOptions.PlaceUIElementRoot(go, menuCommand);
    }

    [MenuItem("GameObject/UI/allotrope.ijk/Midi Toggle", false, 3)]
    static void AddToggle(MenuCommand menuCommand)
    {
        var go = CreateMidiToggle(
            MenuOptions.LoadResource<Sprite>("Toggle.png"),
            MenuOptions.LoadResource<Sprite>("Toggle Fill.png"),
            MenuOptions.LoadResource<Font>("DejaVuSans-ExtraLight.ttf")
        );
        MenuOptions.PlaceUIElementRoot(go, menuCommand);
    }

    // Midi Knob
    public static GameObject CreateMidiKnob(Material material, Sprite sprite, Font font)
    {
        // UI hierarchy
        var root = DefaultControls.CreateUIElementRoot("Midi Knob", Vector2.one * DefaultControls.kWidth);
        var graphic = DefaultControls.CreateUIObject("Graphic", root);
        var label = DefaultControls.CreateUIObject("Label", root);

        // Stretch settings
        DefaultControls.FitToParent(graphic, Vector2.zero);
        DefaultControls.FitToParent(label, new Vector2(4, 15));

        // Graphic
        var image = graphic.AddComponent<UnityEngine.UI.Image>();
        image.material = material;
        image.sprite = sprite;
        image.color = Color.white;

        // Label
        var text = label.AddComponent<UnityEngine.UI.Text>();
        text.text = "Midi Knob";
        text.alignment = TextAnchor.UpperLeft;
        text.font = font;
        text.horizontalOverflow = HorizontalWrapMode.Overflow;
        text.verticalOverflow = VerticalWrapMode.Overflow;

        // Knob
        var knob = root.AddComponent<MidiKnob>();
        DefaultControls.SetDefaultColorTransitionValues(knob, false);
        knob.targetGraphic = image;
        knob.graphic = image;

        return root;
    }

    // Midi Button
    public static GameObject CreateMidiButton(Sprite sprite, Font font)
    {
        // UI hierarchy
        var root = DefaultControls.CreateUIElementRoot("Midi Button", Vector2.one * DefaultControls.kWidth);
        var label = DefaultControls.CreateUIObject("Label", root);

        // Stretch settings
        DefaultControls.FitToParent(label, new Vector2(4, 15));

        // Graphic
        var image = root.AddComponent<UnityEngine.UI.Image>();
        image.sprite = sprite;
        image.color = Color.white;

        // Label
        var text = label.AddComponent<UnityEngine.UI.Text>();
        text.text = "Midi Button";
        text.alignment = TextAnchor.UpperLeft;
        text.font = font;
        text.horizontalOverflow = HorizontalWrapMode.Overflow;
        text.verticalOverflow = VerticalWrapMode.Overflow;

        // Button
        var button = root.AddComponent<MidiButton>();
        DefaultControls.SetDefaultColorTransitionValues(button, true);

        return root;
    }

    // Midi Toggle
    static GameObject CreateMidiToggle(Sprite bgSprite, Sprite fillSprite, Font font)
    {
        // UI hierarchy
        var root = DefaultControls.CreateUIElementRoot("Midi Toggle", Vector2.one * DefaultControls.kWidth);
        var background = DefaultControls.CreateUIObject("Background", root);
        var checkmark = DefaultControls.CreateUIObject("Checkmark", background);
        var label = DefaultControls.CreateUIObject("Label", root);

        // Stretch settings
        DefaultControls.FitToParent(background, Vector2.zero);
        DefaultControls.FitToParent(checkmark, Vector2.zero);
        DefaultControls.FitToParent(label, new Vector2(4, 15));

        // Background image
        var bgImage = background.AddComponent<UnityEngine.UI.Image>();
        bgImage.sprite = bgSprite;
        bgImage.color = Color.white;

        // Checkmark image
        var ckImage = checkmark.AddComponent<UnityEngine.UI.Image>();
        ckImage.sprite = fillSprite;
        ckImage.color = new Color32(240, 240, 240, 255);

        // Label
        var text = label.AddComponent<UnityEngine.UI.Text>();
        text.text = "Midi Toggle";
        text.alignment = TextAnchor.UpperLeft;
        text.font = font;
        text.horizontalOverflow = HorizontalWrapMode.Overflow;
        text.verticalOverflow = VerticalWrapMode.Overflow;

        // Toggle
        var toggle = root.AddComponent<MidiToggle>();
        DefaultControls.SetDefaultColorTransitionValues(toggle, true);
        toggle.targetGraphic = bgImage;
        toggle.graphic = ckImage;

        return root;
    }
}
