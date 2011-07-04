with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with X11_X_h;
with System;
with stddef_h;

package X11_Xlib_h is


   XlibSpecificationRelease : constant := 6;  --  /usr/include/X11/Xlib.h:36

   X_HAVE_UTF8_STRING : constant := 1;  --  /usr/include/X11/Xlib.h:82
   --  unsupported macro: Bool int
   --  unsupported macro: Status int

   True : constant := 1;  --  /usr/include/X11/Xlib.h:88
   False : constant := 0;  --  /usr/include/X11/Xlib.h:89

   QueuedAlready : constant := 0;  --  /usr/include/X11/Xlib.h:91
   QueuedAfterReading : constant := 1;  --  /usr/include/X11/Xlib.h:92
   QueuedAfterFlush : constant := 2;  --  /usr/include/X11/Xlib.h:93
   --  arg-macro: function ConnectionNumber (dpy)
   --    return ((_XPrivDisplay)dpy).fd;
   --  arg-macro: function RootWindow (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).root;
   --  arg-macro: function DefaultScreen (dpy)
   --    return ((_XPrivDisplay)dpy).default_screen;
   --  arg-macro: function DefaultRootWindow (dpy)
   --    return ScreenOfDisplay(dpy,DefaultScreen(dpy)).root;
   --  arg-macro: function DefaultVisual (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).root_visual;
   --  arg-macro: function DefaultGC (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).default_gc;
   --  arg-macro: function BlackPixel (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).black_pixel;
   --  arg-macro: function WhitePixel (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).white_pixel;
   --  unsupported macro: AllPlanes ((unsigned long)~0L)
   --  arg-macro: function QLength (dpy)
   --    return ((_XPrivDisplay)dpy).qlen;
   --  arg-macro: function DisplayWidth (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).width;
   --  arg-macro: function DisplayHeight (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).height;
   --  arg-macro: function DisplayWidthMM (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).mwidth;
   --  arg-macro: function DisplayHeightMM (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).mheight;
   --  arg-macro: function DisplayPlanes (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).root_depth;
   --  arg-macro: function DisplayCells (dpy, scr)
   --    return DefaultVisual(dpy,scr).map_entries;
   --  arg-macro: function ScreenCount (dpy)
   --    return ((_XPrivDisplay)dpy).nscreens;
   --  arg-macro: function ServerVendor (dpy)
   --    return ((_XPrivDisplay)dpy).vendor;
   --  arg-macro: function ProtocolVersion (dpy)
   --    return ((_XPrivDisplay)dpy).proto_major_version;
   --  arg-macro: function ProtocolRevision (dpy)
   --    return ((_XPrivDisplay)dpy).proto_minor_version;
   --  arg-macro: function VendorRelease (dpy)
   --    return ((_XPrivDisplay)dpy).release;
   --  arg-macro: function DisplayString (dpy)
   --    return ((_XPrivDisplay)dpy).display_name;
   --  arg-macro: function DefaultDepth (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).root_depth;
   --  arg-macro: function DefaultColormap (dpy, scr)
   --    return ScreenOfDisplay(dpy,scr).cmap;
   --  arg-macro: function BitmapUnit (dpy)
   --    return ((_XPrivDisplay)dpy).bitmap_unit;
   --  arg-macro: function BitmapBitOrder (dpy)
   --    return ((_XPrivDisplay)dpy).bitmap_bit_order;
   --  arg-macro: function BitmapPad (dpy)
   --    return ((_XPrivDisplay)dpy).bitmap_pad;
   --  arg-macro: function ImageByteOrder (dpy)
   --    return ((_XPrivDisplay)dpy).byte_order;
   --  arg-macro: function NextRequest (dpy)
   --    return ((_XPrivDisplay)dpy).request + 1;
   --  arg-macro: function LastKnownRequestProcessed (dpy)
   --    return ((_XPrivDisplay)dpy).last_request_read;
   --  arg-macro: function ScreenOfDisplay (dpy, scr)
   --    return and((_XPrivDisplay)dpy).screens(scr);
   --  arg-macro: procedure DefaultScreenOfDisplay (dpy)
   --    ScreenOfDisplay(dpy,DefaultScreen(dpy))
   --  arg-macro: function DisplayOfScreen (s)
   --    return (s).display;
   --  arg-macro: function RootWindowOfScreen (s)
   --    return (s).root;
   --  arg-macro: function BlackPixelOfScreen (s)
   --    return (s).black_pixel;
   --  arg-macro: function WhitePixelOfScreen (s)
   --    return (s).white_pixel;
   --  arg-macro: function DefaultColormapOfScreen (s)
   --    return (s).cmap;
   --  arg-macro: function DefaultDepthOfScreen (s)
   --    return (s).root_depth;
   --  arg-macro: function DefaultGCOfScreen (s)
   --    return (s).default_gc;
   --  arg-macro: function DefaultVisualOfScreen (s)
   --    return (s).root_visual;
   --  arg-macro: function WidthOfScreen (s)
   --    return (s).width;
   --  arg-macro: function HeightOfScreen (s)
   --    return (s).height;
   --  arg-macro: function WidthMMOfScreen (s)
   --    return (s).mwidth;
   --  arg-macro: function HeightMMOfScreen (s)
   --    return (s).mheight;
   --  arg-macro: function PlanesOfScreen (s)
   --    return (s).root_depth;
   --  arg-macro: function CellsOfScreen (s)
   --    return DefaultVisualOfScreen((s)).map_entries;
   --  arg-macro: function MinCmapsOfScreen (s)
   --    return (s).min_maps;
   --  arg-macro: function MaxCmapsOfScreen (s)
   --    return (s).max_maps;
   --  arg-macro: function DoesSaveUnders (s)
   --    return (s).save_unders;
   --  arg-macro: function DoesBackingStore (s)
   --    return (s).backing_store;
   --  arg-macro: function EventMaskOfScreen (s)
   --    return (s).root_input_mask;
   --  arg-macro: function XAllocID (dpy)
   --    return (*((_XPrivDisplay)dpy).resource_alloc)((dpy));

   XNRequiredCharSet : aliased constant String := "requiredCharSet" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1118
   XNQueryOrientation : aliased constant String := "queryOrientation" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1119
   XNBaseFontName : aliased constant String := "baseFontName" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1120
   XNOMAutomatic : aliased constant String := "omAutomatic" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1121
   XNMissingCharSet : aliased constant String := "missingCharSet" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1122
   XNDefaultString : aliased constant String := "defaultString" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1123
   XNOrientation : aliased constant String := "orientation" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1124
   XNDirectionalDependentDrawing : aliased constant String := "directionalDependentDrawing" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1125
   XNContextualDrawing : aliased constant String := "contextualDrawing" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1126
   XNFontInfo : aliased constant String := "fontInfo" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1127

   XIMPreeditArea : constant := 16#0001#;  --  /usr/include/X11/Xlib.h:1181
   XIMPreeditCallbacks : constant := 16#0002#;  --  /usr/include/X11/Xlib.h:1182
   XIMPreeditPosition : constant := 16#0004#;  --  /usr/include/X11/Xlib.h:1183
   XIMPreeditNothing : constant := 16#0008#;  --  /usr/include/X11/Xlib.h:1184
   XIMPreeditNone : constant := 16#0010#;  --  /usr/include/X11/Xlib.h:1185
   XIMStatusArea : constant := 16#0100#;  --  /usr/include/X11/Xlib.h:1186
   XIMStatusCallbacks : constant := 16#0200#;  --  /usr/include/X11/Xlib.h:1187
   XIMStatusNothing : constant := 16#0400#;  --  /usr/include/X11/Xlib.h:1188
   XIMStatusNone : constant := 16#0800#;  --  /usr/include/X11/Xlib.h:1189

   XNVaNestedList : aliased constant String := "XNVaNestedList" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1191
   XNQueryInputStyle : aliased constant String := "queryInputStyle" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1192
   XNClientWindow : aliased constant String := "clientWindow" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1193
   XNInputStyle : aliased constant String := "inputStyle" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1194
   XNFocusWindow : aliased constant String := "focusWindow" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1195
   XNResourceName : aliased constant String := "resourceName" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1196
   XNResourceClass : aliased constant String := "resourceClass" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1197
   XNGeometryCallback : aliased constant String := "geometryCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1198
   XNDestroyCallback : aliased constant String := "destroyCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1199
   XNFilterEvents : aliased constant String := "filterEvents" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1200
   XNPreeditStartCallback : aliased constant String := "preeditStartCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1201
   XNPreeditDoneCallback : aliased constant String := "preeditDoneCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1202
   XNPreeditDrawCallback : aliased constant String := "preeditDrawCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1203
   XNPreeditCaretCallback : aliased constant String := "preeditCaretCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1204
   XNPreeditStateNotifyCallback : aliased constant String := "preeditStateNotifyCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1205
   XNPreeditAttributes : aliased constant String := "preeditAttributes" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1206
   XNStatusStartCallback : aliased constant String := "statusStartCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1207
   XNStatusDoneCallback : aliased constant String := "statusDoneCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1208
   XNStatusDrawCallback : aliased constant String := "statusDrawCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1209
   XNStatusAttributes : aliased constant String := "statusAttributes" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1210
   XNArea : aliased constant String := "area" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1211
   XNAreaNeeded : aliased constant String := "areaNeeded" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1212
   XNSpotLocation : aliased constant String := "spotLocation" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1213
   XNColormap : aliased constant String := "colorMap" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1214
   XNStdColormap : aliased constant String := "stdColorMap" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1215
   XNForeground : aliased constant String := "foreground" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1216
   XNBackground : aliased constant String := "background" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1217
   XNBackgroundPixmap : aliased constant String := "backgroundPixmap" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1218
   XNFontSet : aliased constant String := "fontSet" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1219
   XNLineSpace : aliased constant String := "lineSpace" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1220
   XNCursor : aliased constant String := "cursor" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1221

   XNQueryIMValuesList : aliased constant String := "queryIMValuesList" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1223
   XNQueryICValuesList : aliased constant String := "queryICValuesList" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1224
   XNVisiblePosition : aliased constant String := "visiblePosition" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1225
   XNR6PreeditCallback : aliased constant String := "r6PreeditCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1226
   XNStringConversionCallback : aliased constant String := "stringConversionCallback" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1227
   XNStringConversion : aliased constant String := "stringConversion" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1228
   XNResetState : aliased constant String := "resetState" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1229
   XNHotKey : aliased constant String := "hotKey" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1230
   XNHotKeyState : aliased constant String := "hotKeyState" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1231
   XNPreeditState : aliased constant String := "preeditState" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1232
   XNSeparatorofNestedList : aliased constant String := "separatorofNestedList" & ASCII.NUL;  --  /usr/include/X11/Xlib.h:1233

   XBufferOverflow : constant := -1;  --  /usr/include/X11/Xlib.h:1235
   XLookupNone : constant := 1;  --  /usr/include/X11/Xlib.h:1236
   XLookupChars : constant := 2;  --  /usr/include/X11/Xlib.h:1237
   XLookupKeySym : constant := 3;  --  /usr/include/X11/Xlib.h:1238
   XLookupBoth : constant := 4;  --  /usr/include/X11/Xlib.h:1239

   XIMReverse : constant := 1;  --  /usr/include/X11/Xlib.h:1255
   XIMUnderline : constant := (2**1);  --  /usr/include/X11/Xlib.h:1256
   XIMHighlight : constant := (2**2);  --  /usr/include/X11/Xlib.h:1257
   XIMPrimary : constant := (2**5);  --  /usr/include/X11/Xlib.h:1258
   XIMSecondary : constant := (2**6);  --  /usr/include/X11/Xlib.h:1259
   XIMTertiary : constant := (2**7);  --  /usr/include/X11/Xlib.h:1260
   XIMVisibleToForward : constant := (2**8);  --  /usr/include/X11/Xlib.h:1261
   XIMVisibleToBackword : constant := (2**9);  --  /usr/include/X11/Xlib.h:1262
   XIMVisibleToCenter : constant := (2**10);  --  /usr/include/X11/Xlib.h:1263

   XIMPreeditUnKnown : constant := 0;  --  /usr/include/X11/Xlib.h:1277
   XIMPreeditEnable : constant := 1;  --  /usr/include/X11/Xlib.h:1278
   XIMPreeditDisable : constant := (2**1);  --  /usr/include/X11/Xlib.h:1279

   XIMInitialState : constant := 1;  --  /usr/include/X11/Xlib.h:1287
   XIMPreserveState : constant := (2**1);  --  /usr/include/X11/Xlib.h:1288

   XIMStringConversionLeftEdge : constant := (16#00000001#);  --  /usr/include/X11/Xlib.h:1292
   XIMStringConversionRightEdge : constant := (16#00000002#);  --  /usr/include/X11/Xlib.h:1293
   XIMStringConversionTopEdge : constant := (16#00000004#);  --  /usr/include/X11/Xlib.h:1294
   XIMStringConversionBottomEdge : constant := (16#00000008#);  --  /usr/include/X11/Xlib.h:1295
   XIMStringConversionConcealed : constant := (16#00000010#);  --  /usr/include/X11/Xlib.h:1296
   XIMStringConversionWrapped : constant := (16#00000020#);  --  /usr/include/X11/Xlib.h:1297

   XIMStringConversionBuffer : constant := (16#0001#);  --  /usr/include/X11/Xlib.h:1313
   XIMStringConversionLine : constant := (16#0002#);  --  /usr/include/X11/Xlib.h:1314
   XIMStringConversionWord : constant := (16#0003#);  --  /usr/include/X11/Xlib.h:1315
   XIMStringConversionChar : constant := (16#0004#);  --  /usr/include/X11/Xlib.h:1316

   XIMStringConversionSubstitution : constant := (16#0001#);  --  /usr/include/X11/Xlib.h:1320
   XIMStringConversionRetrieval : constant := (16#0002#);  --  /usr/include/X11/Xlib.h:1321

   XIMHotKeyStateON : constant := (16#0001#);  --  /usr/include/X11/Xlib.h:1386
   XIMHotKeyStateOFF : constant := (16#0002#);  --  /usr/include/X11/Xlib.h:1387

  --Copyright 1985, 1986, 1987, 1991, 1998  The Open Group
  --Permission to use, copy, modify, distribute, and sell this software and its
  --documentation for any purpose is hereby granted without fee, provided that
  --the above copyright notice appear in all copies and that both that
  --copyright notice and this permission notice appear in supporting
  --documentation.
  --The above copyright notice and this permission notice shall be included in
  --all copies or substantial portions of the Software.
  --THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  --IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  --FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
  --OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
  --AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  --CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  --Except as contained in this notice, the name of The Open Group shall not be
  --used in advertising or otherwise to promote the sale, use or other dealings
  --in this Software without prior written authorization from The Open Group.
  -- 

  -- *	Xlib.h - Header definition and support file for the C subroutine
  -- *	interface library (Xlib) to the X Window System Protocol (V11).
  -- *	Structures and symbols starting with "_" are private to the library.
  --  

  -- applications should not depend on these two headers being included!  
  -- replace this with #include or typedef appropriate for your system  
   --  skipped func _Xmblen

  -- API mentioning "UTF8" or "utf8" is an XFree86 extension, introduced in
  --   November 2000. Its presence is indicated through the following macro.  

   type XPointer is new Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:84

  -- macros for screen oriented applications (toolkit)  
  -- * Extensions need a way to hang private data on some structures.
  --  

  -- number returned by XRegisterExtension  
   type u_XExtData is record
      number : aliased int;  -- /usr/include/X11/Xlib.h:157
      next : access u_XExtData;  -- /usr/include/X11/Xlib.h:158
      free_private : access function (arg1 : access u_XExtData) return int;  -- /usr/include/X11/Xlib.h:159
      private_data : XPointer;  -- /usr/include/X11/Xlib.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, u_XExtData);  -- /usr/include/X11/Xlib.h:156

  -- next item on list of data for structure  
  -- called to free private storage  
  -- data private to this extension.  
   subtype XExtData is u_XExtData;

  -- * This file contains structures used by the extension mechanism.
  --  

  -- public to extension, cannot be changed  
  -- extension number  
  -- major op-code assigned by server  
  -- first event number for the extension  
  -- first error number for the extension  
   type XExtCodes is record
      extension : aliased int;  -- /usr/include/X11/Xlib.h:169
      major_opcode : aliased int;  -- /usr/include/X11/Xlib.h:170
      first_event : aliased int;  -- /usr/include/X11/Xlib.h:171
      first_error : aliased int;  -- /usr/include/X11/Xlib.h:172
   end record;
   pragma Convention (C_Pass_By_Copy, XExtCodes);  -- /usr/include/X11/Xlib.h:173

  -- * Data structure for retrieving info about pixmap formats.
  --  

   type XPixmapFormatValues is record
      depth : aliased int;  -- /usr/include/X11/Xlib.h:180
      bits_per_pixel : aliased int;  -- /usr/include/X11/Xlib.h:181
      scanline_pad : aliased int;  -- /usr/include/X11/Xlib.h:182
   end record;
   pragma Convention (C_Pass_By_Copy, XPixmapFormatValues);  -- /usr/include/X11/Xlib.h:183

  -- * Data structure for setting graphics context.
  --  

  -- logical operation  
  -- plane mask  
  -- foreground pixel  
  -- background pixel  
  -- line width  
  -- LineSolid, LineOnOffDash, LineDoubleDash  
  -- CapNotLast, CapButt,
  --				   CapRound, CapProjecting  

  -- JoinMiter, JoinRound, JoinBevel  
  -- FillSolid, FillTiled,
  --				   FillStippled, FillOpaeueStippled  

  -- EvenOddRule, WindingRule  
  -- ArcChord, ArcPieSlice  
  -- tile pixmap for tiling operations  
  -- stipple 1 plane pixmap for stipping  
  -- offset for tile or stipple operations  
  -- default text font for text operations  
  -- ClipByChildren, IncludeInferiors  
  -- boolean, should exposures be generated  
  -- origin for clipping  
  -- bitmap clipping; other calls for rects  
  -- patterned/dashed line information  
   type XGCValues is record
      c_function : aliased int;  -- /usr/include/X11/Xlib.h:190
      plane_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:191
      foreground : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:192
      background : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:193
      line_width : aliased int;  -- /usr/include/X11/Xlib.h:194
      line_style : aliased int;  -- /usr/include/X11/Xlib.h:195
      cap_style : aliased int;  -- /usr/include/X11/Xlib.h:196
      join_style : aliased int;  -- /usr/include/X11/Xlib.h:198
      fill_style : aliased int;  -- /usr/include/X11/Xlib.h:199
      fill_rule : aliased int;  -- /usr/include/X11/Xlib.h:201
      arc_mode : aliased int;  -- /usr/include/X11/Xlib.h:202
      tile : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:203
      stipple : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:204
      ts_x_origin : aliased int;  -- /usr/include/X11/Xlib.h:205
      ts_y_origin : aliased int;  -- /usr/include/X11/Xlib.h:206
      the_font : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:207
      subwindow_mode : aliased int;  -- /usr/include/X11/Xlib.h:208
      graphics_exposures : aliased int;  -- /usr/include/X11/Xlib.h:209
      clip_x_origin : aliased int;  -- /usr/include/X11/Xlib.h:210
      clip_y_origin : aliased int;  -- /usr/include/X11/Xlib.h:211
      clip_mask : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:212
      dash_offset : aliased int;  -- /usr/include/X11/Xlib.h:213
      dashes : aliased char;  -- /usr/include/X11/Xlib.h:214
   end record;
   pragma Convention (C_Pass_By_Copy, XGCValues);  -- /usr/include/X11/Xlib.h:215

  -- * Graphics context.  The contents of this structure are implementation
  -- * dependent.  A GC should be treated as opaque by application code.
  --  

   --  skipped empty struct u_XGC

  -- hook for extension to hang data  
  -- protocol ID for graphics context  
  -- there is more to this structure, but it is private to Xlib  
   type GC is new System.Address;  -- /usr/include/X11/Xlib.h:230

  -- * Visual structure; contains information about colormapping possible.
  --  

  -- hook for extension to hang data  
  -- visual id of this visual  
  -- C++ class of screen (monochrome, etc.)  
  -- class of screen (monochrome, etc.)  
  -- mask values  
  -- log base 2 of distinct color values  
  -- color map entries  
   type Visual is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:236
      the_visualid : aliased X11_X_h.VisualID;  -- /usr/include/X11/Xlib.h:237
      class : aliased int;  -- /usr/include/X11/Xlib.h:241
      red_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:243
      green_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:243
      blue_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:243
      bits_per_rgb : aliased int;  -- /usr/include/X11/Xlib.h:244
      map_entries : aliased int;  -- /usr/include/X11/Xlib.h:245
   end record;
   pragma Convention (C_Pass_By_Copy, Visual);  -- /usr/include/X11/Xlib.h:246

  -- * Depth structure; contains information for each possible depth.
  --  

  -- this depth (Z) of the depth  
  -- number of Visual types at this depth  
  -- list of visuals possible at this depth  
   type Depth is record
      depth : aliased int;  -- /usr/include/X11/Xlib.h:252
      nvisuals : aliased int;  -- /usr/include/X11/Xlib.h:253
      visuals : access Visual;  -- /usr/include/X11/Xlib.h:254
   end record;
   pragma Convention (C_Pass_By_Copy, Depth);  -- /usr/include/X11/Xlib.h:255

  -- * Information about the screen.  The contents of this structure are
  -- * implementation dependent.  A Screen should be treated as opaque
  -- * by application code.
  --  

  -- Forward declare before use for C++  
   --  skipped empty struct u_XDisplay

  -- hook for extension to hang data  
  -- back pointer to display structure  
  -- Root window id.  
  -- width and height of screen  
  -- width and height of  in millimeters  
  -- number of depths possible  
  -- list of allowable depths on the screen  
  -- bits per pixel  
  -- root visual  
  -- GC for the root root visual  
  -- default color map  
  -- White and Black pixel values  
  -- max and min color maps  
  -- Never, WhenMapped, Always  
  -- initial root input mask  
   type Screen is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:266
      display : System.Address;  -- /usr/include/X11/Xlib.h:267
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:268
      width : aliased int;  -- /usr/include/X11/Xlib.h:269
      height : aliased int;  -- /usr/include/X11/Xlib.h:269
      mwidth : aliased int;  -- /usr/include/X11/Xlib.h:270
      mheight : aliased int;  -- /usr/include/X11/Xlib.h:270
      ndepths : aliased int;  -- /usr/include/X11/Xlib.h:271
      depths : access Depth;  -- /usr/include/X11/Xlib.h:272
      root_depth : aliased int;  -- /usr/include/X11/Xlib.h:273
      root_visual : access Visual;  -- /usr/include/X11/Xlib.h:274
      default_gc : GC;  -- /usr/include/X11/Xlib.h:275
      cmap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:276
      white_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:277
      black_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:278
      max_maps : aliased int;  -- /usr/include/X11/Xlib.h:279
      min_maps : aliased int;  -- /usr/include/X11/Xlib.h:279
      backing_store : aliased int;  -- /usr/include/X11/Xlib.h:280
      save_unders : aliased int;  -- /usr/include/X11/Xlib.h:281
      root_input_mask : aliased long;  -- /usr/include/X11/Xlib.h:282
   end record;
   pragma Convention (C_Pass_By_Copy, Screen);  -- /usr/include/X11/Xlib.h:283

  -- * Format structure; describes ZFormat data the screen will understand.
  --  

  -- hook for extension to hang data  
  -- depth of this image format  
  -- bits/pixel at this depth  
  -- scanline must padded to this multiple  
   type ScreenFormat is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:289
      depth : aliased int;  -- /usr/include/X11/Xlib.h:290
      bits_per_pixel : aliased int;  -- /usr/include/X11/Xlib.h:291
      scanline_pad : aliased int;  -- /usr/include/X11/Xlib.h:292
   end record;
   pragma Convention (C_Pass_By_Copy, ScreenFormat);  -- /usr/include/X11/Xlib.h:293

  -- * Data structure for setting window attributes.
  --  

  -- background or None or ParentRelative  
  -- background pixel  
  -- border of the window  
  -- border pixel value  
  -- one of bit gravity values  
  -- one of the window gravity values  
  -- NotUseful, WhenMapped, Always  
  -- planes to be preseved if possible  
  -- value to use in restoring planes  
  -- should bits under be saved? (popups)  
  -- set of events that should be saved  
  -- set of events that should not propagate  
  -- boolean value for override-redirect  
  -- color map to be associated with window  
  -- cursor to be displayed (or None)  
   type XSetWindowAttributes is record
      background_pixmap : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:299
      background_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:300
      border_pixmap : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:301
      border_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:302
      bit_gravity : aliased int;  -- /usr/include/X11/Xlib.h:303
      win_gravity : aliased int;  -- /usr/include/X11/Xlib.h:304
      backing_store : aliased int;  -- /usr/include/X11/Xlib.h:305
      backing_planes : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:306
      backing_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:307
      save_under : aliased int;  -- /usr/include/X11/Xlib.h:308
      event_mask : aliased long;  -- /usr/include/X11/Xlib.h:309
      do_not_propagate_mask : aliased long;  -- /usr/include/X11/Xlib.h:310
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:311
      the_colormap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:312
      the_cursor : aliased X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:313
   end record;
   pragma Convention (C_Pass_By_Copy, XSetWindowAttributes);  -- /usr/include/X11/Xlib.h:314

  -- location of window  
  -- width and height of window  
  -- border width of window  
  -- depth of window  
  -- the associated visual structure  
  -- root of screen containing window  
  -- C++ InputOutput, InputOnly 
  -- InputOutput, InputOnly 
  -- one of bit gravity values  
  -- one of the window gravity values  
  -- NotUseful, WhenMapped, Always  
  -- planes to be preserved if possible  
  -- value to be used when restoring planes  
  -- boolean, should bits under be saved?  
  -- color map to be associated with window  
  -- boolean, is color map currently installed 
  -- IsUnmapped, IsUnviewable, IsViewable  
  -- set of events all people have interest in 
  -- my event mask  
  -- set of events that should not propagate  
  -- boolean value for override-redirect  
  -- back pointer to correct screen  
   type XWindowAttributes is record
      x : aliased int;  -- /usr/include/X11/Xlib.h:317
      y : aliased int;  -- /usr/include/X11/Xlib.h:317
      width : aliased int;  -- /usr/include/X11/Xlib.h:318
      height : aliased int;  -- /usr/include/X11/Xlib.h:318
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:319
      depth : aliased int;  -- /usr/include/X11/Xlib.h:320
      the_visual : access Visual;  -- /usr/include/X11/Xlib.h:321
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:322
      class : aliased int;  -- /usr/include/X11/Xlib.h:326
      bit_gravity : aliased int;  -- /usr/include/X11/Xlib.h:328
      win_gravity : aliased int;  -- /usr/include/X11/Xlib.h:329
      backing_store : aliased int;  -- /usr/include/X11/Xlib.h:330
      backing_planes : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:331
      backing_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:332
      save_under : aliased int;  -- /usr/include/X11/Xlib.h:333
      the_colormap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:334
      map_installed : aliased int;  -- /usr/include/X11/Xlib.h:335
      map_state : aliased int;  -- /usr/include/X11/Xlib.h:336
      all_event_masks : aliased long;  -- /usr/include/X11/Xlib.h:337
      your_event_mask : aliased long;  -- /usr/include/X11/Xlib.h:338
      do_not_propagate_mask : aliased long;  -- /usr/include/X11/Xlib.h:339
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:340
      the_screen : access Screen;  -- /usr/include/X11/Xlib.h:341
   end record;
   pragma Convention (C_Pass_By_Copy, XWindowAttributes);  -- /usr/include/X11/Xlib.h:342

  -- * Data structure for host setting; getting routines.
  -- *
  --  

  -- for example FamilyInternet  
  -- length of address, in bytes  
  -- pointer to where to find the bytes  
   type XHostAddress is record
      family : aliased int;  -- /usr/include/X11/Xlib.h:350
      length : aliased int;  -- /usr/include/X11/Xlib.h:351
      address : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:352
   end record;
   pragma Convention (C_Pass_By_Copy, XHostAddress);  -- /usr/include/X11/Xlib.h:353

  -- * Data structure for ServerFamilyInterpreted addresses in host routines
  --  

  -- length of type string, in bytes  
  -- length of value string, in bytes  
  -- pointer to where to find the type string  
  -- pointer to where to find the address  
   type XServerInterpretedAddress is record
      typelength : aliased int;  -- /usr/include/X11/Xlib.h:359
      valuelength : aliased int;  -- /usr/include/X11/Xlib.h:360
      c_type : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:361
      value : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:362
   end record;
   pragma Convention (C_Pass_By_Copy, XServerInterpretedAddress);  -- /usr/include/X11/Xlib.h:363

  -- * Data structure for "image" data, used by image manipulation routines.
  --  

  -- size of image  
  -- number of pixels offset in X direction  
  -- XYBitmap, XYPixmap, ZPixmap  
  -- pointer to image data  
  -- data byte order, LSBFirst, MSBFirst  
  -- quant. of scanline 8, 16, 32  
  -- LSBFirst, MSBFirst  
  -- 8, 16, 32 either XY or ZPixmap  
  -- depth of image  
  -- accelarator to next line  
  -- bits per pixel (ZPixmap)  
  -- bits in z arrangment  
  -- hook for the object routines to hang on  
  -- image manipulation routines  
   type u_XImage;
   type funcs is record
      create_image : access function
           (arg1 : System.Address;
            arg2 : access Visual;
            arg3 : unsigned;
            arg4 : int;
            arg5 : int;
            arg6 : Interfaces.C.Strings.chars_ptr;
            arg7 : unsigned;
            arg8 : unsigned;
            arg9 : int;
            arg10 : int) return access u_XImage;  -- /usr/include/X11/Xlib.h:385
      destroy_image : access function (arg1 : access u_XImage) return int;  -- /usr/include/X11/Xlib.h:396
      get_pixel : access function
           (arg1 : access u_XImage;
            arg2 : int;
            arg3 : int) return unsigned_long;  -- /usr/include/X11/Xlib.h:397
      put_pixel : access function
           (arg1 : access u_XImage;
            arg2 : int;
            arg3 : int;
            arg4 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:398
      sub_image : access function
           (arg1 : access u_XImage;
            arg2 : int;
            arg3 : int;
            arg4 : unsigned;
            arg5 : unsigned) return access u_XImage;  -- /usr/include/X11/Xlib.h:399
      add_pixel : access function (arg1 : access u_XImage; arg2 : long) return int;  -- /usr/include/X11/Xlib.h:400
   end record;
   pragma Convention (C_Pass_By_Copy, funcs);  -- /usr/include/X11/Xlib.h:384

   type u_XImage is record
      width : aliased int;  -- /usr/include/X11/Xlib.h:369
      height : aliased int;  -- /usr/include/X11/Xlib.h:369
      xoffset : aliased int;  -- /usr/include/X11/Xlib.h:370
      format : aliased int;  -- /usr/include/X11/Xlib.h:371
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:372
      byte_order : aliased int;  -- /usr/include/X11/Xlib.h:373
      bitmap_unit : aliased int;  -- /usr/include/X11/Xlib.h:374
      bitmap_bit_order : aliased int;  -- /usr/include/X11/Xlib.h:375
      bitmap_pad : aliased int;  -- /usr/include/X11/Xlib.h:376
      depth : aliased int;  -- /usr/include/X11/Xlib.h:377
      bytes_per_line : aliased int;  -- /usr/include/X11/Xlib.h:378
      bits_per_pixel : aliased int;  -- /usr/include/X11/Xlib.h:379
      red_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:380
      green_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:381
      blue_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:382
      obdata : XPointer;  -- /usr/include/X11/Xlib.h:383
      f : aliased funcs;  -- /usr/include/X11/Xlib.h:401
   end record;
   pragma Convention (C_Pass_By_Copy, u_XImage);  -- /usr/include/X11/Xlib.h:368

  -- display  
  -- visual  
  -- depth  
  -- format  
  -- offset  
  -- data  
  -- width  
  -- height  
  -- bitmap_pad  
  -- bytes_per_line  
   subtype XImage is u_XImage;

  -- * Data structure for XReconfigureWindow
  --  

   type XWindowChanges is record
      x : aliased int;  -- /usr/include/X11/Xlib.h:408
      y : aliased int;  -- /usr/include/X11/Xlib.h:408
      width : aliased int;  -- /usr/include/X11/Xlib.h:409
      height : aliased int;  -- /usr/include/X11/Xlib.h:409
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:410
      sibling : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:411
      stack_mode : aliased int;  -- /usr/include/X11/Xlib.h:412
   end record;
   pragma Convention (C_Pass_By_Copy, XWindowChanges);  -- /usr/include/X11/Xlib.h:413

  -- * Data structure used by color operations
  --  

  -- do_red, do_green, do_blue  
   type XColor is record
      pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:419
      red : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:420
      green : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:420
      blue : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:420
      flags : aliased char;  -- /usr/include/X11/Xlib.h:421
      pad : aliased char;  -- /usr/include/X11/Xlib.h:422
   end record;
   pragma Convention (C_Pass_By_Copy, XColor);  -- /usr/include/X11/Xlib.h:423

  -- * Data structures for graphics operations.  On most machines, these are
  -- * congruent with the wire protocol structures, so reformatting the data
  -- * can be avoided on these architectures.
  --  

   type XSegment is record
      x1 : aliased short;  -- /usr/include/X11/Xlib.h:431
      y1 : aliased short;  -- /usr/include/X11/Xlib.h:431
      x2 : aliased short;  -- /usr/include/X11/Xlib.h:431
      y2 : aliased short;  -- /usr/include/X11/Xlib.h:431
   end record;
   pragma Convention (C_Pass_By_Copy, XSegment);  -- /usr/include/X11/Xlib.h:432

   type XPoint is record
      x : aliased short;  -- /usr/include/X11/Xlib.h:435
      y : aliased short;  -- /usr/include/X11/Xlib.h:435
   end record;
   pragma Convention (C_Pass_By_Copy, XPoint);  -- /usr/include/X11/Xlib.h:436

   type XRectangle is record
      x : aliased short;  -- /usr/include/X11/Xlib.h:439
      y : aliased short;  -- /usr/include/X11/Xlib.h:439
      width : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:440
      height : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:440
   end record;
   pragma Convention (C_Pass_By_Copy, XRectangle);  -- /usr/include/X11/Xlib.h:441

   type XArc is record
      x : aliased short;  -- /usr/include/X11/Xlib.h:444
      y : aliased short;  -- /usr/include/X11/Xlib.h:444
      width : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:445
      height : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:445
      angle1 : aliased short;  -- /usr/include/X11/Xlib.h:446
      angle2 : aliased short;  -- /usr/include/X11/Xlib.h:446
   end record;
   pragma Convention (C_Pass_By_Copy, XArc);  -- /usr/include/X11/Xlib.h:447

  -- Data structure for XChangeKeyboardControl  
  -- On, Off, Default  
   type XKeyboardControl is record
      key_click_percent : aliased int;  -- /usr/include/X11/Xlib.h:453
      bell_percent : aliased int;  -- /usr/include/X11/Xlib.h:454
      bell_pitch : aliased int;  -- /usr/include/X11/Xlib.h:455
      bell_duration : aliased int;  -- /usr/include/X11/Xlib.h:456
      led : aliased int;  -- /usr/include/X11/Xlib.h:457
      led_mode : aliased int;  -- /usr/include/X11/Xlib.h:458
      key : aliased int;  -- /usr/include/X11/Xlib.h:459
      auto_repeat_mode : aliased int;  -- /usr/include/X11/Xlib.h:460
   end record;
   pragma Convention (C_Pass_By_Copy, XKeyboardControl);  -- /usr/include/X11/Xlib.h:461

  -- Data structure for XGetKeyboardControl  
   subtype XKeyboardState_auto_repeats_array is Interfaces.C.char_array (0 .. 31);
   type XKeyboardState is record
      key_click_percent : aliased int;  -- /usr/include/X11/Xlib.h:466
      bell_percent : aliased int;  -- /usr/include/X11/Xlib.h:467
      bell_pitch : aliased unsigned;  -- /usr/include/X11/Xlib.h:468
      bell_duration : aliased unsigned;  -- /usr/include/X11/Xlib.h:468
      led_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:469
      global_auto_repeat : aliased int;  -- /usr/include/X11/Xlib.h:470
      auto_repeats : aliased XKeyboardState_auto_repeats_array;  -- /usr/include/X11/Xlib.h:471
   end record;
   pragma Convention (C_Pass_By_Copy, XKeyboardState);  -- /usr/include/X11/Xlib.h:472

  -- Data structure for XGetMotionEvents.   
   type XTimeCoord is record
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:477
      x : aliased short;  -- /usr/include/X11/Xlib.h:478
      y : aliased short;  -- /usr/include/X11/Xlib.h:478
   end record;
   pragma Convention (C_Pass_By_Copy, XTimeCoord);  -- /usr/include/X11/Xlib.h:479

  -- Data structure for X{Set,Get}ModifierMapping  
  -- The server's max # of keys per modifier  
  -- An 8 by max_keypermod array of modifiers  
   type XModifierKeymap is record
      max_keypermod : aliased int;  -- /usr/include/X11/Xlib.h:484
      modifiermap : access X11_X_h.KeyCode;  -- /usr/include/X11/Xlib.h:485
   end record;
   pragma Convention (C_Pass_By_Copy, XModifierKeymap);  -- /usr/include/X11/Xlib.h:486

  -- * Display datatype maintaining display specific data.
  -- * The contents of this structure are implementation dependent.
  -- * A Display should be treated as opaque by application code.
  --  

   --  skipped empty struct Display

  -- Forward declare before use for C++  
   --  skipped empty struct u_XPrivate

   --  skipped empty struct u_XrmHashBucketRec

  -- hook for extension to hang data  
   type anon_1223 is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:506
      private1 : System.Address;  -- /usr/include/X11/Xlib.h:507
      fd : aliased int;  -- /usr/include/X11/Xlib.h:508
      private2 : aliased int;  -- /usr/include/X11/Xlib.h:509
      proto_major_version : aliased int;  -- /usr/include/X11/Xlib.h:510
      proto_minor_version : aliased int;  -- /usr/include/X11/Xlib.h:511
      vendor : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:512
      private3 : aliased X11_X_h.XID;  -- /usr/include/X11/Xlib.h:513
      private4 : aliased X11_X_h.XID;  -- /usr/include/X11/Xlib.h:514
      private5 : aliased X11_X_h.XID;  -- /usr/include/X11/Xlib.h:515
      private6 : aliased int;  -- /usr/include/X11/Xlib.h:516
      resource_alloc : access function (arg1 : System.Address) return X11_X_h.XID;  -- /usr/include/X11/Xlib.h:517
      byte_order : aliased int;  -- /usr/include/X11/Xlib.h:520
      bitmap_unit : aliased int;  -- /usr/include/X11/Xlib.h:521
      bitmap_pad : aliased int;  -- /usr/include/X11/Xlib.h:522
      bitmap_bit_order : aliased int;  -- /usr/include/X11/Xlib.h:523
      nformats : aliased int;  -- /usr/include/X11/Xlib.h:524
      pixmap_format : access ScreenFormat;  -- /usr/include/X11/Xlib.h:525
      private8 : aliased int;  -- /usr/include/X11/Xlib.h:526
      release : aliased int;  -- /usr/include/X11/Xlib.h:527
      private9 : System.Address;  -- /usr/include/X11/Xlib.h:528
      private10 : System.Address;  -- /usr/include/X11/Xlib.h:528
      qlen : aliased int;  -- /usr/include/X11/Xlib.h:529
      last_request_read : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:530
      request : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:531
      private11 : XPointer;  -- /usr/include/X11/Xlib.h:532
      private12 : XPointer;  -- /usr/include/X11/Xlib.h:533
      private13 : XPointer;  -- /usr/include/X11/Xlib.h:534
      private14 : XPointer;  -- /usr/include/X11/Xlib.h:535
      max_request_size : aliased unsigned;  -- /usr/include/X11/Xlib.h:536
      db : System.Address;  -- /usr/include/X11/Xlib.h:537
      private15 : access function (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:538
      display_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:541
      default_screen : aliased int;  -- /usr/include/X11/Xlib.h:542
      nscreens : aliased int;  -- /usr/include/X11/Xlib.h:543
      screens : access Screen;  -- /usr/include/X11/Xlib.h:544
      motion_buffer : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:545
      private16 : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:546
      min_keycode : aliased int;  -- /usr/include/X11/Xlib.h:547
      max_keycode : aliased int;  -- /usr/include/X11/Xlib.h:548
      private17 : XPointer;  -- /usr/include/X11/Xlib.h:549
      private18 : XPointer;  -- /usr/include/X11/Xlib.h:550
      private19 : aliased int;  -- /usr/include/X11/Xlib.h:551
      xdefaults : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:552
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1223);  -- /usr/include/X11/Xlib.h:501

  -- Network socket.  
  -- major version of server's X protocol  
  -- minor version of servers X protocol  
  -- vendor of the server hardware  
  -- allocator function  
  -- screen byte order, LSBFirst, MSBFirst  
  -- padding and data requirements  
  -- padding requirements on bitmaps  
  -- LeastSignificant or MostSignificant  
  -- number of pixmap formats in list  
  -- pixmap format list  
  -- release of the server  
  -- Length of input event queue  
  -- seq number of last event read  
  -- sequence number of last request.  
  -- maximum number 32 bit words in request 
  -- "host:display" string used on this connect 
  -- default screen for operations  
  -- number of screens on this server 
  -- pointer to list of screens  
  -- size of motion buffer  
  -- minimum defined keycode  
  -- maximum defined keycode  
  -- contents of defaults from server  
  -- there is more to this structure, but it is private to Xlib  
   type u_XPrivDisplay is access all anon_1223;  -- /usr/include/X11/Xlib.h:558

  -- * Definitions of specific events.
  --  

  -- of event  
  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- "event" window it is reported relative to  
  -- root window that the event occurred on  
  -- child window  
  -- milliseconds  
  -- pointer x, y coordinates in event window  
  -- coordinates relative to root  
  -- key or button mask  
  -- detail  
  -- same screen flag  
   type XKeyEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:566
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:567
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:568
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:569
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:570
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:571
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:572
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:573
      x : aliased int;  -- /usr/include/X11/Xlib.h:574
      y : aliased int;  -- /usr/include/X11/Xlib.h:574
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:575
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:575
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:576
      keycode : aliased unsigned;  -- /usr/include/X11/Xlib.h:577
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:578
   end record;
   pragma Convention (C_Pass_By_Copy, XKeyEvent);  -- /usr/include/X11/Xlib.h:579

   subtype XKeyPressedEvent is XKeyEvent;  -- /usr/include/X11/Xlib.h:580

   subtype XKeyReleasedEvent is XKeyEvent;  -- /usr/include/X11/Xlib.h:581

  -- of event  
  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- "event" window it is reported relative to  
  -- root window that the event occurred on  
  -- child window  
  -- milliseconds  
  -- pointer x, y coordinates in event window  
  -- coordinates relative to root  
  -- key or button mask  
  -- detail  
  -- same screen flag  
   type XButtonEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:584
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:585
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:586
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:587
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:588
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:589
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:590
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:591
      x : aliased int;  -- /usr/include/X11/Xlib.h:592
      y : aliased int;  -- /usr/include/X11/Xlib.h:592
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:593
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:593
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:594
      button : aliased unsigned;  -- /usr/include/X11/Xlib.h:595
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:596
   end record;
   pragma Convention (C_Pass_By_Copy, XButtonEvent);  -- /usr/include/X11/Xlib.h:597

   subtype XButtonPressedEvent is XButtonEvent;  -- /usr/include/X11/Xlib.h:598

   subtype XButtonReleasedEvent is XButtonEvent;  -- /usr/include/X11/Xlib.h:599

  -- of event  
  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- "event" window reported relative to  
  -- root window that the event occurred on  
  -- child window  
  -- milliseconds  
  -- pointer x, y coordinates in event window  
  -- coordinates relative to root  
  -- key or button mask  
  -- detail  
  -- same screen flag  
   type XMotionEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:602
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:603
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:604
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:605
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:606
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:607
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:608
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:609
      x : aliased int;  -- /usr/include/X11/Xlib.h:610
      y : aliased int;  -- /usr/include/X11/Xlib.h:610
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:611
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:611
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:612
      is_hint : aliased char;  -- /usr/include/X11/Xlib.h:613
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:614
   end record;
   pragma Convention (C_Pass_By_Copy, XMotionEvent);  -- /usr/include/X11/Xlib.h:615

   subtype XPointerMovedEvent is XMotionEvent;  -- /usr/include/X11/Xlib.h:616

  -- of event  
  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- "event" window reported relative to  
  -- root window that the event occurred on  
  -- child window  
  -- milliseconds  
  -- pointer x, y coordinates in event window  
  -- coordinates relative to root  
  -- NotifyNormal, NotifyGrab, NotifyUngrab  
  --	 * NotifyAncestor, NotifyVirtual, NotifyInferior,
  --	 * NotifyNonlinear,NotifyNonlinearVirtual
  --	  

  -- same screen flag  
  -- boolean focus  
  -- key or button mask  
   type XCrossingEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:619
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:620
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:621
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:622
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:623
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:624
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:625
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:626
      x : aliased int;  -- /usr/include/X11/Xlib.h:627
      y : aliased int;  -- /usr/include/X11/Xlib.h:627
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:628
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:628
      mode : aliased int;  -- /usr/include/X11/Xlib.h:629
      detail : aliased int;  -- /usr/include/X11/Xlib.h:630
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:635
      focus : aliased int;  -- /usr/include/X11/Xlib.h:636
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:637
   end record;
   pragma Convention (C_Pass_By_Copy, XCrossingEvent);  -- /usr/include/X11/Xlib.h:638

   subtype XEnterWindowEvent is XCrossingEvent;  -- /usr/include/X11/Xlib.h:639

   subtype XLeaveWindowEvent is XCrossingEvent;  -- /usr/include/X11/Xlib.h:640

  -- FocusIn or FocusOut  
  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- window of event  
  -- NotifyNormal, NotifyWhileGrabbed,
  --				   NotifyGrab, NotifyUngrab  

  --	 * NotifyAncestor, NotifyVirtual, NotifyInferior,
  --	 * NotifyNonlinear,NotifyNonlinearVirtual, NotifyPointer,
  --	 * NotifyPointerRoot, NotifyDetailNone
  --	  

   type XFocusChangeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:643
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:644
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:645
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:646
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:647
      mode : aliased int;  -- /usr/include/X11/Xlib.h:648
      detail : aliased int;  -- /usr/include/X11/Xlib.h:650
   end record;
   pragma Convention (C_Pass_By_Copy, XFocusChangeEvent);  -- /usr/include/X11/Xlib.h:656

   subtype XFocusInEvent is XFocusChangeEvent;  -- /usr/include/X11/Xlib.h:657

   subtype XFocusOutEvent is XFocusChangeEvent;  -- /usr/include/X11/Xlib.h:658

  -- generated on EnterWindow and FocusIn  when KeyMapState selected  
  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   subtype XKeymapEvent_key_vector_array is Interfaces.C.char_array (0 .. 31);
   type XKeymapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:662
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:663
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:664
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:665
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:666
      key_vector : aliased XKeymapEvent_key_vector_array;  -- /usr/include/X11/Xlib.h:667
   end record;
   pragma Convention (C_Pass_By_Copy, XKeymapEvent);  -- /usr/include/X11/Xlib.h:668

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- if non-zero, at least this many more  
   type XExposeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:671
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:672
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:673
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:674
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:675
      x : aliased int;  -- /usr/include/X11/Xlib.h:676
      y : aliased int;  -- /usr/include/X11/Xlib.h:676
      width : aliased int;  -- /usr/include/X11/Xlib.h:677
      height : aliased int;  -- /usr/include/X11/Xlib.h:677
      count : aliased int;  -- /usr/include/X11/Xlib.h:678
   end record;
   pragma Convention (C_Pass_By_Copy, XExposeEvent);  -- /usr/include/X11/Xlib.h:679

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- if non-zero, at least this many more  
  -- core is CopyArea or CopyPlane  
  -- not defined in the core  
   type XGraphicsExposeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:682
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:683
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:684
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:685
      the_drawable : aliased X11_X_h.Drawable;  -- /usr/include/X11/Xlib.h:686
      x : aliased int;  -- /usr/include/X11/Xlib.h:687
      y : aliased int;  -- /usr/include/X11/Xlib.h:687
      width : aliased int;  -- /usr/include/X11/Xlib.h:688
      height : aliased int;  -- /usr/include/X11/Xlib.h:688
      count : aliased int;  -- /usr/include/X11/Xlib.h:689
      major_code : aliased int;  -- /usr/include/X11/Xlib.h:690
      minor_code : aliased int;  -- /usr/include/X11/Xlib.h:691
   end record;
   pragma Convention (C_Pass_By_Copy, XGraphicsExposeEvent);  -- /usr/include/X11/Xlib.h:692

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- core is CopyArea or CopyPlane  
  -- not defined in the core  
   type XNoExposeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:695
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:696
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:697
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:698
      the_drawable : aliased X11_X_h.Drawable;  -- /usr/include/X11/Xlib.h:699
      major_code : aliased int;  -- /usr/include/X11/Xlib.h:700
      minor_code : aliased int;  -- /usr/include/X11/Xlib.h:701
   end record;
   pragma Convention (C_Pass_By_Copy, XNoExposeEvent);  -- /usr/include/X11/Xlib.h:702

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- Visibility state  
   type XVisibilityEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:705
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:706
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:707
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:708
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:709
      state : aliased int;  -- /usr/include/X11/Xlib.h:710
   end record;
   pragma Convention (C_Pass_By_Copy, XVisibilityEvent);  -- /usr/include/X11/Xlib.h:711

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- parent of the window  
  -- window id of window created  
  -- window location  
  -- size of window  
  -- border width  
  -- creation should be overridden  
   type XCreateWindowEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:714
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:715
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:716
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:717
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:718
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:719
      x : aliased int;  -- /usr/include/X11/Xlib.h:720
      y : aliased int;  -- /usr/include/X11/Xlib.h:720
      width : aliased int;  -- /usr/include/X11/Xlib.h:721
      height : aliased int;  -- /usr/include/X11/Xlib.h:721
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:722
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:723
   end record;
   pragma Convention (C_Pass_By_Copy, XCreateWindowEvent);  -- /usr/include/X11/Xlib.h:724

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XDestroyWindowEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:727
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:728
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:729
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:730
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:731
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:732
   end record;
   pragma Convention (C_Pass_By_Copy, XDestroyWindowEvent);  -- /usr/include/X11/Xlib.h:733

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XUnmapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:736
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:737
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:738
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:739
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:740
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:741
      from_configure : aliased int;  -- /usr/include/X11/Xlib.h:742
   end record;
   pragma Convention (C_Pass_By_Copy, XUnmapEvent);  -- /usr/include/X11/Xlib.h:743

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- boolean, is override set...  
   type XMapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:746
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:747
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:748
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:749
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:750
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:751
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:752
   end record;
   pragma Convention (C_Pass_By_Copy, XMapEvent);  -- /usr/include/X11/Xlib.h:753

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XMapRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:756
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:757
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:758
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:759
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:760
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:761
   end record;
   pragma Convention (C_Pass_By_Copy, XMapRequestEvent);  -- /usr/include/X11/Xlib.h:762

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XReparentEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:765
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:766
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:767
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:768
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:769
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:770
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:771
      x : aliased int;  -- /usr/include/X11/Xlib.h:772
      y : aliased int;  -- /usr/include/X11/Xlib.h:772
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:773
   end record;
   pragma Convention (C_Pass_By_Copy, XReparentEvent);  -- /usr/include/X11/Xlib.h:774

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XConfigureEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:777
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:778
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:779
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:780
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:781
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:782
      x : aliased int;  -- /usr/include/X11/Xlib.h:783
      y : aliased int;  -- /usr/include/X11/Xlib.h:783
      width : aliased int;  -- /usr/include/X11/Xlib.h:784
      height : aliased int;  -- /usr/include/X11/Xlib.h:784
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:785
      above : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:786
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:787
   end record;
   pragma Convention (C_Pass_By_Copy, XConfigureEvent);  -- /usr/include/X11/Xlib.h:788

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XGravityEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:791
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:792
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:793
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:794
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:795
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:796
      x : aliased int;  -- /usr/include/X11/Xlib.h:797
      y : aliased int;  -- /usr/include/X11/Xlib.h:797
   end record;
   pragma Convention (C_Pass_By_Copy, XGravityEvent);  -- /usr/include/X11/Xlib.h:798

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XResizeRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:801
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:802
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:803
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:804
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:805
      width : aliased int;  -- /usr/include/X11/Xlib.h:806
      height : aliased int;  -- /usr/include/X11/Xlib.h:806
   end record;
   pragma Convention (C_Pass_By_Copy, XResizeRequestEvent);  -- /usr/include/X11/Xlib.h:807

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- Above, Below, TopIf, BottomIf, Opposite  
   type XConfigureRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:810
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:811
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:812
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:813
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:814
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:815
      x : aliased int;  -- /usr/include/X11/Xlib.h:816
      y : aliased int;  -- /usr/include/X11/Xlib.h:816
      width : aliased int;  -- /usr/include/X11/Xlib.h:817
      height : aliased int;  -- /usr/include/X11/Xlib.h:817
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:818
      above : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:819
      detail : aliased int;  -- /usr/include/X11/Xlib.h:820
      value_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:821
   end record;
   pragma Convention (C_Pass_By_Copy, XConfigureRequestEvent);  -- /usr/include/X11/Xlib.h:822

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- PlaceOnTop, PlaceOnBottom  
   type XCirculateEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:825
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:826
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:827
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:828
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:829
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:830
      place : aliased int;  -- /usr/include/X11/Xlib.h:831
   end record;
   pragma Convention (C_Pass_By_Copy, XCirculateEvent);  -- /usr/include/X11/Xlib.h:832

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- PlaceOnTop, PlaceOnBottom  
   type XCirculateRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:835
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:836
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:837
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:838
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:839
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:840
      place : aliased int;  -- /usr/include/X11/Xlib.h:841
   end record;
   pragma Convention (C_Pass_By_Copy, XCirculateRequestEvent);  -- /usr/include/X11/Xlib.h:842

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- NewValue, Deleted  
   type XPropertyEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:845
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:846
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:847
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:848
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:849
      the_atom : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:850
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:851
      state : aliased int;  -- /usr/include/X11/Xlib.h:852
   end record;
   pragma Convention (C_Pass_By_Copy, XPropertyEvent);  -- /usr/include/X11/Xlib.h:853

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XSelectionClearEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:856
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:857
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:858
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:859
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:860
      selection : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:861
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:862
   end record;
   pragma Convention (C_Pass_By_Copy, XSelectionClearEvent);  -- /usr/include/X11/Xlib.h:863

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   type XSelectionRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:866
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:867
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:868
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:869
      owner : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:870
      requestor : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:871
      selection : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:872
      target : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:873
      property : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:874
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:875
   end record;
   pragma Convention (C_Pass_By_Copy, XSelectionRequestEvent);  -- /usr/include/X11/Xlib.h:876

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- ATOM or None  
   type XSelectionEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:879
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:880
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:881
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:882
      requestor : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:883
      selection : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:884
      target : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:885
      property : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:886
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:887
   end record;
   pragma Convention (C_Pass_By_Copy, XSelectionEvent);  -- /usr/include/X11/Xlib.h:888

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- COLORMAP or None  
  -- C++  
  -- ColormapInstalled, ColormapUninstalled  
   type XColormapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:891
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:892
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:893
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:894
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:895
      the_colormap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:896
      c_new : aliased int;  -- /usr/include/X11/Xlib.h:900
      state : aliased int;  -- /usr/include/X11/Xlib.h:902
   end record;
   pragma Convention (C_Pass_By_Copy, XColormapEvent);  -- /usr/include/X11/Xlib.h:903

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
   subtype anon1303_anon1305_array is Interfaces.C.char_array (0 .. 19);
   type anon1303_anon1307_array is array (0 .. 9) of aliased short;
   type anon1303_anon1309_array is array (0 .. 4) of aliased long;
   type anon_1303 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b : aliased anon1303_anon1305_array;  -- /usr/include/X11/Xlib.h:914
         when 1 =>
            s : aliased anon1303_anon1307_array;  -- /usr/include/X11/Xlib.h:915
         when others =>
            l : aliased anon1303_anon1309_array;  -- /usr/include/X11/Xlib.h:916
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1303);
   pragma Unchecked_Union (anon_1303);  -- /usr/include/X11/Xlib.h:913

   subtype XClientMessageEvent_b_array is Interfaces.C.char_array (0 .. 19);
   type XClientMessageEvent_s_array is array (0 .. 9) of aliased short;
   type XClientMessageEvent_l_array is array (0 .. 4) of aliased long;
   type XClientMessageEvent_data_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b : aliased XClientMessageEvent_b_array;  -- /usr/include/X11/Xlib.h:914
         when 1 =>
            s : aliased XClientMessageEvent_s_array;  -- /usr/include/X11/Xlib.h:915
         when others =>
            l : aliased XClientMessageEvent_l_array;  -- /usr/include/X11/Xlib.h:916
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, XClientMessageEvent_data_union);
   pragma Unchecked_Union (XClientMessageEvent_data_union);
   type XClientMessageEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:906
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:907
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:908
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:909
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:910
      message_type : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:911
      format : aliased int;  -- /usr/include/X11/Xlib.h:912
      data : XClientMessageEvent_data_union;  -- /usr/include/X11/Xlib.h:917
   end record;
   pragma Convention (C_Pass_By_Copy, XClientMessageEvent);  -- /usr/include/X11/Xlib.h:918

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- unused  
  -- one of MappingModifier, MappingKeyboard,
  --				   MappingPointer  

  -- first keycode  
  -- defines range of change w. first_keycode 
   type XMappingEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:921
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:922
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:923
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:924
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:925
      request : aliased int;  -- /usr/include/X11/Xlib.h:926
      first_keycode : aliased int;  -- /usr/include/X11/Xlib.h:928
      count : aliased int;  -- /usr/include/X11/Xlib.h:929
   end record;
   pragma Convention (C_Pass_By_Copy, XMappingEvent);  -- /usr/include/X11/Xlib.h:930

  -- Display the event was read from  
  -- resource id  
  -- serial number of failed request  
  -- error code of failed request  
  -- Major op-code of failed request  
  -- Minor op-code of failed request  
   type XErrorEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:933
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:934
      resourceid : aliased X11_X_h.XID;  -- /usr/include/X11/Xlib.h:935
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:936
      error_code : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:937
      request_code : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:938
      minor_code : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:939
   end record;
   pragma Convention (C_Pass_By_Copy, XErrorEvent);  -- /usr/include/X11/Xlib.h:940

  -- # of last request processed by server  
  -- true if this came from a SendEvent request  
  -- Display the event was read from  
  -- window on which event was requested in event mask  
   type XAnyEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:943
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:944
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:945
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:946
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:947
   end record;
   pragma Convention (C_Pass_By_Copy, XAnyEvent);  -- /usr/include/X11/Xlib.h:948

  --**************************************************************
  -- *
  -- * GenericEvent.  This event is the standard event for all newer extensions.
  --  

  -- of event. Always GenericEvent  
  -- # of last request processed  
  -- true if from SendEvent request  
  -- Display the event was read from  
  -- major opcode of extension that caused the event  
  -- actual event type.  
   type XGenericEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:958
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:959
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:960
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:961
      extension : aliased int;  -- /usr/include/X11/Xlib.h:962
      evtype : aliased int;  -- /usr/include/X11/Xlib.h:963
   end record;
   pragma Convention (C_Pass_By_Copy, XGenericEvent);  -- /usr/include/X11/Xlib.h:964

  -- of event. Always GenericEvent  
  -- # of last request processed  
  -- true if from SendEvent request  
  -- Display the event was read from  
  -- major opcode of extension that caused the event  
  -- actual event type.  
   type XGenericEventCookie is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:967
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:968
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:969
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:970
      extension : aliased int;  -- /usr/include/X11/Xlib.h:971
      evtype : aliased int;  -- /usr/include/X11/Xlib.h:972
      cookie : aliased unsigned;  -- /usr/include/X11/Xlib.h:973
      data : System.Address;  -- /usr/include/X11/Xlib.h:974
   end record;
   pragma Convention (C_Pass_By_Copy, XGenericEventCookie);  -- /usr/include/X11/Xlib.h:975

  -- * this union is defined so Xlib can always use the same sized
  -- * event structure internally, to avoid memory fragmentation.
  --  

  -- must not be changed; first element  
   type anon1321_anon1323_array is array (0 .. 23) of aliased long;
   type u_XEvent (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            c_type : aliased int;  -- /usr/include/X11/Xlib.h:982
         when 1 =>
            xany : aliased XAnyEvent;  -- /usr/include/X11/Xlib.h:983
         when 2 =>
            xkey : aliased XKeyEvent;  -- /usr/include/X11/Xlib.h:984
         when 3 =>
            xbutton : aliased XButtonEvent;  -- /usr/include/X11/Xlib.h:985
         when 4 =>
            xmotion : aliased XMotionEvent;  -- /usr/include/X11/Xlib.h:986
         when 5 =>
            xcrossing : aliased XCrossingEvent;  -- /usr/include/X11/Xlib.h:987
         when 6 =>
            xfocus : aliased XFocusChangeEvent;  -- /usr/include/X11/Xlib.h:988
         when 7 =>
            xexpose : aliased XExposeEvent;  -- /usr/include/X11/Xlib.h:989
         when 8 =>
            xgraphicsexpose : aliased XGraphicsExposeEvent;  -- /usr/include/X11/Xlib.h:990
         when 9 =>
            xnoexpose : aliased XNoExposeEvent;  -- /usr/include/X11/Xlib.h:991
         when 10 =>
            xvisibility : aliased XVisibilityEvent;  -- /usr/include/X11/Xlib.h:992
         when 11 =>
            xcreatewindow : aliased XCreateWindowEvent;  -- /usr/include/X11/Xlib.h:993
         when 12 =>
            xdestroywindow : aliased XDestroyWindowEvent;  -- /usr/include/X11/Xlib.h:994
         when 13 =>
            xunmap : aliased XUnmapEvent;  -- /usr/include/X11/Xlib.h:995
         when 14 =>
            xmap : aliased XMapEvent;  -- /usr/include/X11/Xlib.h:996
         when 15 =>
            xmaprequest : aliased XMapRequestEvent;  -- /usr/include/X11/Xlib.h:997
         when 16 =>
            xreparent : aliased XReparentEvent;  -- /usr/include/X11/Xlib.h:998
         when 17 =>
            xconfigure : aliased XConfigureEvent;  -- /usr/include/X11/Xlib.h:999
         when 18 =>
            xgravity : aliased XGravityEvent;  -- /usr/include/X11/Xlib.h:1000
         when 19 =>
            xresizerequest : aliased XResizeRequestEvent;  -- /usr/include/X11/Xlib.h:1001
         when 20 =>
            xconfigurerequest : aliased XConfigureRequestEvent;  -- /usr/include/X11/Xlib.h:1002
         when 21 =>
            xcirculate : aliased XCirculateEvent;  -- /usr/include/X11/Xlib.h:1003
         when 22 =>
            xcirculaterequest : aliased XCirculateRequestEvent;  -- /usr/include/X11/Xlib.h:1004
         when 23 =>
            xproperty : aliased XPropertyEvent;  -- /usr/include/X11/Xlib.h:1005
         when 24 =>
            xselectionclear : aliased XSelectionClearEvent;  -- /usr/include/X11/Xlib.h:1006
         when 25 =>
            xselectionrequest : aliased XSelectionRequestEvent;  -- /usr/include/X11/Xlib.h:1007
         when 26 =>
            xselection : aliased XSelectionEvent;  -- /usr/include/X11/Xlib.h:1008
         when 27 =>
            xcolormap : aliased XColormapEvent;  -- /usr/include/X11/Xlib.h:1009
         when 28 =>
            xclient : aliased XClientMessageEvent;  -- /usr/include/X11/Xlib.h:1010
         when 29 =>
            xmapping : aliased XMappingEvent;  -- /usr/include/X11/Xlib.h:1011
         when 30 =>
            xerror : aliased XErrorEvent;  -- /usr/include/X11/Xlib.h:1012
         when 31 =>
            xkeymap : aliased XKeymapEvent;  -- /usr/include/X11/Xlib.h:1013
         when 32 =>
            xgeneric : aliased XGenericEvent;  -- /usr/include/X11/Xlib.h:1014
         when 33 =>
            xcookie : aliased XGenericEventCookie;  -- /usr/include/X11/Xlib.h:1015
         when others =>
            pad : aliased anon1321_anon1323_array;  -- /usr/include/X11/Xlib.h:1016
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, u_XEvent);
   pragma Unchecked_Union (u_XEvent);  -- /usr/include/X11/Xlib.h:981

   subtype XEvent is u_XEvent;

  -- * per character font metric information.
  --  

  -- origin to left edge of raster  
  -- origin to right edge of raster  
  -- advance to next char's origin  
  -- baseline to top edge of raster  
  -- baseline to bottom edge of raster  
  -- per char flags (not predefined)  
   type XCharStruct is record
      lbearing : aliased short;  -- /usr/include/X11/Xlib.h:1026
      rbearing : aliased short;  -- /usr/include/X11/Xlib.h:1027
      width : aliased short;  -- /usr/include/X11/Xlib.h:1028
      ascent : aliased short;  -- /usr/include/X11/Xlib.h:1029
      descent : aliased short;  -- /usr/include/X11/Xlib.h:1030
      attributes : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1031
   end record;
   pragma Convention (C_Pass_By_Copy, XCharStruct);  -- /usr/include/X11/Xlib.h:1032

  -- * To allow arbitrary information with fonts, there are additional properties
  -- * returned.
  --  

   type XFontProp is record
      name : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:1039
      card32 : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:1040
   end record;
   pragma Convention (C_Pass_By_Copy, XFontProp);  -- /usr/include/X11/Xlib.h:1041

  -- hook for extension to hang data  
  -- Font id for this font  
  -- hint about direction the font is painted  
  -- first character  
  -- last character  
  -- first row that exists  
  -- last row that exists  
  -- flag if all characters have non-zero size 
  -- char to print for undefined character  
  -- how many properties there are  
  -- pointer to array of additional properties 
  -- minimum bounds over all existing char 
  -- maximum bounds over all existing char 
  -- first_char to last_char information  
  -- log. extent above baseline for spacing  
  -- log. descent below baseline for spacing  
   type XFontStruct is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:1044
      fid : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1045
      direction : aliased unsigned;  -- /usr/include/X11/Xlib.h:1046
      min_char_or_byte2 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1047
      max_char_or_byte2 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1048
      min_byte1 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1049
      max_byte1 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1050
      all_chars_exist : aliased int;  -- /usr/include/X11/Xlib.h:1051
      default_char : aliased unsigned;  -- /usr/include/X11/Xlib.h:1052
      n_properties : aliased int;  -- /usr/include/X11/Xlib.h:1053
      properties : access XFontProp;  -- /usr/include/X11/Xlib.h:1054
      min_bounds : aliased XCharStruct;  -- /usr/include/X11/Xlib.h:1055
      max_bounds : aliased XCharStruct;  -- /usr/include/X11/Xlib.h:1056
      per_char : access XCharStruct;  -- /usr/include/X11/Xlib.h:1057
      ascent : aliased int;  -- /usr/include/X11/Xlib.h:1058
      descent : aliased int;  -- /usr/include/X11/Xlib.h:1059
   end record;
   pragma Convention (C_Pass_By_Copy, XFontStruct);  -- /usr/include/X11/Xlib.h:1060

  -- * PolyText routines take these as arguments.
  --  

  -- pointer to string  
  -- number of characters  
  -- delta between strings  
  -- font to print it in, None don't change  
   type XTextItem is record
      chars : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1066
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1067
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1068
      the_font : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1069
   end record;
   pragma Convention (C_Pass_By_Copy, XTextItem);  -- /usr/include/X11/Xlib.h:1070

  -- normal 16 bit characters are two bytes  
   type XChar2b is record
      byte1 : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:1073
      byte2 : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:1074
   end record;
   pragma Convention (C_Pass_By_Copy, XChar2b);  -- /usr/include/X11/Xlib.h:1075

  -- two byte characters  
  -- number of characters  
  -- delta between strings  
  -- font to print it in, None don't change  
   type XTextItem16 is record
      chars : access XChar2b;  -- /usr/include/X11/Xlib.h:1078
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1079
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1080
      the_font : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1081
   end record;
   pragma Convention (C_Pass_By_Copy, XTextItem16);  -- /usr/include/X11/Xlib.h:1082

   type XEDataObject (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            the_display : System.Address;  -- /usr/include/X11/Xlib.h:1085
         when 1 =>
            the_gc : GC;  -- /usr/include/X11/Xlib.h:1086
         when 2 =>
            the_visual : access Visual;  -- /usr/include/X11/Xlib.h:1087
         when 3 =>
            the_screen : access Screen;  -- /usr/include/X11/Xlib.h:1088
         when 4 =>
            pixmap_format : access ScreenFormat;  -- /usr/include/X11/Xlib.h:1089
         when others =>
            font : access XFontStruct;  -- /usr/include/X11/Xlib.h:1090
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, XEDataObject);
   pragma Unchecked_Union (XEDataObject);  -- /usr/include/X11/Xlib.h:1090

   type XFontSetExtents is record
      max_ink_extent : aliased XRectangle;  -- /usr/include/X11/Xlib.h:1093
      max_logical_extent : aliased XRectangle;  -- /usr/include/X11/Xlib.h:1094
   end record;
   pragma Convention (C_Pass_By_Copy, XFontSetExtents);  -- /usr/include/X11/Xlib.h:1095

  -- unused:
  --typedef void (*XOMProc)();
  --  

   --  skipped empty struct u_XOM

   type XOM is new System.Address;  -- /usr/include/X11/Xlib.h:1101

   --  skipped empty struct u_XOC

   type XOC is new System.Address;  -- /usr/include/X11/Xlib.h:1102

   type XFontSet is new System.Address;  -- /usr/include/X11/Xlib.h:1102

   type XmbTextItem is record
      chars : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1105
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1106
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1107
      font_set : XFontSet;  -- /usr/include/X11/Xlib.h:1108
   end record;
   pragma Convention (C_Pass_By_Copy, XmbTextItem);  -- /usr/include/X11/Xlib.h:1109

   type XwcTextItem is record
      chars : access stddef_h.wchar_t;  -- /usr/include/X11/Xlib.h:1112
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1113
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1114
      font_set : XFontSet;  -- /usr/include/X11/Xlib.h:1115
   end record;
   pragma Convention (C_Pass_By_Copy, XwcTextItem);  -- /usr/include/X11/Xlib.h:1116

   type XOMCharSetList is record
      charset_count : aliased int;  -- /usr/include/X11/Xlib.h:1130
      charset_list : System.Address;  -- /usr/include/X11/Xlib.h:1131
   end record;
   pragma Convention (C_Pass_By_Copy, XOMCharSetList);  -- /usr/include/X11/Xlib.h:1132

   type XOrientation is 
     (XOMOrientation_LTR_TTB,
      XOMOrientation_RTL_TTB,
      XOMOrientation_TTB_LTR,
      XOMOrientation_TTB_RTL,
      XOMOrientation_Context);
   pragma Convention (C, XOrientation);  -- /usr/include/X11/Xlib.h:1140

  -- Input Text description  
   type XOMOrientation is record
      num_orientation : aliased int;  -- /usr/include/X11/Xlib.h:1143
      orientation : access XOrientation;  -- /usr/include/X11/Xlib.h:1144
   end record;
   pragma Convention (C_Pass_By_Copy, XOMOrientation);  -- /usr/include/X11/Xlib.h:1145

   type XOMFontInfo is record
      num_font : aliased int;  -- /usr/include/X11/Xlib.h:1148
      font_struct_list : System.Address;  -- /usr/include/X11/Xlib.h:1149
      font_name_list : System.Address;  -- /usr/include/X11/Xlib.h:1150
   end record;
   pragma Convention (C_Pass_By_Copy, XOMFontInfo);  -- /usr/include/X11/Xlib.h:1151

   --  skipped empty struct u_XIM

   type XIM is new System.Address;  -- /usr/include/X11/Xlib.h:1153

   --  skipped empty struct u_XIC

   type XIC is new System.Address;  -- /usr/include/X11/Xlib.h:1154

   type XIMProc is access procedure
        (arg1 : XIM;
         arg2 : XPointer;
         arg3 : XPointer);  -- /usr/include/X11/Xlib.h:1156

   type XICProc is access function
        (arg1 : XIC;
         arg2 : XPointer;
         arg3 : XPointer) return int;  -- /usr/include/X11/Xlib.h:1162

   type XIDProc is access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : XPointer);  -- /usr/include/X11/Xlib.h:1168

   subtype XIMStyle is unsigned_long;  -- /usr/include/X11/Xlib.h:1174

   type XIMStyles is record
      count_styles : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1177
      supported_styles : access XIMStyle;  -- /usr/include/X11/Xlib.h:1178
   end record;
   pragma Convention (C_Pass_By_Copy, XIMStyles);  -- /usr/include/X11/Xlib.h:1179

   type XVaNestedList is new System.Address;  -- /usr/include/X11/Xlib.h:1241

   type XIMCallback is record
      client_data : XPointer;  -- /usr/include/X11/Xlib.h:1244
      callback : access procedure
           (arg1 : XIM;
            arg2 : XPointer;
            arg3 : XPointer);  -- /usr/include/X11/Xlib.h:1245
   end record;
   pragma Convention (C_Pass_By_Copy, XIMCallback);  -- /usr/include/X11/Xlib.h:1246

   type XICCallback is record
      client_data : XPointer;  -- /usr/include/X11/Xlib.h:1249
      callback : access function
           (arg1 : XIC;
            arg2 : XPointer;
            arg3 : XPointer) return int;  -- /usr/include/X11/Xlib.h:1250
   end record;
   pragma Convention (C_Pass_By_Copy, XICCallback);  -- /usr/include/X11/Xlib.h:1251

   subtype XIMFeedback is unsigned_long;  -- /usr/include/X11/Xlib.h:1253

   type anon_1407 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            multi_byte : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1270
         when others =>
            wide_char : access stddef_h.wchar_t;  -- /usr/include/X11/Xlib.h:1271
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1407);
   pragma Unchecked_Union (anon_1407);  -- /usr/include/X11/Xlib.h:1269

   type anon1405_anon1407_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            multi_byte : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1270
         when others =>
            wide_char : access stddef_h.wchar_t;  -- /usr/include/X11/Xlib.h:1271
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon1405_anon1407_union);
   pragma Unchecked_Union (anon1405_anon1407_union);
   type u_XIMText is record
      length : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1266
      feedback : access XIMFeedback;  -- /usr/include/X11/Xlib.h:1267
      encoding_is_wchar : aliased int;  -- /usr/include/X11/Xlib.h:1268
      string : anon1405_anon1407_union;  -- /usr/include/X11/Xlib.h:1272
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMText);  -- /usr/include/X11/Xlib.h:1265

   subtype XIMText is u_XIMText;

   subtype XIMPreeditState is unsigned_long;  -- /usr/include/X11/Xlib.h:1275

   type u_XIMPreeditStateNotifyCallbackStruct is record
      state : aliased XIMPreeditState;  -- /usr/include/X11/Xlib.h:1282
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMPreeditStateNotifyCallbackStruct);  -- /usr/include/X11/Xlib.h:1281

   subtype XIMPreeditStateNotifyCallbackStruct is u_XIMPreeditStateNotifyCallbackStruct;

   subtype XIMResetState is unsigned_long;  -- /usr/include/X11/Xlib.h:1285

   subtype XIMStringConversionFeedback is unsigned_long;  -- /usr/include/X11/Xlib.h:1290

   type anon_1416 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            mbs : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1304
         when others =>
            wcs : access stddef_h.wchar_t;  -- /usr/include/X11/Xlib.h:1305
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1416);
   pragma Unchecked_Union (anon_1416);  -- /usr/include/X11/Xlib.h:1303

   type anon1414_anon1416_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            mbs : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1304
         when others =>
            wcs : access stddef_h.wchar_t;  -- /usr/include/X11/Xlib.h:1305
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon1414_anon1416_union);
   pragma Unchecked_Union (anon1414_anon1416_union);
   type u_XIMStringConversionText is record
      length : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1300
      feedback : access XIMStringConversionFeedback;  -- /usr/include/X11/Xlib.h:1301
      encoding_is_wchar : aliased int;  -- /usr/include/X11/Xlib.h:1302
      string : anon1414_anon1416_union;  -- /usr/include/X11/Xlib.h:1306
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMStringConversionText);  -- /usr/include/X11/Xlib.h:1299

   subtype XIMStringConversionText is u_XIMStringConversionText;

   subtype XIMStringConversionPosition is unsigned_short;  -- /usr/include/X11/Xlib.h:1309

   subtype XIMStringConversionType is unsigned_short;  -- /usr/include/X11/Xlib.h:1311

   subtype XIMStringConversionOperation is unsigned_short;  -- /usr/include/X11/Xlib.h:1318

   type XIMCaretDirection is 
     (XIMForwardChar,
      XIMBackwardChar,
      XIMForwardWord,
      XIMBackwardWord,
      XIMCaretUp,
      XIMCaretDown,
      XIMNextLine,
      XIMPreviousLine,
      XIMLineStart,
      XIMLineEnd,
      XIMAbsolutePosition,
      XIMDontChange);
   pragma Convention (C, XIMCaretDirection);  -- /usr/include/X11/Xlib.h:1331

   type u_XIMStringConversionCallbackStruct is record
      position : aliased XIMStringConversionPosition;  -- /usr/include/X11/Xlib.h:1334
      direction : aliased XIMCaretDirection;  -- /usr/include/X11/Xlib.h:1335
      operation : aliased XIMStringConversionOperation;  -- /usr/include/X11/Xlib.h:1336
      factor : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1337
      text : access XIMStringConversionText;  -- /usr/include/X11/Xlib.h:1338
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMStringConversionCallbackStruct);  -- /usr/include/X11/Xlib.h:1333

   subtype XIMStringConversionCallbackStruct is u_XIMStringConversionCallbackStruct;

  -- Cursor offset within pre-edit string  
   type u_XIMPreeditDrawCallbackStruct is record
      caret : aliased int;  -- /usr/include/X11/Xlib.h:1342
      chg_first : aliased int;  -- /usr/include/X11/Xlib.h:1343
      chg_length : aliased int;  -- /usr/include/X11/Xlib.h:1344
      text : access XIMText;  -- /usr/include/X11/Xlib.h:1345
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMPreeditDrawCallbackStruct);  -- /usr/include/X11/Xlib.h:1341

  -- Starting change position  
  -- Length of the change in character count  
   subtype XIMPreeditDrawCallbackStruct is u_XIMPreeditDrawCallbackStruct;

  -- Disable caret feedback  
  -- UI defined caret feedback  
  -- UI defined caret feedback  
   type XIMCaretStyle is 
     (XIMIsInvisible,
      XIMIsPrimary,
      XIMIsSecondary);
   pragma Convention (C, XIMCaretStyle);  -- /usr/include/X11/Xlib.h:1352

  -- Caret offset within pre-edit string  
   type u_XIMPreeditCaretCallbackStruct is record
      position : aliased int;  -- /usr/include/X11/Xlib.h:1355
      direction : aliased XIMCaretDirection;  -- /usr/include/X11/Xlib.h:1356
      style : aliased XIMCaretStyle;  -- /usr/include/X11/Xlib.h:1357
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMPreeditCaretCallbackStruct);  -- /usr/include/X11/Xlib.h:1354

  -- Caret moves direction  
  -- Feedback of the caret  
   subtype XIMPreeditCaretCallbackStruct is u_XIMPreeditCaretCallbackStruct;

   type XIMStatusDataType is 
     (XIMTextType,
      XIMBitmapType);
   pragma Convention (C, XIMStatusDataType);  -- /usr/include/X11/Xlib.h:1363

   type anon_1438 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            text : access XIMText;  -- /usr/include/X11/Xlib.h:1368
         when others =>
            bitmap : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1369
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1438);
   pragma Unchecked_Union (anon_1438);  -- /usr/include/X11/Xlib.h:1367

   type anon1437_anon1438_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            text : access XIMText;  -- /usr/include/X11/Xlib.h:1368
         when others =>
            bitmap : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1369
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon1437_anon1438_union);
   pragma Unchecked_Union (anon1437_anon1438_union);
   type u_XIMStatusDrawCallbackStruct is record
      c_type : aliased XIMStatusDataType;  -- /usr/include/X11/Xlib.h:1366
      data : anon1437_anon1438_union;  -- /usr/include/X11/Xlib.h:1370
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMStatusDrawCallbackStruct);  -- /usr/include/X11/Xlib.h:1365

   subtype XIMStatusDrawCallbackStruct is u_XIMStatusDrawCallbackStruct;

   type u_XIMHotKeyTrigger is record
      the_keysym : aliased X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1374
      modifier : aliased int;  -- /usr/include/X11/Xlib.h:1375
      modifier_mask : aliased int;  -- /usr/include/X11/Xlib.h:1376
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMHotKeyTrigger);  -- /usr/include/X11/Xlib.h:1373

   subtype XIMHotKeyTrigger is u_XIMHotKeyTrigger;

   type u_XIMHotKeyTriggers is record
      num_hot_key : aliased int;  -- /usr/include/X11/Xlib.h:1380
      key : access XIMHotKeyTrigger;  -- /usr/include/X11/Xlib.h:1381
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMHotKeyTriggers);  -- /usr/include/X11/Xlib.h:1379

   subtype XIMHotKeyTriggers is u_XIMHotKeyTriggers;

   subtype XIMHotKeyState is unsigned_long;  -- /usr/include/X11/Xlib.h:1384

   type XIMValuesList is record
      count_values : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1390
      supported_values : System.Address;  -- /usr/include/X11/Xlib.h:1391
   end record;
   pragma Convention (C_Pass_By_Copy, XIMValuesList);  -- /usr/include/X11/Xlib.h:1392

   function XLoadQueryFont (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return access XFontStruct;  -- /usr/include/X11/Xlib.h:1402
   pragma Import (C, XLoadQueryFont, "XLoadQueryFont");

  -- display  
  -- name  
   function XQueryFont (arg1 : System.Address; arg2 : X11_X_h.XID) return access XFontStruct;  -- /usr/include/X11/Xlib.h:1407
   pragma Import (C, XQueryFont, "XQueryFont");

  -- display  
  -- font_ID  
   function XGetMotionEvents
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Time;
      arg4 : X11_X_h.Time;
      arg5 : access int) return access XTimeCoord;  -- /usr/include/X11/Xlib.h:1413
   pragma Import (C, XGetMotionEvents, "XGetMotionEvents");

  -- display  
  -- w  
  -- start  
  -- stop  
  -- nevents_return  
   function XDeleteModifiermapEntry
     (arg1 : access XModifierKeymap;
      arg2 : X11_X_h.KeyCode;
      arg3 : int) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1421
   pragma Import (C, XDeleteModifiermapEntry, "XDeleteModifiermapEntry");

  -- modmap  
  -- keycode_entry  
  -- keycode_entry  
  -- modifier  
   function XGetModifierMapping (arg1 : System.Address) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1431
   pragma Import (C, XGetModifierMapping, "XGetModifierMapping");

  -- display  
   function XInsertModifiermapEntry
     (arg1 : access XModifierKeymap;
      arg2 : X11_X_h.KeyCode;
      arg3 : int) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1435
   pragma Import (C, XInsertModifiermapEntry, "XInsertModifiermapEntry");

  -- modmap  
  -- keycode_entry  
  -- keycode_entry  
  -- modifier  
   function XNewModifiermap (arg1 : int) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1445
   pragma Import (C, XNewModifiermap, "XNewModifiermap");

  -- max_keys_per_mod  
   function XCreateImage
     (arg1 : System.Address;
      arg2 : access Visual;
      arg3 : unsigned;
      arg4 : int;
      arg5 : int;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : unsigned;
      arg8 : unsigned;
      arg9 : int;
      arg10 : int) return access XImage;  -- /usr/include/X11/Xlib.h:1449
   pragma Import (C, XCreateImage, "XCreateImage");

  -- display  
  -- visual  
  -- depth  
  -- format  
  -- offset  
  -- data  
  -- width  
  -- height  
  -- bitmap_pad  
  -- bytes_per_line  
   function XInitImage (arg1 : access XImage) return int;  -- /usr/include/X11/Xlib.h:1461
   pragma Import (C, XInitImage, "XInitImage");

  -- image  
   function XGetImage
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned_long;
      arg8 : int) return access XImage;  -- /usr/include/X11/Xlib.h:1464
   pragma Import (C, XGetImage, "XGetImage");

  -- display  
  -- d  
  -- x  
  -- y  
  -- width  
  -- height  
  -- plane_mask  
  -- format  
   function XGetSubImage
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned_long;
      arg8 : int;
      arg9 : access XImage;
      arg10 : int;
      arg11 : int) return access XImage;  -- /usr/include/X11/Xlib.h:1474
   pragma Import (C, XGetSubImage, "XGetSubImage");

  -- display  
  -- d  
  -- x  
  -- y  
  -- width  
  -- height  
  -- plane_mask  
  -- format  
  -- dest_image  
  -- dest_x  
  -- dest_y  
  -- * X function declarations.
  --  

   function XOpenDisplay (arg1 : Interfaces.C.Strings.chars_ptr) return System.Address;  -- /usr/include/X11/Xlib.h:1491
   pragma Import (C, XOpenDisplay, "XOpenDisplay");

  -- display_name  
   procedure XrmInitialize;  -- /usr/include/X11/Xlib.h:1495
   pragma Import (C, XrmInitialize, "XrmInitialize");

   function XFetchBytes (arg1 : System.Address; arg2 : access int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1499
   pragma Import (C, XFetchBytes, "XFetchBytes");

  -- display  
  -- nbytes_return  
   function XFetchBuffer
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1503
   pragma Import (C, XFetchBuffer, "XFetchBuffer");

  -- display  
  -- nbytes_return  
  -- buffer  
   function XGetAtomName (arg1 : System.Address; arg2 : X11_X_h.Atom) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1508
   pragma Import (C, XGetAtomName, "XGetAtomName");

  -- display  
  -- atom  
   function XGetAtomNames
     (arg1 : System.Address;
      arg2 : access X11_X_h.Atom;
      arg3 : int;
      arg4 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1512
   pragma Import (C, XGetAtomNames, "XGetAtomNames");

  -- dpy  
  -- atoms  
  -- count  
  -- names_return  
   function XGetDefault
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1518
   pragma Import (C, XGetDefault, "XGetDefault");

  -- display  
  -- program  
  -- option  
   function XDisplayName (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1523
   pragma Import (C, XDisplayName, "XDisplayName");

  -- string  
   function XKeysymToString (arg1 : X11_X_h.KeySym) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1526
   pragma Import (C, XKeysymToString, "XKeysymToString");

  -- keysym  
   function XSynchronize (arg1 : System.Address; arg2 : int) return access function (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1530
   pragma Import (C, XSynchronize, "XSynchronize");

  -- display  
  -- onoff  
  -- display  
   function XSetAfterFunction (arg1 : System.Address; arg2 : access function (arg1 : System.Address) return int) return access function (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1536
   pragma Import (C, XSetAfterFunction, "XSetAfterFunction");

  -- display  
  -- display  
  -- procedure  
  -- display  
   function XInternAtom
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:1544
   pragma Import (C, XInternAtom, "XInternAtom");

  -- display  
  -- atom_name  
  -- only_if_exists  
   function XInternAtoms
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : int;
      arg4 : int;
      arg5 : access X11_X_h.Atom) return int;  -- /usr/include/X11/Xlib.h:1549
   pragma Import (C, XInternAtoms, "XInternAtoms");

  -- dpy  
  -- names  
  -- count  
  -- onlyIfExists  
  -- atoms_return  
   function XCopyColormapAndFree (arg1 : System.Address; arg2 : X11_X_h.Colormap) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1556
   pragma Import (C, XCopyColormapAndFree, "XCopyColormapAndFree");

  -- display  
  -- colormap  
   function XCreateColormap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access Visual;
      arg4 : int) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1560
   pragma Import (C, XCreateColormap, "XCreateColormap");

  -- display  
  -- w  
  -- visual  
  -- alloc  
   function XCreatePixmapCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Pixmap;
      arg3 : X11_X_h.Pixmap;
      arg4 : access XColor;
      arg5 : access XColor;
      arg6 : unsigned;
      arg7 : unsigned) return X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:1566
   pragma Import (C, XCreatePixmapCursor, "XCreatePixmapCursor");

  -- display  
  -- source  
  -- mask  
  -- foreground_color  
  -- background_color  
  -- x  
  -- y  
   function XCreateGlyphCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Font;
      arg3 : X11_X_h.Font;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : access constant XColor;
      arg7 : access constant XColor) return X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:1575
   pragma Import (C, XCreateGlyphCursor, "XCreateGlyphCursor");

  -- display  
  -- source_font  
  -- mask_font  
  -- source_char  
  -- mask_char  
  -- foreground_color  
  -- background_color  
   function XCreateFontCursor (arg1 : System.Address; arg2 : unsigned) return X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:1584
   pragma Import (C, XCreateFontCursor, "XCreateFontCursor");

  -- display  
  -- shape  
   function XLoadFont (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1588
   pragma Import (C, XLoadFont, "XLoadFont");

  -- display  
  -- name  
   function XCreateGC
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned_long;
      arg4 : access XGCValues) return GC;  -- /usr/include/X11/Xlib.h:1592
   pragma Import (C, XCreateGC, "XCreateGC");

  -- display  
  -- d  
  -- valuemask  
  -- values  
   function XGContextFromGC (arg1 : GC) return X11_X_h.GContext;  -- /usr/include/X11/Xlib.h:1598
   pragma Import (C, XGContextFromGC, "XGContextFromGC");

  -- gc  
   procedure XFlushGC (arg1 : System.Address; arg2 : GC);  -- /usr/include/X11/Xlib.h:1601
   pragma Import (C, XFlushGC, "XFlushGC");

  -- display  
  -- gc  
   function XCreatePixmap
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : unsigned) return X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1605
   pragma Import (C, XCreatePixmap, "XCreatePixmap");

  -- display  
  -- d  
  -- width  
  -- height  
  -- depth  
   function XCreateBitmapFromData
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : unsigned;
      arg5 : unsigned) return X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1612
   pragma Import (C, XCreateBitmapFromData, "XCreateBitmapFromData");

  -- display  
  -- d  
  -- data  
  -- width  
  -- height  
   function XCreatePixmapFromBitmapData
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : unsigned_long;
      arg7 : unsigned_long;
      arg8 : unsigned) return X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1619
   pragma Import (C, XCreatePixmapFromBitmapData, "XCreatePixmapFromBitmapData");

  -- display  
  -- d  
  -- data  
  -- width  
  -- height  
  -- fg  
  -- bg  
  -- depth  
   function XCreateSimpleWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : unsigned_long;
      arg9 : unsigned_long) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1629
   pragma Import (C, XCreateSimpleWindow, "XCreateSimpleWindow");

  -- display  
  -- parent  
  -- x  
  -- y  
  -- width  
  -- height  
  -- border_width  
  -- border  
  -- background  
   function XGetSelectionOwner (arg1 : System.Address; arg2 : X11_X_h.Atom) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1640
   pragma Import (C, XGetSelectionOwner, "XGetSelectionOwner");

  -- display  
  -- selection  
   function XCreateWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : unsigned;
      arg10 : access Visual;
      arg11 : unsigned_long;
      arg12 : access XSetWindowAttributes) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1644
   pragma Import (C, XCreateWindow, "XCreateWindow");

  -- display  
  -- parent  
  -- x  
  -- y  
  -- width  
  -- height  
  -- border_width  
  -- depth  
  -- class  
  -- visual  
  -- valuemask  
  -- attributes  
   function XListInstalledColormaps
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access int) return access X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1658
   pragma Import (C, XListInstalledColormaps, "XListInstalledColormaps");

  -- display  
  -- w  
  -- num_return  
   function XListFonts
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access int) return System.Address;  -- /usr/include/X11/Xlib.h:1663
   pragma Import (C, XListFonts, "XListFonts");

  -- display  
  -- pattern  
  -- maxnames  
  -- actual_count_return  
   function XListFontsWithInfo
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access int;
      arg5 : System.Address) return System.Address;  -- /usr/include/X11/Xlib.h:1669
   pragma Import (C, XListFontsWithInfo, "XListFontsWithInfo");

  -- display  
  -- pattern  
  -- maxnames  
  -- count_return  
  -- info_return  
   function XGetFontPath (arg1 : System.Address; arg2 : access int) return System.Address;  -- /usr/include/X11/Xlib.h:1676
   pragma Import (C, XGetFontPath, "XGetFontPath");

  -- display  
  -- npaths_return  
   function XListExtensions (arg1 : System.Address; arg2 : access int) return System.Address;  -- /usr/include/X11/Xlib.h:1680
   pragma Import (C, XListExtensions, "XListExtensions");

  -- display  
  -- nextensions_return  
   function XListProperties
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access int) return access X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:1684
   pragma Import (C, XListProperties, "XListProperties");

  -- display  
  -- w  
  -- num_prop_return  
   function XListHosts
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int) return access XHostAddress;  -- /usr/include/X11/Xlib.h:1689
   pragma Import (C, XListHosts, "XListHosts");

  -- display  
  -- nhosts_return  
  -- state_return  
   function XKeycodeToKeysym
     (arg1 : System.Address;
      arg2 : X11_X_h.KeyCode;
      arg3 : int) return X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1694
   pragma Import (C, XKeycodeToKeysym, "XKeycodeToKeysym");

  -- display  
  -- keycode  
  -- keycode  
  -- index  
   function c_XLookupKeysym (arg1 : access XKeyEvent; arg2 : int) return X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1703
   pragma Import (C, c_XLookupKeysym, "XLookupKeysym");

  -- key_event  
  -- index  
   function XGetKeyboardMapping
     (arg1 : System.Address;
      arg2 : X11_X_h.KeyCode;
      arg3 : int;
      arg4 : access int) return access X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1707
   pragma Import (C, XGetKeyboardMapping, "XGetKeyboardMapping");

  -- display  
  -- first_keycode  
  -- first_keycode  
  -- keycode_count  
  -- keysyms_per_keycode_return  
   function XStringToKeysym (arg1 : Interfaces.C.Strings.chars_ptr) return X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1717
   pragma Import (C, XStringToKeysym, "XStringToKeysym");

  -- string  
   function XMaxRequestSize (arg1 : System.Address) return long;  -- /usr/include/X11/Xlib.h:1720
   pragma Import (C, XMaxRequestSize, "XMaxRequestSize");

  -- display  
   function XExtendedMaxRequestSize (arg1 : System.Address) return long;  -- /usr/include/X11/Xlib.h:1723
   pragma Import (C, XExtendedMaxRequestSize, "XExtendedMaxRequestSize");

  -- display  
   function XResourceManagerString (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1726
   pragma Import (C, XResourceManagerString, "XResourceManagerString");

  -- display  
   function XScreenResourceString (arg1 : access Screen) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1729
   pragma Import (C, XScreenResourceString, "XScreenResourceString");

  -- screen  
   function XDisplayMotionBufferSize (arg1 : System.Address) return unsigned_long;  -- /usr/include/X11/Xlib.h:1732
   pragma Import (C, XDisplayMotionBufferSize, "XDisplayMotionBufferSize");

  -- display  
   function XVisualIDFromVisual (arg1 : access Visual) return X11_X_h.VisualID;  -- /usr/include/X11/Xlib.h:1735
   pragma Import (C, XVisualIDFromVisual, "XVisualIDFromVisual");

  -- visual  
  -- multithread routines  
   function XInitThreads return int;  -- /usr/include/X11/Xlib.h:1741
   pragma Import (C, XInitThreads, "XInitThreads");

   procedure XLockDisplay (arg1 : System.Address);  -- /usr/include/X11/Xlib.h:1745
   pragma Import (C, XLockDisplay, "XLockDisplay");

  -- display  
   procedure XUnlockDisplay (arg1 : System.Address);  -- /usr/include/X11/Xlib.h:1749
   pragma Import (C, XUnlockDisplay, "XUnlockDisplay");

  -- display  
  -- routines for dealing with extensions  
   function XInitExtension (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return access XExtCodes;  -- /usr/include/X11/Xlib.h:1755
   pragma Import (C, XInitExtension, "XInitExtension");

  -- display  
  -- name  
   function XAddExtension (arg1 : System.Address) return access XExtCodes;  -- /usr/include/X11/Xlib.h:1760
   pragma Import (C, XAddExtension, "XAddExtension");

  -- display  
   function XFindOnExtensionList (arg1 : System.Address; arg2 : int) return access XExtData;  -- /usr/include/X11/Xlib.h:1763
   pragma Import (C, XFindOnExtensionList, "XFindOnExtensionList");

  -- structure  
  -- number  
   function XEHeadOfExtensionList (arg1 : XEDataObject) return System.Address;  -- /usr/include/X11/Xlib.h:1767
   pragma Import (C, XEHeadOfExtensionList, "XEHeadOfExtensionList");

  -- object  
  -- these are routines for which there are also macros  
   function XRootWindow (arg1 : System.Address; arg2 : int) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1772
   pragma Import (C, XRootWindow, "XRootWindow");

  -- display  
  -- screen_number  
   function XDefaultRootWindow (arg1 : System.Address) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1776
   pragma Import (C, XDefaultRootWindow, "XDefaultRootWindow");

  -- display  
   function XRootWindowOfScreen (arg1 : access Screen) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1779
   pragma Import (C, XRootWindowOfScreen, "XRootWindowOfScreen");

  -- screen  
   function XDefaultVisual (arg1 : System.Address; arg2 : int) return access Visual;  -- /usr/include/X11/Xlib.h:1782
   pragma Import (C, XDefaultVisual, "XDefaultVisual");

  -- display  
  -- screen_number  
   function XDefaultVisualOfScreen (arg1 : access Screen) return access Visual;  -- /usr/include/X11/Xlib.h:1786
   pragma Import (C, XDefaultVisualOfScreen, "XDefaultVisualOfScreen");

  -- screen  
   function XDefaultGC (arg1 : System.Address; arg2 : int) return GC;  -- /usr/include/X11/Xlib.h:1789
   pragma Import (C, XDefaultGC, "XDefaultGC");

  -- display  
  -- screen_number  
   function XDefaultGCOfScreen (arg1 : access Screen) return GC;  -- /usr/include/X11/Xlib.h:1793
   pragma Import (C, XDefaultGCOfScreen, "XDefaultGCOfScreen");

  -- screen  
   function XBlackPixel (arg1 : System.Address; arg2 : int) return unsigned_long;  -- /usr/include/X11/Xlib.h:1796
   pragma Import (C, XBlackPixel, "XBlackPixel");

  -- display  
  -- screen_number  
   function XWhitePixel (arg1 : System.Address; arg2 : int) return unsigned_long;  -- /usr/include/X11/Xlib.h:1800
   pragma Import (C, XWhitePixel, "XWhitePixel");

  -- display  
  -- screen_number  
   function XAllPlanes return unsigned_long;  -- /usr/include/X11/Xlib.h:1804
   pragma Import (C, XAllPlanes, "XAllPlanes");

   function XBlackPixelOfScreen (arg1 : access Screen) return unsigned_long;  -- /usr/include/X11/Xlib.h:1807
   pragma Import (C, XBlackPixelOfScreen, "XBlackPixelOfScreen");

  -- screen  
   function XWhitePixelOfScreen (arg1 : access Screen) return unsigned_long;  -- /usr/include/X11/Xlib.h:1810
   pragma Import (C, XWhitePixelOfScreen, "XWhitePixelOfScreen");

  -- screen  
   function XNextRequest (arg1 : System.Address) return unsigned_long;  -- /usr/include/X11/Xlib.h:1813
   pragma Import (C, XNextRequest, "XNextRequest");

  -- display  
   function XLastKnownRequestProcessed (arg1 : System.Address) return unsigned_long;  -- /usr/include/X11/Xlib.h:1816
   pragma Import (C, XLastKnownRequestProcessed, "XLastKnownRequestProcessed");

  -- display  
   function XServerVendor (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1819
   pragma Import (C, XServerVendor, "XServerVendor");

  -- display  
   function XDisplayString (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1822
   pragma Import (C, XDisplayString, "XDisplayString");

  -- display  
   function XDefaultColormap (arg1 : System.Address; arg2 : int) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1825
   pragma Import (C, XDefaultColormap, "XDefaultColormap");

  -- display  
  -- screen_number  
   function XDefaultColormapOfScreen (arg1 : access Screen) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1829
   pragma Import (C, XDefaultColormapOfScreen, "XDefaultColormapOfScreen");

  -- screen  
   function XDisplayOfScreen (arg1 : access Screen) return System.Address;  -- /usr/include/X11/Xlib.h:1832
   pragma Import (C, XDisplayOfScreen, "XDisplayOfScreen");

  -- screen  
   function XScreenOfDisplay (arg1 : System.Address; arg2 : int) return access Screen;  -- /usr/include/X11/Xlib.h:1835
   pragma Import (C, XScreenOfDisplay, "XScreenOfDisplay");

  -- display  
  -- screen_number  
   function XDefaultScreenOfDisplay (arg1 : System.Address) return access Screen;  -- /usr/include/X11/Xlib.h:1839
   pragma Import (C, XDefaultScreenOfDisplay, "XDefaultScreenOfDisplay");

  -- display  
   function XEventMaskOfScreen (arg1 : access Screen) return long;  -- /usr/include/X11/Xlib.h:1842
   pragma Import (C, XEventMaskOfScreen, "XEventMaskOfScreen");

  -- screen  
   function XScreenNumberOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:1846
   pragma Import (C, XScreenNumberOfScreen, "XScreenNumberOfScreen");

  -- screen  
  -- WARNING, this type not in Xlib spec  
   type XErrorHandler is access function (arg1 : System.Address; arg2 : access XErrorEvent) return int;  -- /usr/include/X11/Xlib.h:1850

  -- display  
  -- error_event  
   function XSetErrorHandler (arg1 : access function (arg1 : System.Address; arg2 : access XErrorEvent) return int) return access function (arg1 : System.Address; arg2 : access XErrorEvent) return int;  -- /usr/include/X11/Xlib.h:1855
   pragma Import (C, XSetErrorHandler, "XSetErrorHandler");

  -- handler  
  -- WARNING, this type not in Xlib spec  
   type XIOErrorHandler is access function (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1860

  -- display  
   function XSetIOErrorHandler (arg1 : access function (arg1 : System.Address) return int) return access function (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1864
   pragma Import (C, XSetIOErrorHandler, "XSetIOErrorHandler");

  -- handler  
   function XListPixmapFormats (arg1 : System.Address; arg2 : access int) return access XPixmapFormatValues;  -- /usr/include/X11/Xlib.h:1869
   pragma Import (C, XListPixmapFormats, "XListPixmapFormats");

  -- display  
  -- count_return  
   function XListDepths
     (arg1 : System.Address;
      arg2 : int;
      arg3 : access int) return access int;  -- /usr/include/X11/Xlib.h:1873
   pragma Import (C, XListDepths, "XListDepths");

  -- display  
  -- screen_number  
  -- count_return  
  -- ICCCM routines for things that don't require special include files;  
  -- other declarations are given in Xutil.h                              
   function XReconfigureWMWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : unsigned;
      arg5 : access XWindowChanges) return int;  -- /usr/include/X11/Xlib.h:1881
   pragma Import (C, XReconfigureWMWindow, "XReconfigureWMWindow");

  -- display  
  -- w  
  -- screen_number  
  -- mask  
  -- changes  
   function XGetWMProtocols
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:1889
   pragma Import (C, XGetWMProtocols, "XGetWMProtocols");

  -- display  
  -- w  
  -- protocols_return  
  -- count_return  
   function XSetWMProtocols
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Atom;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:1895
   pragma Import (C, XSetWMProtocols, "XSetWMProtocols");

  -- display  
  -- w  
  -- protocols  
  -- count  
   function XIconifyWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:1901
   pragma Import (C, XIconifyWindow, "XIconifyWindow");

  -- display  
  -- w  
  -- screen_number  
   function XWithdrawWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:1906
   pragma Import (C, XWithdrawWindow, "XWithdrawWindow");

  -- display  
  -- w  
  -- screen_number  
   function XGetCommand
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:1911
   pragma Import (C, XGetCommand, "XGetCommand");

  -- display  
  -- w  
  -- argv_return  
  -- argc_return  
   function XGetWMColormapWindows
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:1917
   pragma Import (C, XGetWMColormapWindows, "XGetWMColormapWindows");

  -- display  
  -- w  
  -- windows_return  
  -- count_return  
   function XSetWMColormapWindows
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:1923
   pragma Import (C, XSetWMColormapWindows, "XSetWMColormapWindows");

  -- display  
  -- w  
  -- colormap_windows  
  -- count  
   procedure XFreeStringList (arg1 : System.Address);  -- /usr/include/X11/Xlib.h:1929
   pragma Import (C, XFreeStringList, "XFreeStringList");

  -- list  
   function XSetTransientForHint
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:1932
   pragma Import (C, XSetTransientForHint, "XSetTransientForHint");

  -- display  
  -- w  
  -- prop_window  
  -- The following are given in alphabetical order  
   function XActivateScreenSaver (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1940
   pragma Import (C, XActivateScreenSaver, "XActivateScreenSaver");

  -- display  
   function XAddHost (arg1 : System.Address; arg2 : access XHostAddress) return int;  -- /usr/include/X11/Xlib.h:1944
   pragma Import (C, XAddHost, "XAddHost");

  -- display  
  -- host  
   function XAddHosts
     (arg1 : System.Address;
      arg2 : access XHostAddress;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:1949
   pragma Import (C, XAddHosts, "XAddHosts");

  -- display  
  -- hosts  
  -- num_hosts  
   function XAddToExtensionList (arg1 : System.Address; arg2 : access XExtData) return int;  -- /usr/include/X11/Xlib.h:1955
   pragma Import (C, XAddToExtensionList, "XAddToExtensionList");

  -- structure  
  -- ext_data  
   function XAddToSaveSet (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:1960
   pragma Import (C, XAddToSaveSet, "XAddToSaveSet");

  -- display  
  -- w  
   function XAllocColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor) return int;  -- /usr/include/X11/Xlib.h:1965
   pragma Import (C, XAllocColor, "XAllocColor");

  -- display  
  -- colormap  
  -- screen_in_out  
   function XAllocColorCells
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : int;
      arg4 : access unsigned_long;
      arg5 : unsigned;
      arg6 : access unsigned_long;
      arg7 : unsigned) return int;  -- /usr/include/X11/Xlib.h:1971
   pragma Import (C, XAllocColorCells, "XAllocColorCells");

  -- display  
  -- colormap  
  -- contig  
  -- plane_masks_return  
  -- nplanes  
  -- pixels_return  
  -- npixels  
   function XAllocColorPlanes
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : int;
      arg4 : access unsigned_long;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : int;
      arg9 : access unsigned_long;
      arg10 : access unsigned_long;
      arg11 : access unsigned_long) return int;  -- /usr/include/X11/Xlib.h:1981
   pragma Import (C, XAllocColorPlanes, "XAllocColorPlanes");

  -- display  
  -- colormap  
  -- contig  
  -- pixels_return  
  -- ncolors  
  -- nreds  
  -- ngreens  
  -- nblues  
  -- rmask_return  
  -- gmask_return  
  -- bmask_return  
   function XAllocNamedColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access XColor;
      arg5 : access XColor) return int;  -- /usr/include/X11/Xlib.h:1995
   pragma Import (C, XAllocNamedColor, "XAllocNamedColor");

  -- display  
  -- colormap  
  -- color_name  
  -- screen_def_return  
  -- exact_def_return  
   function XAllowEvents
     (arg1 : System.Address;
      arg2 : int;
      arg3 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2003
   pragma Import (C, XAllowEvents, "XAllowEvents");

  -- display  
  -- event_mode  
  -- time  
   function XAutoRepeatOff (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2009
   pragma Import (C, XAutoRepeatOff, "XAutoRepeatOff");

  -- display  
   function XAutoRepeatOn (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2013
   pragma Import (C, XAutoRepeatOn, "XAutoRepeatOn");

  -- display  
   function XBell (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2017
   pragma Import (C, XBell, "XBell");

  -- display  
  -- percent  
   function XBitmapBitOrder (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2022
   pragma Import (C, XBitmapBitOrder, "XBitmapBitOrder");

  -- display  
   function XBitmapPad (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2026
   pragma Import (C, XBitmapPad, "XBitmapPad");

  -- display  
   function XBitmapUnit (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2030
   pragma Import (C, XBitmapUnit, "XBitmapUnit");

  -- display  
   function XCellsOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2034
   pragma Import (C, XCellsOfScreen, "XCellsOfScreen");

  -- screen  
   function XChangeActivePointerGrab
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : X11_X_h.Cursor;
      arg4 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2038
   pragma Import (C, XChangeActivePointerGrab, "XChangeActivePointerGrab");

  -- display  
  -- event_mask  
  -- cursor  
  -- time  
   function XChangeGC
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : access XGCValues) return int;  -- /usr/include/X11/Xlib.h:2045
   pragma Import (C, XChangeGC, "XChangeGC");

  -- display  
  -- gc  
  -- valuemask  
  -- values  
   function XChangeKeyboardControl
     (arg1 : System.Address;
      arg2 : unsigned_long;
      arg3 : access XKeyboardControl) return int;  -- /usr/include/X11/Xlib.h:2052
   pragma Import (C, XChangeKeyboardControl, "XChangeKeyboardControl");

  -- display  
  -- value_mask  
  -- values  
   function XChangeKeyboardMapping
     (arg1 : System.Address;
      arg2 : int;
      arg3 : int;
      arg4 : access X11_X_h.KeySym;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2058
   pragma Import (C, XChangeKeyboardMapping, "XChangeKeyboardMapping");

  -- display  
  -- first_keycode  
  -- keysyms_per_keycode  
  -- keysyms  
  -- num_codes  
   function XChangePointerControl
     (arg1 : System.Address;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2066
   pragma Import (C, XChangePointerControl, "XChangePointerControl");

  -- display  
  -- do_accel  
  -- do_threshold  
  -- accel_numerator  
  -- accel_denominator  
  -- threshold  
   function XChangeProperty
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Atom;
      arg4 : X11_X_h.Atom;
      arg5 : int;
      arg6 : int;
      arg7 : access unsigned_char;
      arg8 : int) return int;  -- /usr/include/X11/Xlib.h:2075
   pragma Import (C, XChangeProperty, "XChangeProperty");

  -- display  
  -- w  
  -- property  
  -- type  
  -- format  
  -- mode  
  -- data  
  -- nelements  
   function XChangeSaveSet
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2086
   pragma Import (C, XChangeSaveSet, "XChangeSaveSet");

  -- display  
  -- w  
  -- change_mode  
   function XChangeWindowAttributes
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned_long;
      arg4 : access XSetWindowAttributes) return int;  -- /usr/include/X11/Xlib.h:2092
   pragma Import (C, XChangeWindowAttributes, "XChangeWindowAttributes");

  -- display  
  -- w  
  -- valuemask  
  -- attributes  
   function XCheckIfEvent
     (arg1 : System.Address;
      arg2 : access XEvent;
      arg3 : access function
        (arg1 : System.Address;
         arg2 : access XEvent;
         arg3 : XPointer) return int;
      arg4 : XPointer) return int;  -- /usr/include/X11/Xlib.h:2099
   pragma Import (C, XCheckIfEvent, "XCheckIfEvent");

  -- display  
  -- event_return  
  -- display  
  -- event  
  -- arg  
  -- predicate  
  -- arg  
   function XCheckMaskEvent
     (arg1 : System.Address;
      arg2 : long;
      arg3 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2110
   pragma Import (C, XCheckMaskEvent, "XCheckMaskEvent");

  -- display  
  -- event_mask  
  -- event_return  
   function XCheckTypedEvent
     (arg1 : System.Address;
      arg2 : int;
      arg3 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2116
   pragma Import (C, XCheckTypedEvent, "XCheckTypedEvent");

  -- display  
  -- event_type  
  -- event_return  
   function XCheckTypedWindowEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2122
   pragma Import (C, XCheckTypedWindowEvent, "XCheckTypedWindowEvent");

  -- display  
  -- w  
  -- event_type  
  -- event_return  
   function XCheckWindowEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : long;
      arg4 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2129
   pragma Import (C, XCheckWindowEvent, "XCheckWindowEvent");

  -- display  
  -- w  
  -- event_mask  
  -- event_return  
   function XCirculateSubwindows
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2136
   pragma Import (C, XCirculateSubwindows, "XCirculateSubwindows");

  -- display  
  -- w  
  -- direction  
   function XCirculateSubwindowsDown (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2142
   pragma Import (C, XCirculateSubwindowsDown, "XCirculateSubwindowsDown");

  -- display  
  -- w  
   function XCirculateSubwindowsUp (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2147
   pragma Import (C, XCirculateSubwindowsUp, "XCirculateSubwindowsUp");

  -- display  
  -- w  
   function XClearArea
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2152
   pragma Import (C, XClearArea, "XClearArea");

  -- display  
  -- w  
  -- x  
  -- y  
  -- width  
  -- height  
  -- exposures  
   function XClearWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2162
   pragma Import (C, XClearWindow, "XClearWindow");

  -- display  
  -- w  
   function XCloseDisplay (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2167
   pragma Import (C, XCloseDisplay, "XCloseDisplay");

  -- display  
   function XConfigureWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned;
      arg4 : access XWindowChanges) return int;  -- /usr/include/X11/Xlib.h:2171
   pragma Import (C, XConfigureWindow, "XConfigureWindow");

  -- display  
  -- w  
  -- value_mask  
  -- values  
   function XConnectionNumber (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2178
   pragma Import (C, XConnectionNumber, "XConnectionNumber");

  -- display  
   function XConvertSelection
     (arg1 : System.Address;
      arg2 : X11_X_h.Atom;
      arg3 : X11_X_h.Atom;
      arg4 : X11_X_h.Atom;
      arg5 : X11_X_h.Window;
      arg6 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2182
   pragma Import (C, XConvertSelection, "XConvertSelection");

  -- display  
  -- selection  
  -- target  
  -- property  
  -- requestor  
  -- time  
   function XCopyArea
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : X11_X_h.Drawable;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : unsigned;
      arg8 : unsigned;
      arg9 : int;
      arg10 : int) return int;  -- /usr/include/X11/Xlib.h:2191
   pragma Import (C, XCopyArea, "XCopyArea");

  -- display  
  -- src  
  -- dest  
  -- gc  
  -- src_x  
  -- src_y  
  -- width  
  -- height  
  -- dest_x  
  -- dest_y  
   function XCopyGC
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : GC) return int;  -- /usr/include/X11/Xlib.h:2204
   pragma Import (C, XCopyGC, "XCopyGC");

  -- display  
  -- src  
  -- valuemask  
  -- dest  
   function XCopyPlane
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : X11_X_h.Drawable;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : unsigned;
      arg8 : unsigned;
      arg9 : int;
      arg10 : int;
      arg11 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:2211
   pragma Import (C, XCopyPlane, "XCopyPlane");

  -- display  
  -- src  
  -- dest  
  -- gc  
  -- src_x  
  -- src_y  
  -- width  
  -- height  
  -- dest_x  
  -- dest_y  
  -- plane  
   function XDefaultDepth (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2225
   pragma Import (C, XDefaultDepth, "XDefaultDepth");

  -- display  
  -- screen_number  
   function XDefaultDepthOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2230
   pragma Import (C, XDefaultDepthOfScreen, "XDefaultDepthOfScreen");

  -- screen  
   function XDefaultScreen (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2234
   pragma Import (C, XDefaultScreen, "XDefaultScreen");

  -- display  
   function XDefineCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Cursor) return int;  -- /usr/include/X11/Xlib.h:2238
   pragma Import (C, XDefineCursor, "XDefineCursor");

  -- display  
  -- w  
  -- cursor  
   function XDeleteProperty
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Atom) return int;  -- /usr/include/X11/Xlib.h:2244
   pragma Import (C, XDeleteProperty, "XDeleteProperty");

  -- display  
  -- w  
  -- property  
   function XDestroyWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2250
   pragma Import (C, XDestroyWindow, "XDestroyWindow");

  -- display  
  -- w  
   function XDestroySubwindows (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2255
   pragma Import (C, XDestroySubwindows, "XDestroySubwindows");

  -- display  
  -- w  
   function XDoesBackingStore (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2260
   pragma Import (C, XDoesBackingStore, "XDoesBackingStore");

  -- screen  
   function XDoesSaveUnders (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2264
   pragma Import (C, XDoesSaveUnders, "XDoesSaveUnders");

  -- screen  
   function XDisableAccessControl (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2268
   pragma Import (C, XDisableAccessControl, "XDisableAccessControl");

  -- display  
   function XDisplayCells (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2273
   pragma Import (C, XDisplayCells, "XDisplayCells");

  -- display  
  -- screen_number  
   function XDisplayHeight (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2278
   pragma Import (C, XDisplayHeight, "XDisplayHeight");

  -- display  
  -- screen_number  
   function XDisplayHeightMM (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2283
   pragma Import (C, XDisplayHeightMM, "XDisplayHeightMM");

  -- display  
  -- screen_number  
   function XDisplayKeycodes
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int) return int;  -- /usr/include/X11/Xlib.h:2288
   pragma Import (C, XDisplayKeycodes, "XDisplayKeycodes");

  -- display  
  -- min_keycodes_return  
  -- max_keycodes_return  
   function XDisplayPlanes (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2294
   pragma Import (C, XDisplayPlanes, "XDisplayPlanes");

  -- display  
  -- screen_number  
   function XDisplayWidth (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2299
   pragma Import (C, XDisplayWidth, "XDisplayWidth");

  -- display  
  -- screen_number  
   function XDisplayWidthMM (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2304
   pragma Import (C, XDisplayWidthMM, "XDisplayWidthMM");

  -- display  
  -- screen_number  
   function XDrawArc
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int) return int;  -- /usr/include/X11/Xlib.h:2309
   pragma Import (C, XDrawArc, "XDrawArc");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- width  
  -- height  
  -- angle1  
  -- angle2  
   function XDrawArcs
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XArc;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2321
   pragma Import (C, XDrawArcs, "XDrawArcs");

  -- display  
  -- d  
  -- gc  
  -- arcs  
  -- narcs  
   function XDrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2329
   pragma Import (C, XDrawImageString, "XDrawImageString");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- string  
  -- length  
   function XDrawImageString16
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access constant XChar2b;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2339
   pragma Import (C, XDrawImageString16, "XDrawImageString16");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- string  
  -- length  
   function XDrawLine
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2349
   pragma Import (C, XDrawLine, "XDrawLine");

  -- display  
  -- d  
  -- gc  
  -- x1  
  -- y1  
  -- x2  
  -- y2  
   function XDrawLines
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XPoint;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2359
   pragma Import (C, XDrawLines, "XDrawLines");

  -- display  
  -- d  
  -- gc  
  -- points  
  -- npoints  
  -- mode  
   function XDrawPoint
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2368
   pragma Import (C, XDrawPoint, "XDrawPoint");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
   function XDrawPoints
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XPoint;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2376
   pragma Import (C, XDrawPoints, "XDrawPoints");

  -- display  
  -- d  
  -- gc  
  -- points  
  -- npoints  
  -- mode  
   function XDrawRectangle
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2385
   pragma Import (C, XDrawRectangle, "XDrawRectangle");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- width  
  -- height  
   function XDrawRectangles
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XRectangle;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2395
   pragma Import (C, XDrawRectangles, "XDrawRectangles");

  -- display  
  -- d  
  -- gc  
  -- rectangles  
  -- nrectangles  
   function XDrawSegments
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XSegment;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2403
   pragma Import (C, XDrawSegments, "XDrawSegments");

  -- display  
  -- d  
  -- gc  
  -- segments  
  -- nsegments  
   function XDrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2411
   pragma Import (C, XDrawString, "XDrawString");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- string  
  -- length  
   function XDrawString16
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access constant XChar2b;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2421
   pragma Import (C, XDrawString16, "XDrawString16");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- string  
  -- length  
   function XDrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XTextItem;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2431
   pragma Import (C, XDrawText, "XDrawText");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- items  
  -- nitems  
   function XDrawText16
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XTextItem16;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2441
   pragma Import (C, XDrawText16, "XDrawText16");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- items  
  -- nitems  
   function XEnableAccessControl (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2451
   pragma Import (C, XEnableAccessControl, "XEnableAccessControl");

  -- display  
   function XEventsQueued (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2455
   pragma Import (C, XEventsQueued, "XEventsQueued");

  -- display  
  -- mode  
   function XFetchName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2460
   pragma Import (C, XFetchName, "XFetchName");

  -- display  
  -- w  
  -- window_name_return  
   function XFillArc
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int) return int;  -- /usr/include/X11/Xlib.h:2466
   pragma Import (C, XFillArc, "XFillArc");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- width  
  -- height  
  -- angle1  
  -- angle2  
   function XFillArcs
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XArc;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2478
   pragma Import (C, XFillArcs, "XFillArcs");

  -- display  
  -- d  
  -- gc  
  -- arcs  
  -- narcs  
   function XFillPolygon
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XPoint;
      arg5 : int;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2486
   pragma Import (C, XFillPolygon, "XFillPolygon");

  -- display  
  -- d  
  -- gc  
  -- points  
  -- npoints  
  -- shape  
  -- mode  
   function XFillRectangle
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2496
   pragma Import (C, XFillRectangle, "XFillRectangle");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- width  
  -- height  
   function XFillRectangles
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XRectangle;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2506
   pragma Import (C, XFillRectangles, "XFillRectangles");

  -- display  
  -- d  
  -- gc  
  -- rectangles  
  -- nrectangles  
   function XFlush (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2514
   pragma Import (C, XFlush, "XFlush");

  -- display  
   function XForceScreenSaver (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2518
   pragma Import (C, XForceScreenSaver, "XForceScreenSaver");

  -- display  
  -- mode  
   function XFree (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2523
   pragma Import (C, XFree, "XFree");

  -- data  
   function XFreeColormap (arg1 : System.Address; arg2 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:2527
   pragma Import (C, XFreeColormap, "XFreeColormap");

  -- display  
  -- colormap  
   function XFreeColors
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access unsigned_long;
      arg4 : int;
      arg5 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:2532
   pragma Import (C, XFreeColors, "XFreeColors");

  -- display  
  -- colormap  
  -- pixels  
  -- npixels  
  -- planes  
   function XFreeCursor (arg1 : System.Address; arg2 : X11_X_h.Cursor) return int;  -- /usr/include/X11/Xlib.h:2540
   pragma Import (C, XFreeCursor, "XFreeCursor");

  -- display  
  -- cursor  
   function XFreeExtensionList (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2545
   pragma Import (C, XFreeExtensionList, "XFreeExtensionList");

  -- list  
   function XFreeFont (arg1 : System.Address; arg2 : access XFontStruct) return int;  -- /usr/include/X11/Xlib.h:2549
   pragma Import (C, XFreeFont, "XFreeFont");

  -- display  
  -- font_struct  
   function XFreeFontInfo
     (arg1 : System.Address;
      arg2 : access XFontStruct;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2554
   pragma Import (C, XFreeFontInfo, "XFreeFontInfo");

  -- names  
  -- free_info  
  -- actual_count  
   function XFreeFontNames (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2560
   pragma Import (C, XFreeFontNames, "XFreeFontNames");

  -- list  
   function XFreeFontPath (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2564
   pragma Import (C, XFreeFontPath, "XFreeFontPath");

  -- list  
   function XFreeGC (arg1 : System.Address; arg2 : GC) return int;  -- /usr/include/X11/Xlib.h:2568
   pragma Import (C, XFreeGC, "XFreeGC");

  -- display  
  -- gc  
   function XFreeModifiermap (arg1 : access XModifierKeymap) return int;  -- /usr/include/X11/Xlib.h:2573
   pragma Import (C, XFreeModifiermap, "XFreeModifiermap");

  -- modmap  
   function XFreePixmap (arg1 : System.Address; arg2 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:2577
   pragma Import (C, XFreePixmap, "XFreePixmap");

  -- display  
  -- pixmap  
   function XGeometry
     (arg1 : System.Address;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int;
      arg10 : access int;
      arg11 : access int;
      arg12 : access int;
      arg13 : access int) return int;  -- /usr/include/X11/Xlib.h:2582
   pragma Import (C, XGeometry, "XGeometry");

  -- display  
  -- screen  
  -- position  
  -- default_position  
  -- bwidth  
  -- fwidth  
  -- fheight  
  -- xadder  
  -- yadder  
  -- x_return  
  -- y_return  
  -- width_return  
  -- height_return  
   function XGetErrorDatabaseText
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2598
   pragma Import (C, XGetErrorDatabaseText, "XGetErrorDatabaseText");

  -- display  
  -- name  
  -- message  
  -- default_string  
  -- buffer_return  
  -- length  
   function XGetErrorText
     (arg1 : System.Address;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:2607
   pragma Import (C, XGetErrorText, "XGetErrorText");

  -- display  
  -- code  
  -- buffer_return  
  -- length  
   function XGetFontProperty
     (arg1 : access XFontStruct;
      arg2 : X11_X_h.Atom;
      arg3 : access unsigned_long) return int;  -- /usr/include/X11/Xlib.h:2614
   pragma Import (C, XGetFontProperty, "XGetFontProperty");

  -- font_struct  
  -- atom  
  -- value_return  
   function XGetGCValues
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : access XGCValues) return int;  -- /usr/include/X11/Xlib.h:2620
   pragma Import (C, XGetGCValues, "XGetGCValues");

  -- display  
  -- gc  
  -- valuemask  
  -- values_return  
   function XGetGeometry
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : access X11_X_h.Window;
      arg4 : access int;
      arg5 : access int;
      arg6 : access unsigned;
      arg7 : access unsigned;
      arg8 : access unsigned;
      arg9 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2627
   pragma Import (C, XGetGeometry, "XGetGeometry");

  -- display  
  -- d  
  -- root_return  
  -- x_return  
  -- y_return  
  -- width_return  
  -- height_return  
  -- border_width_return  
  -- depth_return  
   function XGetIconName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2639
   pragma Import (C, XGetIconName, "XGetIconName");

  -- display  
  -- w  
  -- icon_name_return  
   function XGetInputFocus
     (arg1 : System.Address;
      arg2 : access X11_X_h.Window;
      arg3 : access int) return int;  -- /usr/include/X11/Xlib.h:2645
   pragma Import (C, XGetInputFocus, "XGetInputFocus");

  -- display  
  -- focus_return  
  -- revert_to_return  
   function XGetKeyboardControl (arg1 : System.Address; arg2 : access XKeyboardState) return int;  -- /usr/include/X11/Xlib.h:2651
   pragma Import (C, XGetKeyboardControl, "XGetKeyboardControl");

  -- display  
  -- values_return  
   function XGetPointerControl
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:2656
   pragma Import (C, XGetPointerControl, "XGetPointerControl");

  -- display  
  -- accel_numerator_return  
  -- accel_denominator_return  
  -- threshold_return  
   function XGetPointerMapping
     (arg1 : System.Address;
      arg2 : access unsigned_char;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2663
   pragma Import (C, XGetPointerMapping, "XGetPointerMapping");

  -- display  
  -- map_return  
  -- nmap  
   function XGetScreenSaver
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int;
      arg4 : access int;
      arg5 : access int) return int;  -- /usr/include/X11/Xlib.h:2669
   pragma Import (C, XGetScreenSaver, "XGetScreenSaver");

  -- display  
  -- timeout_return  
  -- interval_return  
  -- prefer_blanking_return  
  -- allow_exposures_return  
   function XGetTransientForHint
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2677
   pragma Import (C, XGetTransientForHint, "XGetTransientForHint");

  -- display  
  -- w  
  -- prop_window_return  
   function XGetWindowProperty
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Atom;
      arg4 : long;
      arg5 : long;
      arg6 : int;
      arg7 : X11_X_h.Atom;
      arg8 : access X11_X_h.Atom;
      arg9 : access int;
      arg10 : access unsigned_long;
      arg11 : access unsigned_long;
      arg12 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2683
   pragma Import (C, XGetWindowProperty, "XGetWindowProperty");

  -- display  
  -- w  
  -- property  
  -- long_offset  
  -- long_length  
  -- delete  
  -- req_type  
  -- actual_type_return  
  -- actual_format_return  
  -- nitems_return  
  -- bytes_after_return  
  -- prop_return  
   function XGetWindowAttributes
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access XWindowAttributes) return int;  -- /usr/include/X11/Xlib.h:2698
   pragma Import (C, XGetWindowAttributes, "XGetWindowAttributes");

  -- display  
  -- w  
  -- window_attributes_return  
   function XGrabButton
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : unsigned;
      arg4 : X11_X_h.Window;
      arg5 : int;
      arg6 : unsigned;
      arg7 : int;
      arg8 : int;
      arg9 : X11_X_h.Window;
      arg10 : X11_X_h.Cursor) return int;  -- /usr/include/X11/Xlib.h:2704
   pragma Import (C, XGrabButton, "XGrabButton");

  -- display  
  -- button  
  -- modifiers  
  -- grab_window  
  -- owner_events  
  -- event_mask  
  -- pointer_mode  
  -- keyboard_mode  
  -- confine_to  
  -- cursor  
   function XGrabKey
     (arg1 : System.Address;
      arg2 : int;
      arg3 : unsigned;
      arg4 : X11_X_h.Window;
      arg5 : int;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2717
   pragma Import (C, XGrabKey, "XGrabKey");

  -- display  
  -- keycode  
  -- modifiers  
  -- grab_window  
  -- owner_events  
  -- pointer_mode  
  -- keyboard_mode  
   function XGrabKeyboard
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2727
   pragma Import (C, XGrabKeyboard, "XGrabKeyboard");

  -- display  
  -- grab_window  
  -- owner_events  
  -- pointer_mode  
  -- keyboard_mode  
  -- time  
   function XGrabPointer
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : unsigned;
      arg5 : int;
      arg6 : int;
      arg7 : X11_X_h.Window;
      arg8 : X11_X_h.Cursor;
      arg9 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2736
   pragma Import (C, XGrabPointer, "XGrabPointer");

  -- display  
  -- grab_window  
  -- owner_events  
  -- event_mask  
  -- pointer_mode  
  -- keyboard_mode  
  -- confine_to  
  -- cursor  
  -- time  
   function XGrabServer (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2748
   pragma Import (C, XGrabServer, "XGrabServer");

  -- display  
   function XHeightMMOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2752
   pragma Import (C, XHeightMMOfScreen, "XHeightMMOfScreen");

  -- screen  
   function XHeightOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2756
   pragma Import (C, XHeightOfScreen, "XHeightOfScreen");

  -- screen  
   function XIfEvent
     (arg1 : System.Address;
      arg2 : access XEvent;
      arg3 : access function
        (arg1 : System.Address;
         arg2 : access XEvent;
         arg3 : XPointer) return int;
      arg4 : XPointer) return int;  -- /usr/include/X11/Xlib.h:2760
   pragma Import (C, XIfEvent, "XIfEvent");

  -- display  
  -- event_return  
  -- display  
  -- event  
  -- arg  
  -- predicate  
  -- arg  
   function XImageByteOrder (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2771
   pragma Import (C, XImageByteOrder, "XImageByteOrder");

  -- display  
   function XInstallColormap (arg1 : System.Address; arg2 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:2775
   pragma Import (C, XInstallColormap, "XInstallColormap");

  -- display  
  -- colormap  
   function XKeysymToKeycode (arg1 : System.Address; arg2 : X11_X_h.KeySym) return X11_X_h.KeyCode;  -- /usr/include/X11/Xlib.h:2780
   pragma Import (C, XKeysymToKeycode, "XKeysymToKeycode");

  -- display  
  -- keysym  
   function XKillClient (arg1 : System.Address; arg2 : X11_X_h.XID) return int;  -- /usr/include/X11/Xlib.h:2785
   pragma Import (C, XKillClient, "XKillClient");

  -- display  
  -- resource  
   function XLookupColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access XColor;
      arg5 : access XColor) return int;  -- /usr/include/X11/Xlib.h:2790
   pragma Import (C, XLookupColor, "XLookupColor");

  -- display  
  -- colormap  
  -- color_name  
  -- exact_def_return  
  -- screen_def_return  
   function XLowerWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2798
   pragma Import (C, XLowerWindow, "XLowerWindow");

  -- display  
  -- w  
   function XMapRaised (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2803
   pragma Import (C, XMapRaised, "XMapRaised");

  -- display  
  -- w  
   function XMapSubwindows (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2808
   pragma Import (C, XMapSubwindows, "XMapSubwindows");

  -- display  
  -- w  
   function XMapWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2813
   pragma Import (C, XMapWindow, "XMapWindow");

  -- display  
  -- w  
   function XMaskEvent
     (arg1 : System.Address;
      arg2 : long;
      arg3 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2818
   pragma Import (C, XMaskEvent, "XMaskEvent");

  -- display  
  -- event_mask  
  -- event_return  
   function XMaxCmapsOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2824
   pragma Import (C, XMaxCmapsOfScreen, "XMaxCmapsOfScreen");

  -- screen  
   function XMinCmapsOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2828
   pragma Import (C, XMinCmapsOfScreen, "XMinCmapsOfScreen");

  -- screen  
   function XMoveResizeWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2832
   pragma Import (C, XMoveResizeWindow, "XMoveResizeWindow");

  -- display  
  -- w  
  -- x  
  -- y  
  -- width  
  -- height  
   function XMoveWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:2841
   pragma Import (C, XMoveWindow, "XMoveWindow");

  -- display  
  -- w  
  -- x  
  -- y  
   function XNextEvent (arg1 : System.Address; arg2 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2848
   pragma Import (C, XNextEvent, "XNextEvent");

  -- display  
  -- event_return  
   function XNoOp (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2853
   pragma Import (C, XNoOp, "XNoOp");

  -- display  
   function XParseColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access XColor) return int;  -- /usr/include/X11/Xlib.h:2857
   pragma Import (C, XParseColor, "XParseColor");

  -- display  
  -- colormap  
  -- spec  
  -- exact_def_return  
   function XParseGeometry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access int;
      arg3 : access int;
      arg4 : access unsigned;
      arg5 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2864
   pragma Import (C, XParseGeometry, "XParseGeometry");

  -- parsestring  
  -- x_return  
  -- y_return  
  -- width_return  
  -- height_return  
   function XPeekEvent (arg1 : System.Address; arg2 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2872
   pragma Import (C, XPeekEvent, "XPeekEvent");

  -- display  
  -- event_return  
   function XPeekIfEvent
     (arg1 : System.Address;
      arg2 : access XEvent;
      arg3 : access function
        (arg1 : System.Address;
         arg2 : access XEvent;
         arg3 : XPointer) return int;
      arg4 : XPointer) return int;  -- /usr/include/X11/Xlib.h:2877
   pragma Import (C, XPeekIfEvent, "XPeekIfEvent");

  -- display  
  -- event_return  
  -- display  
  -- event  
  -- arg  
  -- predicate  
  -- arg  
   function XPending (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2888
   pragma Import (C, XPending, "XPending");

  -- display  
   function XPlanesOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2892
   pragma Import (C, XPlanesOfScreen, "XPlanesOfScreen");

  -- screen  
   function XProtocolRevision (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2896
   pragma Import (C, XProtocolRevision, "XProtocolRevision");

  -- display  
   function XProtocolVersion (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2900
   pragma Import (C, XProtocolVersion, "XProtocolVersion");

  -- display  
   function XPutBackEvent (arg1 : System.Address; arg2 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2905
   pragma Import (C, XPutBackEvent, "XPutBackEvent");

  -- display  
  -- event  
   function XPutImage
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XImage;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : int;
      arg9 : unsigned;
      arg10 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2910
   pragma Import (C, XPutImage, "XPutImage");

  -- display  
  -- d  
  -- gc  
  -- image  
  -- src_x  
  -- src_y  
  -- dest_x  
  -- dest_y  
  -- width  
  -- height  
   function XQLength (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2923
   pragma Import (C, XQLength, "XQLength");

  -- display  
   function XQueryBestCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : access unsigned;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2927
   pragma Import (C, XQueryBestCursor, "XQueryBestCursor");

  -- display  
  -- d  
  -- width  
  -- height  
  -- width_return  
  -- height_return  
   function XQueryBestSize
     (arg1 : System.Address;
      arg2 : int;
      arg3 : X11_X_h.Drawable;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : access unsigned;
      arg7 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2936
   pragma Import (C, XQueryBestSize, "XQueryBestSize");

  -- display  
  -- class  
  -- which_screen  
  -- width  
  -- height  
  -- width_return  
  -- height_return  
   function XQueryBestStipple
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : access unsigned;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2946
   pragma Import (C, XQueryBestStipple, "XQueryBestStipple");

  -- display  
  -- which_screen  
  -- width  
  -- height  
  -- width_return  
  -- height_return  
   function XQueryBestTile
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : access unsigned;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2955
   pragma Import (C, XQueryBestTile, "XQueryBestTile");

  -- display  
  -- which_screen  
  -- width  
  -- height  
  -- width_return  
  -- height_return  
   function XQueryColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor) return int;  -- /usr/include/X11/Xlib.h:2964
   pragma Import (C, XQueryColor, "XQueryColor");

  -- display  
  -- colormap  
  -- def_in_out  
   function XQueryColors
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:2970
   pragma Import (C, XQueryColors, "XQueryColors");

  -- display  
  -- colormap  
  -- defs_in_out  
  -- ncolors  
   function XQueryExtension
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access int;
      arg4 : access int;
      arg5 : access int) return int;  -- /usr/include/X11/Xlib.h:2977
   pragma Import (C, XQueryExtension, "XQueryExtension");

  -- display  
  -- name  
  -- major_opcode_return  
  -- first_event_return  
  -- first_error_return  
   function XQueryKeymap (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/X11/Xlib.h:2985
   pragma Import (C, XQueryKeymap, "XQueryKeymap");

  -- display  
  -- keys_return  
   function XQueryPointer
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window;
      arg4 : access X11_X_h.Window;
      arg5 : access int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access int;
      arg9 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2990
   pragma Import (C, XQueryPointer, "XQueryPointer");

  -- display  
  -- w  
  -- root_return  
  -- child_return  
  -- root_x_return  
  -- root_y_return  
  -- win_x_return  
  -- win_y_return  
  -- mask_return  
   function XQueryTextExtents
     (arg1 : System.Address;
      arg2 : X11_X_h.XID;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3002
   pragma Import (C, XQueryTextExtents, "XQueryTextExtents");

  -- display  
  -- font_ID  
  -- string  
  -- nchars  
  -- direction_return  
  -- font_ascent_return  
  -- font_descent_return  
  -- overall_return  
   function XQueryTextExtents16
     (arg1 : System.Address;
      arg2 : X11_X_h.XID;
      arg3 : access constant XChar2b;
      arg4 : int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3013
   pragma Import (C, XQueryTextExtents16, "XQueryTextExtents16");

  -- display  
  -- font_ID  
  -- string  
  -- nchars  
  -- direction_return  
  -- font_ascent_return  
  -- font_descent_return  
  -- overall_return  
   function XQueryTree
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window;
      arg4 : access X11_X_h.Window;
      arg5 : System.Address;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:3024
   pragma Import (C, XQueryTree, "XQueryTree");

  -- display  
  -- w  
  -- root_return  
  -- parent_return  
  -- children_return  
  -- nchildren_return  
   function XRaiseWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3033
   pragma Import (C, XRaiseWindow, "XRaiseWindow");

  -- display  
  -- w  
   function XReadBitmapFile
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access unsigned;
      arg5 : access unsigned;
      arg6 : access X11_X_h.Pixmap;
      arg7 : access int;
      arg8 : access int) return int;  -- /usr/include/X11/Xlib.h:3038
   pragma Import (C, XReadBitmapFile, "XReadBitmapFile");

  -- display  
  -- d  
  -- filename  
  -- width_return  
  -- height_return  
  -- bitmap_return  
  -- x_hot_return  
  -- y_hot_return  
   function XReadBitmapFileData
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access unsigned;
      arg3 : access unsigned;
      arg4 : System.Address;
      arg5 : access int;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3049
   pragma Import (C, XReadBitmapFileData, "XReadBitmapFileData");

  -- filename  
  -- width_return  
  -- height_return  
  -- data_return  
  -- x_hot_return  
  -- y_hot_return  
   function XRebindKeysym
     (arg1 : System.Address;
      arg2 : X11_X_h.KeySym;
      arg3 : access X11_X_h.KeySym;
      arg4 : int;
      arg5 : access unsigned_char;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:3058
   pragma Import (C, XRebindKeysym, "XRebindKeysym");

  -- display  
  -- keysym  
  -- list  
  -- mod_count  
  -- string  
  -- bytes_string  
   function XRecolorCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Cursor;
      arg3 : access XColor;
      arg4 : access XColor) return int;  -- /usr/include/X11/Xlib.h:3067
   pragma Import (C, XRecolorCursor, "XRecolorCursor");

  -- display  
  -- cursor  
  -- foreground_color  
  -- background_color  
   function XRefreshKeyboardMapping (arg1 : access XMappingEvent) return int;  -- /usr/include/X11/Xlib.h:3074
   pragma Import (C, XRefreshKeyboardMapping, "XRefreshKeyboardMapping");

  -- event_map  
   function XRemoveFromSaveSet (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3078
   pragma Import (C, XRemoveFromSaveSet, "XRemoveFromSaveSet");

  -- display  
  -- w  
   function XRemoveHost (arg1 : System.Address; arg2 : access XHostAddress) return int;  -- /usr/include/X11/Xlib.h:3083
   pragma Import (C, XRemoveHost, "XRemoveHost");

  -- display  
  -- host  
   function XRemoveHosts
     (arg1 : System.Address;
      arg2 : access XHostAddress;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3088
   pragma Import (C, XRemoveHosts, "XRemoveHosts");

  -- display  
  -- hosts  
  -- num_hosts  
   function XReparentWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3094
   pragma Import (C, XReparentWindow, "XReparentWindow");

  -- display  
  -- w  
  -- parent  
  -- x  
  -- y  
   function XResetScreenSaver (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3102
   pragma Import (C, XResetScreenSaver, "XResetScreenSaver");

  -- display  
   function XResizeWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned;
      arg4 : unsigned) return int;  -- /usr/include/X11/Xlib.h:3106
   pragma Import (C, XResizeWindow, "XResizeWindow");

  -- display  
  -- w  
  -- width  
  -- height  
   function XRestackWindows
     (arg1 : System.Address;
      arg2 : access X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3113
   pragma Import (C, XRestackWindows, "XRestackWindows");

  -- display  
  -- windows  
  -- nwindows  
   function XRotateBuffers (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3119
   pragma Import (C, XRotateBuffers, "XRotateBuffers");

  -- display  
  -- rotate  
   function XRotateWindowProperties
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Atom;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3124
   pragma Import (C, XRotateWindowProperties, "XRotateWindowProperties");

  -- display  
  -- w  
  -- properties  
  -- num_prop  
  -- npositions  
   function XScreenCount (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3132
   pragma Import (C, XScreenCount, "XScreenCount");

  -- display  
   function XSelectInput
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : long) return int;  -- /usr/include/X11/Xlib.h:3136
   pragma Import (C, XSelectInput, "XSelectInput");

  -- display  
  -- w  
  -- event_mask  
   function XSendEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : long;
      arg5 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:3142
   pragma Import (C, XSendEvent, "XSendEvent");

  -- display  
  -- w  
  -- propagate  
  -- event_mask  
  -- event_send  
   function XSetAccessControl (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3150
   pragma Import (C, XSetAccessControl, "XSetAccessControl");

  -- display  
  -- mode  
   function XSetArcMode
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3155
   pragma Import (C, XSetArcMode, "XSetArcMode");

  -- display  
  -- gc  
  -- arc_mode  
   function XSetBackground
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3161
   pragma Import (C, XSetBackground, "XSetBackground");

  -- display  
  -- gc  
  -- background  
   function XSetClipMask
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3167
   pragma Import (C, XSetClipMask, "XSetClipMask");

  -- display  
  -- gc  
  -- pixmap  
   function XSetClipOrigin
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3173
   pragma Import (C, XSetClipOrigin, "XSetClipOrigin");

  -- display  
  -- gc  
  -- clip_x_origin  
  -- clip_y_origin  
   function XSetClipRectangles
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : int;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:3180
   pragma Import (C, XSetClipRectangles, "XSetClipRectangles");

  -- display  
  -- gc  
  -- clip_x_origin  
  -- clip_y_origin  
  -- rectangles  
  -- n  
  -- ordering  
   function XSetCloseDownMode (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3190
   pragma Import (C, XSetCloseDownMode, "XSetCloseDownMode");

  -- display  
  -- close_mode  
   function XSetCommand
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3195
   pragma Import (C, XSetCommand, "XSetCommand");

  -- display  
  -- w  
  -- argv  
  -- argc  
   function XSetDashes
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3202
   pragma Import (C, XSetDashes, "XSetDashes");

  -- display  
  -- gc  
  -- dash_offset  
  -- dash_list  
  -- n  
   function XSetFillRule
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3210
   pragma Import (C, XSetFillRule, "XSetFillRule");

  -- display  
  -- gc  
  -- fill_rule  
   function XSetFillStyle
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3216
   pragma Import (C, XSetFillStyle, "XSetFillStyle");

  -- display  
  -- gc  
  -- fill_style  
   function XSetFont
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Font) return int;  -- /usr/include/X11/Xlib.h:3222
   pragma Import (C, XSetFont, "XSetFont");

  -- display  
  -- gc  
  -- font  
   function XSetFontPath
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3228
   pragma Import (C, XSetFontPath, "XSetFontPath");

  -- display  
  -- directories  
  -- ndirs  
   function XSetForeground
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3234
   pragma Import (C, XSetForeground, "XSetForeground");

  -- display  
  -- gc  
  -- foreground  
   function XSetFunction
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3240
   pragma Import (C, XSetFunction, "XSetFunction");

  -- display  
  -- gc  
  -- function  
   function XSetGraphicsExposures
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3246
   pragma Import (C, XSetGraphicsExposures, "XSetGraphicsExposures");

  -- display  
  -- gc  
  -- graphics_exposures  
   function XSetIconName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/X11/Xlib.h:3252
   pragma Import (C, XSetIconName, "XSetIconName");

  -- display  
  -- w  
  -- icon_name  
   function XSetInputFocus
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3258
   pragma Import (C, XSetInputFocus, "XSetInputFocus");

  -- display  
  -- focus  
  -- revert_to  
  -- time  
   function XSetLineAttributes
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned;
      arg4 : int;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:3265
   pragma Import (C, XSetLineAttributes, "XSetLineAttributes");

  -- display  
  -- gc  
  -- line_width  
  -- line_style  
  -- cap_style  
  -- join_style  
   function XSetModifierMapping (arg1 : System.Address; arg2 : access XModifierKeymap) return int;  -- /usr/include/X11/Xlib.h:3274
   pragma Import (C, XSetModifierMapping, "XSetModifierMapping");

  -- display  
  -- modmap  
   function XSetPlaneMask
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3279
   pragma Import (C, XSetPlaneMask, "XSetPlaneMask");

  -- display  
  -- gc  
  -- plane_mask  
   function XSetPointerMapping
     (arg1 : System.Address;
      arg2 : access unsigned_char;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3285
   pragma Import (C, XSetPointerMapping, "XSetPointerMapping");

  -- display  
  -- map  
  -- nmap  
   function XSetScreenSaver
     (arg1 : System.Address;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3291
   pragma Import (C, XSetScreenSaver, "XSetScreenSaver");

  -- display  
  -- timeout  
  -- interval  
  -- prefer_blanking  
  -- allow_exposures  
   function XSetSelectionOwner
     (arg1 : System.Address;
      arg2 : X11_X_h.Atom;
      arg3 : X11_X_h.Window;
      arg4 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3299
   pragma Import (C, XSetSelectionOwner, "XSetSelectionOwner");

  -- display  
  -- selection  
  -- owner  
  -- time  
   function XSetState
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : unsigned_long;
      arg5 : int;
      arg6 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3306
   pragma Import (C, XSetState, "XSetState");

  -- display  
  -- gc  
  -- foreground  
  -- background  
  -- function  
  -- plane_mask  
   function XSetStipple
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3315
   pragma Import (C, XSetStipple, "XSetStipple");

  -- display  
  -- gc  
  -- stipple  
   function XSetSubwindowMode
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3321
   pragma Import (C, XSetSubwindowMode, "XSetSubwindowMode");

  -- display  
  -- gc  
  -- subwindow_mode  
   function XSetTSOrigin
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3327
   pragma Import (C, XSetTSOrigin, "XSetTSOrigin");

  -- display  
  -- gc  
  -- ts_x_origin  
  -- ts_y_origin  
   function XSetTile
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3334
   pragma Import (C, XSetTile, "XSetTile");

  -- display  
  -- gc  
  -- tile  
   function XSetWindowBackground
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3340
   pragma Import (C, XSetWindowBackground, "XSetWindowBackground");

  -- display  
  -- w  
  -- background_pixel  
   function XSetWindowBackgroundPixmap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3346
   pragma Import (C, XSetWindowBackgroundPixmap, "XSetWindowBackgroundPixmap");

  -- display  
  -- w  
  -- background_pixmap  
   function XSetWindowBorder
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3352
   pragma Import (C, XSetWindowBorder, "XSetWindowBorder");

  -- display  
  -- w  
  -- border_pixel  
   function XSetWindowBorderPixmap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3358
   pragma Import (C, XSetWindowBorderPixmap, "XSetWindowBorderPixmap");

  -- display  
  -- w  
  -- border_pixmap  
   function XSetWindowBorderWidth
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned) return int;  -- /usr/include/X11/Xlib.h:3364
   pragma Import (C, XSetWindowBorderWidth, "XSetWindowBorderWidth");

  -- display  
  -- w  
  -- width  
   function XSetWindowColormap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:3370
   pragma Import (C, XSetWindowColormap, "XSetWindowColormap");

  -- display  
  -- w  
  -- colormap  
   function XStoreBuffer
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3376
   pragma Import (C, XStoreBuffer, "XStoreBuffer");

  -- display  
  -- bytes  
  -- nbytes  
  -- buffer  
   function XStoreBytes
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3383
   pragma Import (C, XStoreBytes, "XStoreBytes");

  -- display  
  -- bytes  
  -- nbytes  
   function XStoreColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor) return int;  -- /usr/include/X11/Xlib.h:3389
   pragma Import (C, XStoreColor, "XStoreColor");

  -- display  
  -- colormap  
  -- color  
   function XStoreColors
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3395
   pragma Import (C, XStoreColors, "XStoreColors");

  -- display  
  -- colormap  
  -- color  
  -- ncolors  
   function XStoreName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/X11/Xlib.h:3402
   pragma Import (C, XStoreName, "XStoreName");

  -- display  
  -- w  
  -- window_name  
   function XStoreNamedColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : unsigned_long;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3408
   pragma Import (C, XStoreNamedColor, "XStoreNamedColor");

  -- display  
  -- colormap  
  -- color  
  -- pixel  
  -- flags  
   function XSync (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3416
   pragma Import (C, XSync, "XSync");

  -- display  
  -- discard  
   function XTextExtents
     (arg1 : access XFontStruct;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3421
   pragma Import (C, XTextExtents, "XTextExtents");

  -- font_struct  
  -- string  
  -- nchars  
  -- direction_return  
  -- font_ascent_return  
  -- font_descent_return  
  -- overall_return  
   function XTextExtents16
     (arg1 : access XFontStruct;
      arg2 : access constant XChar2b;
      arg3 : int;
      arg4 : access int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3431
   pragma Import (C, XTextExtents16, "XTextExtents16");

  -- font_struct  
  -- string  
  -- nchars  
  -- direction_return  
  -- font_ascent_return  
  -- font_descent_return  
  -- overall_return  
   function XTextWidth
     (arg1 : access XFontStruct;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3441
   pragma Import (C, XTextWidth, "XTextWidth");

  -- font_struct  
  -- string  
  -- count  
   function XTextWidth16
     (arg1 : access XFontStruct;
      arg2 : access constant XChar2b;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3447
   pragma Import (C, XTextWidth16, "XTextWidth16");

  -- font_struct  
  -- string  
  -- count  
   function XTranslateCoordinates
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window;
      arg4 : int;
      arg5 : int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3453
   pragma Import (C, XTranslateCoordinates, "XTranslateCoordinates");

  -- display  
  -- src_w  
  -- dest_w  
  -- src_x  
  -- src_y  
  -- dest_x_return  
  -- dest_y_return  
  -- child_return  
   function XUndefineCursor (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3464
   pragma Import (C, XUndefineCursor, "XUndefineCursor");

  -- display  
  -- w  
   function XUngrabButton
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : unsigned;
      arg4 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3469
   pragma Import (C, XUngrabButton, "XUngrabButton");

  -- display  
  -- button  
  -- modifiers  
  -- grab_window  
   function XUngrabKey
     (arg1 : System.Address;
      arg2 : int;
      arg3 : unsigned;
      arg4 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3476
   pragma Import (C, XUngrabKey, "XUngrabKey");

  -- display  
  -- keycode  
  -- modifiers  
  -- grab_window  
   function XUngrabKeyboard (arg1 : System.Address; arg2 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3483
   pragma Import (C, XUngrabKeyboard, "XUngrabKeyboard");

  -- display  
  -- time  
   function XUngrabPointer (arg1 : System.Address; arg2 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3488
   pragma Import (C, XUngrabPointer, "XUngrabPointer");

  -- display  
  -- time  
   function XUngrabServer (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3493
   pragma Import (C, XUngrabServer, "XUngrabServer");

  -- display  
   function XUninstallColormap (arg1 : System.Address; arg2 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:3497
   pragma Import (C, XUninstallColormap, "XUninstallColormap");

  -- display  
  -- colormap  
   function XUnloadFont (arg1 : System.Address; arg2 : X11_X_h.Font) return int;  -- /usr/include/X11/Xlib.h:3502
   pragma Import (C, XUnloadFont, "XUnloadFont");

  -- display  
  -- font  
   function XUnmapSubwindows (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3507
   pragma Import (C, XUnmapSubwindows, "XUnmapSubwindows");

  -- display  
  -- w  
   function XUnmapWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3512
   pragma Import (C, XUnmapWindow, "XUnmapWindow");

  -- display  
  -- w  
   function XVendorRelease (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3517
   pragma Import (C, XVendorRelease, "XVendorRelease");

  -- display  
   function XWarpPointer
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int) return int;  -- /usr/include/X11/Xlib.h:3521
   pragma Import (C, XWarpPointer, "XWarpPointer");

  -- display  
  -- src_w  
  -- dest_w  
  -- src_x  
  -- src_y  
  -- src_width  
  -- src_height  
  -- dest_x  
  -- dest_y  
   function XWidthMMOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:3533
   pragma Import (C, XWidthMMOfScreen, "XWidthMMOfScreen");

  -- screen  
   function XWidthOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:3537
   pragma Import (C, XWidthOfScreen, "XWidthOfScreen");

  -- screen  
   function XWindowEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : long;
      arg4 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:3541
   pragma Import (C, XWindowEvent, "XWindowEvent");

  -- display  
  -- w  
  -- event_mask  
  -- event_return  
   function XWriteBitmapFile
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : X11_X_h.Pixmap;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:3548
   pragma Import (C, XWriteBitmapFile, "XWriteBitmapFile");

  -- display  
  -- filename  
  -- bitmap  
  -- width  
  -- height  
  -- x_hot  
  -- y_hot  
   function XSupportsLocale return int;  -- /usr/include/X11/Xlib.h:3558
   pragma Import (C, XSupportsLocale, "XSupportsLocale");

   function XSetLocaleModifiers (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3560
   pragma Import (C, XSetLocaleModifiers, "XSetLocaleModifiers");

  -- modifier_list  
   function XOpenOM
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return XOM;  -- /usr/include/X11/Xlib.h:3564
   pragma Import (C, XOpenOM, "XOpenOM");

  -- display  
  -- rdb  
  -- res_name  
  -- res_class  
   function XCloseOM (arg1 : XOM) return int;  -- /usr/include/X11/Xlib.h:3571
   pragma Import (C, XCloseOM, "XCloseOM");

  -- om  
   function XSetOMValues (arg1 : XOM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3575
   pragma Import (C, XSetOMValues, "XSetOMValues");

  -- om  
   function XGetOMValues (arg1 : XOM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3580
   pragma Import (C, XGetOMValues, "XGetOMValues");

  -- om  
   function XDisplayOfOM (arg1 : XOM) return System.Address;  -- /usr/include/X11/Xlib.h:3585
   pragma Import (C, XDisplayOfOM, "XDisplayOfOM");

  -- om  
   function XLocaleOfOM (arg1 : XOM) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3589
   pragma Import (C, XLocaleOfOM, "XLocaleOfOM");

  -- om  
   function XCreateOC (arg1 : XOM  -- , ...
      ) return XOC;  -- /usr/include/X11/Xlib.h:3593
   pragma Import (C, XCreateOC, "XCreateOC");

  -- om  
   procedure XDestroyOC (arg1 : XOC);  -- /usr/include/X11/Xlib.h:3598
   pragma Import (C, XDestroyOC, "XDestroyOC");

  -- oc  
   function XOMOfOC (arg1 : XOC) return XOM;  -- /usr/include/X11/Xlib.h:3602
   pragma Import (C, XOMOfOC, "XOMOfOC");

  -- oc  
   function XSetOCValues (arg1 : XOC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3606
   pragma Import (C, XSetOCValues, "XSetOCValues");

  -- oc  
   function XGetOCValues (arg1 : XOC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3611
   pragma Import (C, XGetOCValues, "XGetOCValues");

  -- oc  
   function XCreateFontSet
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address;
      arg4 : access int;
      arg5 : System.Address) return XFontSet;  -- /usr/include/X11/Xlib.h:3616
   pragma Import (C, XCreateFontSet, "XCreateFontSet");

  -- display  
  -- base_font_name_list  
  -- missing_charset_list  
  -- missing_charset_count  
  -- def_string  
   procedure XFreeFontSet (arg1 : System.Address; arg2 : XFontSet);  -- /usr/include/X11/Xlib.h:3624
   pragma Import (C, XFreeFontSet, "XFreeFontSet");

  -- display  
  -- font_set  
   function XFontsOfFontSet
     (arg1 : XFontSet;
      arg2 : System.Address;
      arg3 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3629
   pragma Import (C, XFontsOfFontSet, "XFontsOfFontSet");

  -- font_set  
  -- font_struct_list  
  -- font_name_list  
   function XBaseFontNameListOfFontSet (arg1 : XFontSet) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3635
   pragma Import (C, XBaseFontNameListOfFontSet, "XBaseFontNameListOfFontSet");

  -- font_set  
   function XLocaleOfFontSet (arg1 : XFontSet) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3639
   pragma Import (C, XLocaleOfFontSet, "XLocaleOfFontSet");

  -- font_set  
   function XContextDependentDrawing (arg1 : XFontSet) return int;  -- /usr/include/X11/Xlib.h:3643
   pragma Import (C, XContextDependentDrawing, "XContextDependentDrawing");

  -- font_set  
   function XDirectionalDependentDrawing (arg1 : XFontSet) return int;  -- /usr/include/X11/Xlib.h:3647
   pragma Import (C, XDirectionalDependentDrawing, "XDirectionalDependentDrawing");

  -- font_set  
   function XContextualDrawing (arg1 : XFontSet) return int;  -- /usr/include/X11/Xlib.h:3651
   pragma Import (C, XContextualDrawing, "XContextualDrawing");

  -- font_set  
   function XExtentsOfFontSet (arg1 : XFontSet) return access XFontSetExtents;  -- /usr/include/X11/Xlib.h:3655
   pragma Import (C, XExtentsOfFontSet, "XExtentsOfFontSet");

  -- font_set  
   function XmbTextEscapement
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3659
   pragma Import (C, XmbTextEscapement, "XmbTextEscapement");

  -- font_set  
  -- text  
  -- bytes_text  
   function XwcTextEscapement
     (arg1 : XFontSet;
      arg2 : access stddef_h.wchar_t;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3665
   pragma Import (C, XwcTextEscapement, "XwcTextEscapement");

  -- font_set  
  -- text  
  -- num_wchars  
   function Xutf8TextEscapement
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3671
   pragma Import (C, Xutf8TextEscapement, "Xutf8TextEscapement");

  -- font_set  
  -- text  
  -- bytes_text  
   function XmbTextExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3677
   pragma Import (C, XmbTextExtents, "XmbTextExtents");

  -- font_set  
  -- text  
  -- bytes_text  
  -- overall_ink_return  
  -- overall_logical_return  
   function XwcTextExtents
     (arg1 : XFontSet;
      arg2 : access stddef_h.wchar_t;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3685
   pragma Import (C, XwcTextExtents, "XwcTextExtents");

  -- font_set  
  -- text  
  -- num_wchars  
  -- overall_ink_return  
  -- overall_logical_return  
   function Xutf8TextExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3693
   pragma Import (C, Xutf8TextExtents, "Xutf8TextExtents");

  -- font_set  
  -- text  
  -- bytes_text  
  -- overall_ink_return  
  -- overall_logical_return  
   function XmbTextPerCharExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : access int;
      arg8 : access XRectangle;
      arg9 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3701
   pragma Import (C, XmbTextPerCharExtents, "XmbTextPerCharExtents");

  -- font_set  
  -- text  
  -- bytes_text  
  -- ink_extents_buffer  
  -- logical_extents_buffer  
  -- buffer_size  
  -- num_chars  
  -- overall_ink_return  
  -- overall_logical_return  
   function XwcTextPerCharExtents
     (arg1 : XFontSet;
      arg2 : access stddef_h.wchar_t;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : access int;
      arg8 : access XRectangle;
      arg9 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3713
   pragma Import (C, XwcTextPerCharExtents, "XwcTextPerCharExtents");

  -- font_set  
  -- text  
  -- num_wchars  
  -- ink_extents_buffer  
  -- logical_extents_buffer  
  -- buffer_size  
  -- num_chars  
  -- overall_ink_return  
  -- overall_logical_return  
   function Xutf8TextPerCharExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : access int;
      arg8 : access XRectangle;
      arg9 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3725
   pragma Import (C, Xutf8TextPerCharExtents, "Xutf8TextPerCharExtents");

  -- font_set  
  -- text  
  -- bytes_text  
  -- ink_extents_buffer  
  -- logical_extents_buffer  
  -- buffer_size  
  -- num_chars  
  -- overall_ink_return  
  -- overall_logical_return  
   procedure XmbDrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XmbTextItem;
      arg7 : int);  -- /usr/include/X11/Xlib.h:3737
   pragma Import (C, XmbDrawText, "XmbDrawText");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- text_items  
  -- nitems  
   procedure XwcDrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XwcTextItem;
      arg7 : int);  -- /usr/include/X11/Xlib.h:3747
   pragma Import (C, XwcDrawText, "XwcDrawText");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- text_items  
  -- nitems  
   procedure Xutf8DrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XmbTextItem;
      arg7 : int);  -- /usr/include/X11/Xlib.h:3757
   pragma Import (C, Xutf8DrawText, "Xutf8DrawText");

  -- display  
  -- d  
  -- gc  
  -- x  
  -- y  
  -- text_items  
  -- nitems  
   procedure XmbDrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3767
   pragma Import (C, XmbDrawString, "XmbDrawString");

  -- display  
  -- d  
  -- font_set  
  -- gc  
  -- x  
  -- y  
  -- text  
  -- bytes_text  
   procedure XwcDrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : access stddef_h.wchar_t;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3778
   pragma Import (C, XwcDrawString, "XwcDrawString");

  -- display  
  -- d  
  -- font_set  
  -- gc  
  -- x  
  -- y  
  -- text  
  -- num_wchars  
   procedure Xutf8DrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3789
   pragma Import (C, Xutf8DrawString, "Xutf8DrawString");

  -- display  
  -- d  
  -- font_set  
  -- gc  
  -- x  
  -- y  
  -- text  
  -- bytes_text  
   procedure XmbDrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3800
   pragma Import (C, XmbDrawImageString, "XmbDrawImageString");

  -- display  
  -- d  
  -- font_set  
  -- gc  
  -- x  
  -- y  
  -- text  
  -- bytes_text  
   procedure XwcDrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : access stddef_h.wchar_t;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3811
   pragma Import (C, XwcDrawImageString, "XwcDrawImageString");

  -- display  
  -- d  
  -- font_set  
  -- gc  
  -- x  
  -- y  
  -- text  
  -- num_wchars  
   procedure Xutf8DrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3822
   pragma Import (C, Xutf8DrawImageString, "Xutf8DrawImageString");

  -- display  
  -- d  
  -- font_set  
  -- gc  
  -- x  
  -- y  
  -- text  
  -- bytes_text  
   function XOpenIM
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return XIM;  -- /usr/include/X11/Xlib.h:3833
   pragma Import (C, XOpenIM, "XOpenIM");

  -- dpy  
  -- rdb  
  -- res_name  
  -- res_class  
   function XCloseIM (arg1 : XIM) return int;  -- /usr/include/X11/Xlib.h:3840
   pragma Import (C, XCloseIM, "XCloseIM");

  -- im  
   function XGetIMValues (arg1 : XIM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3844
   pragma Import (C, XGetIMValues, "XGetIMValues");

  -- im  
   function XSetIMValues (arg1 : XIM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3848
   pragma Import (C, XSetIMValues, "XSetIMValues");

  -- im  
   function XDisplayOfIM (arg1 : XIM) return System.Address;  -- /usr/include/X11/Xlib.h:3852
   pragma Import (C, XDisplayOfIM, "XDisplayOfIM");

  -- im  
   function XLocaleOfIM (arg1 : XIM) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3856
   pragma Import (C, XLocaleOfIM, "XLocaleOfIM");

  -- im 
   function XCreateIC (arg1 : XIM  -- , ...
      ) return XIC;  -- /usr/include/X11/Xlib.h:3860
   pragma Import (C, XCreateIC, "XCreateIC");

  -- im  
   procedure XDestroyIC (arg1 : XIC);  -- /usr/include/X11/Xlib.h:3864
   pragma Import (C, XDestroyIC, "XDestroyIC");

  -- ic  
   procedure XSetICFocus (arg1 : XIC);  -- /usr/include/X11/Xlib.h:3868
   pragma Import (C, XSetICFocus, "XSetICFocus");

  -- ic  
   procedure XUnsetICFocus (arg1 : XIC);  -- /usr/include/X11/Xlib.h:3872
   pragma Import (C, XUnsetICFocus, "XUnsetICFocus");

  -- ic  
   function XwcResetIC (arg1 : XIC) return access stddef_h.wchar_t;  -- /usr/include/X11/Xlib.h:3876
   pragma Import (C, XwcResetIC, "XwcResetIC");

  -- ic  
   function XmbResetIC (arg1 : XIC) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3880
   pragma Import (C, XmbResetIC, "XmbResetIC");

  -- ic  
   function Xutf8ResetIC (arg1 : XIC) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3884
   pragma Import (C, Xutf8ResetIC, "Xutf8ResetIC");

  -- ic  
   function XSetICValues (arg1 : XIC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3888
   pragma Import (C, XSetICValues, "XSetICValues");

  -- ic  
   function XGetICValues (arg1 : XIC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3892
   pragma Import (C, XGetICValues, "XGetICValues");

  -- ic  
   function XIMOfIC (arg1 : XIC) return XIM;  -- /usr/include/X11/Xlib.h:3896
   pragma Import (C, XIMOfIC, "XIMOfIC");

  -- ic  
   function XFilterEvent (arg1 : access XEvent; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3900
   pragma Import (C, XFilterEvent, "XFilterEvent");

  -- event  
  -- window  
   function XmbLookupString
     (arg1 : XIC;
      arg2 : access XKeyPressedEvent;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : access X11_X_h.KeySym;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3905
   pragma Import (C, XmbLookupString, "XmbLookupString");

  -- ic  
  -- event  
  -- buffer_return  
  -- bytes_buffer  
  -- keysym_return  
  -- status_return  
   function XwcLookupString
     (arg1 : XIC;
      arg2 : access XKeyPressedEvent;
      arg3 : access stddef_h.wchar_t;
      arg4 : int;
      arg5 : access X11_X_h.KeySym;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3914
   pragma Import (C, XwcLookupString, "XwcLookupString");

  -- ic  
  -- event  
  -- buffer_return  
  -- wchars_buffer  
  -- keysym_return  
  -- status_return  
   function Xutf8LookupString
     (arg1 : XIC;
      arg2 : access XKeyPressedEvent;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : access X11_X_h.KeySym;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3923
   pragma Import (C, Xutf8LookupString, "Xutf8LookupString");

  -- ic  
  -- event  
  -- buffer_return  
  -- bytes_buffer  
  -- keysym_return  
  -- status_return  
   function XVaCreateNestedList (arg1 : int  -- , ...
      ) return XVaNestedList;  -- /usr/include/X11/Xlib.h:3932
   pragma Import (C, XVaCreateNestedList, "XVaCreateNestedList");

  --unused 
  -- internal connections for IMs  
   function XRegisterIMInstantiateCallback
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : XPointer);
      arg6 : XPointer) return int;  -- /usr/include/X11/Xlib.h:3938
   pragma Import (C, XRegisterIMInstantiateCallback, "XRegisterIMInstantiateCallback");

  -- dpy  
  -- rdb  
  -- res_name  
  -- res_class  
  -- callback  
  -- client_data  
   function XUnregisterIMInstantiateCallback
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : XPointer);
      arg6 : XPointer) return int;  -- /usr/include/X11/Xlib.h:3947
   pragma Import (C, XUnregisterIMInstantiateCallback, "XUnregisterIMInstantiateCallback");

  -- dpy  
  -- rdb  
  -- res_name  
  -- res_class  
  -- callback  
  -- client_data  
   type XConnectionWatchProc is access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : int;
         arg4 : int;
         arg5 : System.Address);  -- /usr/include/X11/Xlib.h:3956

  -- dpy  
  -- client_data  
  -- fd  
  -- opening  
  -- open or close flag  
  -- watch_data  
  -- open sets, close uses  
   function XInternalConnectionNumbers
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access int) return int;  -- /usr/include/X11/Xlib.h:3965
   pragma Import (C, XInternalConnectionNumbers, "XInternalConnectionNumbers");

  -- dpy  
  -- fd_return  
  -- count_return  
   procedure XProcessInternalConnection (arg1 : System.Address; arg2 : int);  -- /usr/include/X11/Xlib.h:3971
   pragma Import (C, XProcessInternalConnection, "XProcessInternalConnection");

  -- dpy  
  -- fd  
   function XAddConnectionWatch
     (arg1 : System.Address;
      arg2 : access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : int;
         arg4 : int;
         arg5 : System.Address);
      arg3 : XPointer) return int;  -- /usr/include/X11/Xlib.h:3976
   pragma Import (C, XAddConnectionWatch, "XAddConnectionWatch");

  -- dpy  
  -- callback  
  -- client_data  
   procedure XRemoveConnectionWatch
     (arg1 : System.Address;
      arg2 : access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : int;
         arg4 : int;
         arg5 : System.Address);
      arg3 : XPointer);  -- /usr/include/X11/Xlib.h:3982
   pragma Import (C, XRemoveConnectionWatch, "XRemoveConnectionWatch");

  -- dpy  
  -- callback  
  -- client_data  
   procedure XSetAuthorization
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int);  -- /usr/include/X11/Xlib.h:3988
   pragma Import (C, XSetAuthorization, "XSetAuthorization");

  -- name  
  -- namelen  
  -- data  
  -- datalen  
   --  skipped func _Xmbtowc

  -- wstr  
  -- str  
  -- len  
  -- str  
  -- len  
   --  skipped func _Xwctomb

  -- str  
  -- wc  
   function XGetEventData (arg1 : System.Address; arg2 : access XGenericEventCookie) return int;  -- /usr/include/X11/Xlib.h:4011
   pragma Import (C, XGetEventData, "XGetEventData");

  -- dpy  
  -- cookie 
   procedure XFreeEventData (arg1 : System.Address; arg2 : access XGenericEventCookie);  -- /usr/include/X11/Xlib.h:4016
   pragma Import (C, XFreeEventData, "XFreeEventData");

  -- dpy  
  -- cookie 
end X11_Xlib_h;
