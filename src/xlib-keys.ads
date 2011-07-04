with Interfaces.C.Strings;

package Xlib.Keys is
    pragma Linker_Options ("-lX11");

    ShiftMask : constant := (2**0);
    LockMask : constant := (2**1);
    ControlMask : constant := (2**2);
    Mod1Mask : constant := (2**3);
    Mod2Mask : constant := (2**4);
    Mod3Mask : constant := (2**5);
    Mod4Mask : constant := (2**6);
    Mod5Mask : constant := (2**7);

    function Symbol_To_Code (Display : Display_Type;
                             Key_Symbol : Key_Symbol_Type) return Key_Code_Type;
    pragma Import (C, Symbol_To_Code, "XKeysymToKeycode");

    function String_To_Symbol (Str : Interfaces.C.Strings.Chars_Ptr) return Key_Symbol_Type;
    pragma Import (C, String_To_Symbol, "XStringToKeysym");
end Xlib.Keys;
