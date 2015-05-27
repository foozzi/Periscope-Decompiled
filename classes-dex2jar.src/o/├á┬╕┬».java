package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class ฯ
{
  private static final PorterDuff.Mode ʰ = PorterDuff.Mode.SRC_IN;
  public static final boolean ᴉ;
  private static final WeakHashMap<Context, ฯ> ᴘ = new WeakHashMap();
  private static final ฯ.if ᴝ = new ฯ.if(6);
  private static final int[] ᴦ = { ڊ.ˎ.abc_textfield_search_default_mtrl_alpha, ڊ.ˎ.abc_textfield_default_mtrl_alpha, ڊ.ˎ.abc_ab_share_pack_mtrl_alpha };
  private static final int[] ᴩ = { ڊ.ˎ.abc_ic_ab_back_mtrl_am_alpha, ڊ.ˎ.abc_ic_go_search_api_mtrl_alpha, ڊ.ˎ.abc_ic_search_api_mtrl_alpha, ڊ.ˎ.abc_ic_commit_search_api_mtrl_alpha, ڊ.ˎ.abc_ic_clear_mtrl_alpha, ڊ.ˎ.abc_ic_menu_share_mtrl_alpha, ڊ.ˎ.abc_ic_menu_copy_mtrl_am_alpha, ڊ.ˎ.abc_ic_menu_cut_mtrl_alpha, ڊ.ˎ.abc_ic_menu_selectall_mtrl_alpha, ڊ.ˎ.abc_ic_menu_paste_mtrl_am_alpha, ڊ.ˎ.abc_ic_menu_moreoverflow_mtrl_alpha, ڊ.ˎ.abc_ic_voice_search_api_mtrl_alpha };
  private static final int[] ᴭ = { ڊ.ˎ.abc_textfield_activated_mtrl_alpha, ڊ.ˎ.abc_textfield_search_activated_mtrl_alpha, ڊ.ˎ.abc_cab_background_top_mtrl_alpha, ڊ.ˎ.abc_text_cursor_mtrl_alpha };
  private static final int[] Ṭ = { ڊ.ˎ.abc_popup_background_mtrl_mult, ڊ.ˎ.abc_cab_background_internal_bg, ڊ.ˎ.abc_menu_hardkey_panel_mtrl_mult };
  private static final int[] ṯ = { ڊ.ˎ.abc_edit_text_material, ڊ.ˎ.abc_tab_indicator_material, ڊ.ˎ.abc_textfield_search_material, ڊ.ˎ.abc_spinner_mtrl_am_alpha, ڊ.ˎ.abc_btn_check_material, ڊ.ˎ.abc_btn_radio_material, ڊ.ˎ.abc_spinner_textfield_background_material, ڊ.ˎ.abc_ratingbar_full_material, ڊ.ˎ.abc_switch_track_mtrl_alpha, ڊ.ˎ.abc_switch_thumb_material, ڊ.ˎ.abc_btn_default_mtrl_shape, ڊ.ˎ.abc_btn_borderless_material };
  private final WeakReference<Context> ẏ;
  private SparseArray<ColorStateList> ẓ;
  private ColorStateList ọ;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT < 21) {
      bool = true;
    } else {
      bool = false;
    }
    ᴉ = bool;
  }
  
  private ฯ(Context paramContext)
  {
    this.ẏ = new WeakReference(paramContext);
  }
  
  private static boolean ʲ(int paramInt)
  {
    return (ˊ(ᴩ, paramInt)) || (ˊ(ᴦ, paramInt)) || (ˊ(ᴭ, paramInt)) || (ˊ(ṯ, paramInt)) || (ˊ(Ṭ, paramInt)) || (paramInt == ڊ.ˎ.abc_cab_background_top_material);
  }
  
  public static ฯ ʻ(Context paramContext)
  {
    ฯ localฯ2 = (ฯ)ᴘ.get(paramContext);
    ฯ localฯ1 = localฯ2;
    if (localฯ2 == null)
    {
      localฯ1 = new ฯ(paramContext);
      ᴘ.put(paramContext, localฯ1);
    }
    return localฯ1;
  }
  
  private ColorStateList ʼ(Context paramContext)
  {
    if (this.ọ == null)
    {
      int i = ڌ.ˋ(paramContext, ڊ.if.colorControlNormal);
      int j = ڌ.ˋ(paramContext, ڊ.if.colorControlActivated);
      int[][] arrayOfInt = new int[7][];
      int[] arrayOfInt1 = new int[7];
      arrayOfInt[0] = ڌ.ᖾ;
      arrayOfInt1[0] = ڌ.ˏ(paramContext, ڊ.if.colorControlNormal);
      int k = 0 + 1;
      arrayOfInt[k] = ڌ.FOCUSED_STATE_SET;
      arrayOfInt1[k] = j;
      k += 1;
      arrayOfInt[k] = ڌ.ᖿ;
      arrayOfInt1[k] = j;
      k += 1;
      arrayOfInt[k] = ڌ.PRESSED_STATE_SET;
      arrayOfInt1[k] = j;
      k += 1;
      arrayOfInt[k] = ڌ.ᗁ;
      arrayOfInt1[k] = j;
      k += 1;
      arrayOfInt[k] = ڌ.SELECTED_STATE_SET;
      arrayOfInt1[k] = j;
      j = k + 1;
      arrayOfInt[j] = ڌ.EMPTY_STATE_SET;
      arrayOfInt1[j] = i;
      this.ọ = new ColorStateList(arrayOfInt, arrayOfInt1);
    }
    return this.ọ;
  }
  
  private ColorStateList ʽ(Context paramContext)
  {
    int[][] arrayOfInt = new int[3][];
    int[] arrayOfInt1 = new int[3];
    arrayOfInt[0] = ڌ.ᖾ;
    arrayOfInt1[0] = ڌ.ˊ(paramContext, 16842800, 0.1F);
    int i = 0 + 1;
    arrayOfInt[i] = ڌ.ᗁ;
    arrayOfInt1[i] = ڌ.ˊ(paramContext, ڊ.if.colorControlActivated, 0.3F);
    i += 1;
    arrayOfInt[i] = ڌ.EMPTY_STATE_SET;
    arrayOfInt1[i] = ڌ.ˊ(paramContext, 16842800, 0.3F);
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }
  
  private ColorStateList ʾ(Context paramContext)
  {
    int[][] arrayOfInt = new int[4][];
    int[] arrayOfInt1 = new int[4];
    int i = ڌ.ˋ(paramContext, ڊ.if.colorButtonNormal);
    int j = ڌ.ˋ(paramContext, ڊ.if.colorControlHighlight);
    arrayOfInt[0] = ڌ.ᖾ;
    arrayOfInt1[0] = ڌ.ˏ(paramContext, ڊ.if.colorButtonNormal);
    int k = 0 + 1;
    arrayOfInt[k] = ڌ.PRESSED_STATE_SET;
    arrayOfInt1[k] = ᐡ.ˊ(j, i);
    k += 1;
    arrayOfInt[k] = ڌ.FOCUSED_STATE_SET;
    arrayOfInt1[k] = ᐡ.ˊ(j, i);
    j = k + 1;
    arrayOfInt[j] = ڌ.EMPTY_STATE_SET;
    arrayOfInt1[j] = i;
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }
  
  private ColorStateList ʿ(Context paramContext)
  {
    int[][] arrayOfInt = new int[3][];
    int[] arrayOfInt1 = new int[3];
    arrayOfInt[0] = ڌ.ᖾ;
    arrayOfInt1[0] = ڌ.ˏ(paramContext, ڊ.if.colorControlNormal);
    int i = 0 + 1;
    arrayOfInt[i] = ڌ.ᘅ;
    arrayOfInt1[i] = ڌ.ˋ(paramContext, ڊ.if.colorControlNormal);
    i += 1;
    arrayOfInt[i] = ڌ.EMPTY_STATE_SET;
    arrayOfInt1[i] = ڌ.ˋ(paramContext, ڊ.if.colorControlActivated);
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }
  
  public static Drawable ˊ(Context paramContext, int paramInt)
  {
    if (ʲ(paramInt)) {
      return ʻ(paramContext).getDrawable(paramInt);
    }
    return ᵣ.ˊ(paramContext, paramInt);
  }
  
  private static void ˊ(Drawable paramDrawable, int paramInt, PorterDuff.Mode paramMode)
  {
    PorterDuff.Mode localMode = paramMode;
    if (paramMode == null) {
      localMode = ʰ;
    }
    PorterDuffColorFilter localPorterDuffColorFilter = ᴝ.ˊ(paramInt, localMode);
    paramMode = localPorterDuffColorFilter;
    if (localPorterDuffColorFilter == null)
    {
      paramMode = new PorterDuffColorFilter(paramInt, localMode);
      ᴝ.ˊ(paramInt, localMode, paramMode);
    }
    paramDrawable.setColorFilter(paramMode);
  }
  
  public static void ˊ(View paramView, ৳ param৳)
  {
    Drawable localDrawable = paramView.getBackground();
    if (param৳.ᘧ)
    {
      int i = param৳.Ϊ.getColorForState(paramView.getDrawableState(), param৳.Ϊ.getDefaultColor());
      if (param৳.ᘦ) {
        param৳ = param৳.Ї;
      } else {
        param৳ = null;
      }
      ˊ(localDrawable, i, param৳);
    }
    else
    {
      localDrawable.clearColorFilter();
    }
    if (Build.VERSION.SDK_INT <= 10) {
      paramView.invalidate();
    }
  }
  
  private static boolean ˊ(int[] paramArrayOfInt, int paramInt)
  {
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      if (paramArrayOfInt[i] == paramInt) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private ColorStateList ͺ(Context paramContext)
  {
    int[][] arrayOfInt = new int[3][];
    int[] arrayOfInt1 = new int[3];
    ColorStateList localColorStateList = ڌ.ˎ(paramContext, ڊ.if.colorSwitchThumbNormal);
    int i;
    if ((localColorStateList != null) && (localColorStateList.isStateful()))
    {
      arrayOfInt[0] = ڌ.ᖾ;
      arrayOfInt1[0] = localColorStateList.getColorForState(arrayOfInt[0], 0);
      i = 0 + 1;
      arrayOfInt[i] = ڌ.ᗁ;
      arrayOfInt1[i] = ڌ.ˋ(paramContext, ڊ.if.colorControlActivated);
      i += 1;
      arrayOfInt[i] = ڌ.EMPTY_STATE_SET;
      arrayOfInt1[i] = localColorStateList.getDefaultColor();
    }
    else
    {
      arrayOfInt[0] = ڌ.ᖾ;
      arrayOfInt1[0] = ڌ.ˏ(paramContext, ڊ.if.colorSwitchThumbNormal);
      i = 0 + 1;
      arrayOfInt[i] = ڌ.ᗁ;
      arrayOfInt1[i] = ڌ.ˋ(paramContext, ڊ.if.colorControlActivated);
      i += 1;
      arrayOfInt[i] = ڌ.EMPTY_STATE_SET;
      arrayOfInt1[i] = ڌ.ˋ(paramContext, ڊ.if.colorSwitchThumbNormal);
    }
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }
  
  private ColorStateList ι(Context paramContext)
  {
    int[][] arrayOfInt = new int[3][];
    int[] arrayOfInt1 = new int[3];
    arrayOfInt[0] = ڌ.ᖾ;
    arrayOfInt1[0] = ڌ.ˏ(paramContext, ڊ.if.colorControlNormal);
    int i = 0 + 1;
    arrayOfInt[i] = ڌ.ᘅ;
    arrayOfInt1[i] = ڌ.ˋ(paramContext, ڊ.if.colorControlNormal);
    i += 1;
    arrayOfInt[i] = ڌ.EMPTY_STATE_SET;
    arrayOfInt1[i] = ڌ.ˋ(paramContext, ڊ.if.colorControlActivated);
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }
  
  public Drawable getDrawable(int paramInt)
  {
    return ι(paramInt, false);
  }
  
  public final boolean ˊ(int paramInt, Drawable paramDrawable)
  {
    Context localContext = (Context)this.ẏ.get();
    if (localContext == null) {
      return false;
    }
    Object localObject2 = null;
    int i = 0;
    int j = 0;
    int k = -1;
    Object localObject1;
    if (ˊ(ᴦ, paramInt))
    {
      j = ڊ.if.colorControlNormal;
      i = 1;
      localObject1 = localObject2;
    }
    else if (ˊ(ᴭ, paramInt))
    {
      j = ڊ.if.colorControlActivated;
      i = 1;
      localObject1 = localObject2;
    }
    else if (ˊ(Ṭ, paramInt))
    {
      j = 16842801;
      i = 1;
      localObject1 = PorterDuff.Mode.MULTIPLY;
    }
    else
    {
      localObject1 = localObject2;
      if (paramInt == ڊ.ˎ.abc_list_divider_mtrl_alpha)
      {
        j = 16842800;
        i = 1;
        k = Math.round(40.799999F);
        localObject1 = localObject2;
      }
    }
    if (i != 0)
    {
      ˊ(paramDrawable, ڌ.ˋ(localContext, j), (PorterDuff.Mode)localObject1);
      if (k != -1) {
        paramDrawable.setAlpha(k);
      }
      return true;
    }
    return false;
  }
  
  final PorterDuff.Mode ː(int paramInt)
  {
    PorterDuff.Mode localMode = null;
    if (paramInt == ڊ.ˎ.abc_switch_thumb_material) {
      localMode = PorterDuff.Mode.MULTIPLY;
    }
    return localMode;
  }
  
  public final ColorStateList ˣ(int paramInt)
  {
    Context localContext = (Context)this.ẏ.get();
    if (localContext == null) {
      return null;
    }
    ColorStateList localColorStateList1;
    if (this.ẓ != null) {
      localColorStateList1 = (ColorStateList)this.ẓ.get(paramInt);
    } else {
      localColorStateList1 = null;
    }
    ColorStateList localColorStateList2 = localColorStateList1;
    if (localColorStateList1 == null)
    {
      if (paramInt == ڊ.ˎ.abc_edit_text_material) {
        localColorStateList1 = ι(localContext);
      } else if (paramInt == ڊ.ˎ.abc_switch_track_mtrl_alpha) {
        localColorStateList1 = ʽ(localContext);
      } else if (paramInt == ڊ.ˎ.abc_switch_thumb_material) {
        localColorStateList1 = ͺ(localContext);
      } else if ((paramInt == ڊ.ˎ.abc_btn_default_mtrl_shape) || (paramInt == ڊ.ˎ.abc_btn_borderless_material)) {
        localColorStateList1 = ʾ(localContext);
      } else if ((paramInt == ڊ.ˎ.abc_spinner_mtrl_am_alpha) || (paramInt == ڊ.ˎ.abc_spinner_textfield_background_material)) {
        localColorStateList1 = ʿ(localContext);
      } else if (ˊ(ᴩ, paramInt)) {
        localColorStateList1 = ڌ.ˎ(localContext, ڊ.if.colorControlNormal);
      } else if (ˊ(ṯ, paramInt)) {
        localColorStateList1 = ʼ(localContext);
      }
      localColorStateList2 = localColorStateList1;
      if (localColorStateList1 != null)
      {
        if (this.ẓ == null) {
          this.ẓ = new SparseArray();
        }
        this.ẓ.append(paramInt, localColorStateList1);
        localColorStateList2 = localColorStateList1;
      }
    }
    return localColorStateList2;
  }
  
  public Drawable ι(int paramInt, boolean paramBoolean)
  {
    Object localObject1 = (Context)this.ẏ.get();
    if (localObject1 == null) {
      return null;
    }
    Drawable localDrawable = ᵣ.ˊ((Context)localObject1, paramInt);
    Object localObject2 = localDrawable;
    if (localDrawable != null)
    {
      localObject1 = localDrawable;
      if (Build.VERSION.SDK_INT >= 8) {
        localObject1 = localDrawable.mutate();
      }
      localObject2 = ˣ(paramInt);
      if (localObject2 != null)
      {
        localObject1 = ᐪ.ˏ((Drawable)localObject1);
        ᐪ.ˊ((Drawable)localObject1, (ColorStateList)localObject2);
        localObject2 = ː(paramInt);
        if (localObject2 != null) {
          ᐪ.ˊ((Drawable)localObject1, (PorterDuff.Mode)localObject2);
        }
        return localObject1;
      }
      if (paramInt == ڊ.ˎ.abc_cab_background_top_material) {
        return new LayerDrawable(new Drawable[] { getDrawable(ڊ.ˎ.abc_cab_background_internal_bg), getDrawable(ڊ.ˎ.abc_cab_background_top_mtrl_alpha) });
      }
      localObject2 = localObject1;
      if (!ˊ(paramInt, (Drawable)localObject1))
      {
        localObject2 = localObject1;
        if (paramBoolean) {
          localObject2 = null;
        }
      }
    }
    return localObject2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸¯
 * JD-Core Version:    0.7.0.1
 */