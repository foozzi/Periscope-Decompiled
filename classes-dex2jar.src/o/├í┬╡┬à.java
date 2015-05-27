package o;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class ᵅ
  implements AdapterView.OnItemClickListener, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, PopupWindow.OnDismissListener, ᵉ
{
  static final int ᔂ = ڊ.ᐝ.abc_popup_menu_item_layout;
  private final Context mContext;
  boolean о;
  private final ᵅ.if ᔃ;
  private final boolean ᔦ;
  private final int ᔩ;
  private final int ᔪ;
  private final int ᔮ;
  private View ᘤ;
  private ῑ ᚐ;
  private ViewTreeObserver ᴈ;
  private ᵉ.if ᴏ;
  private ViewGroup ᴢ;
  private boolean ᴣ;
  private int ᵂ;
  private int Ḭ = 0;
  private final LayoutInflater 亅;
  private final ᵁ ｼ;
  
  public ᵅ(Context paramContext, ᵁ paramᵁ, View paramView)
  {
    this(paramContext, paramᵁ, paramView, false, ڊ.if.popupMenuStyle);
  }
  
  public ᵅ(Context paramContext, ᵁ paramᵁ, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, paramᵁ, paramView, paramBoolean, paramInt, 0);
  }
  
  public ᵅ(Context paramContext, ᵁ paramᵁ, View paramView, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.mContext = paramContext;
    this.亅 = LayoutInflater.from(paramContext);
    this.ｼ = paramᵁ;
    this.ᔃ = new ᵅ.if(this, this.ｼ);
    this.ᔦ = paramBoolean;
    this.ᔪ = paramInt1;
    this.ᔮ = paramInt2;
    Resources localResources = paramContext.getResources();
    this.ᔩ = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(ڊ.ˋ.abc_config_prefDialogWidth));
    this.ᘤ = paramView;
    paramᵁ.ˊ(this, paramContext);
  }
  
  private int ן()
  {
    int j = 0;
    View localView = null;
    int m = 0;
    ᵅ.if localif = this.ᔃ;
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i3 = localif.getCount();
    int i = 0;
    while (i < i3)
    {
      int n = localif.getItemViewType(i);
      int k = m;
      if (n != m)
      {
        k = n;
        localView = null;
      }
      if (this.ᴢ == null) {
        this.ᴢ = new FrameLayout(this.mContext);
      }
      localView = localif.getView(i, localView, this.ᴢ);
      localView.measure(i1, i2);
      n = localView.getMeasuredWidth();
      if (n >= this.ᔩ) {
        return this.ᔩ;
      }
      m = j;
      if (n > j) {
        m = n;
      }
      i += 1;
      j = m;
      m = k;
    }
    return j;
  }
  
  public void dismiss()
  {
    if (isShowing()) {
      this.ᚐ.dismiss();
    }
  }
  
  public boolean isShowing()
  {
    return (this.ᚐ != null) && (this.ᚐ.isShowing());
  }
  
  public void onDismiss()
  {
    this.ᚐ = null;
    this.ｼ.close();
    if (this.ᴈ != null)
    {
      if (!this.ᴈ.isAlive()) {
        this.ᴈ = this.ᘤ.getViewTreeObserver();
      }
      this.ᴈ.removeGlobalOnLayoutListener(this);
      this.ᴈ = null;
    }
  }
  
  public void onGlobalLayout()
  {
    if (isShowing())
    {
      View localView = this.ᘤ;
      if ((localView == null) || (!localView.isShown()))
      {
        dismiss();
        return;
      }
      if (isShowing()) {
        this.ᚐ.show();
      }
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = this.ᔃ;
    ᵅ.if.ˊ(paramAdapterView).ˊ(paramAdapterView.ᒽ(paramInt), 0);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      dismiss();
      return true;
    }
    return false;
  }
  
  public void setAnchorView(View paramView)
  {
    this.ᘤ = paramView;
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    this.о = paramBoolean;
  }
  
  public void setGravity(int paramInt)
  {
    this.Ḭ = paramInt;
  }
  
  public void show()
  {
    if (!ז()) {
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }
  }
  
  public void ˈ(boolean paramBoolean)
  {
    this.ᴣ = false;
    if (this.ᔃ != null) {
      this.ᔃ.notifyDataSetChanged();
    }
  }
  
  public void ˊ(Context paramContext, ᵁ paramᵁ) {}
  
  public void ˊ(ᵁ paramᵁ, boolean paramBoolean)
  {
    if (paramᵁ != this.ｼ) {
      return;
    }
    dismiss();
    if (this.ᴏ != null) {
      this.ᴏ.ˊ(paramᵁ, paramBoolean);
    }
  }
  
  public void ˊ(ᵉ.if paramif)
  {
    this.ᴏ = paramif;
  }
  
  public boolean ˊ(ᵁ paramᵁ, ᵃ paramᵃ)
  {
    return false;
  }
  
  public boolean ˊ(ᵡ paramᵡ)
  {
    if (paramᵡ.hasVisibleItems())
    {
      ᵅ localᵅ = new ᵅ(this.mContext, paramᵡ, this.ᘤ);
      localᵅ.ˊ(this.ᴏ);
      boolean bool2 = false;
      int j = paramᵡ.size();
      int i = 0;
      boolean bool1;
      for (;;)
      {
        bool1 = bool2;
        if (i >= j) {
          break;
        }
        MenuItem localMenuItem = paramᵡ.getItem(i);
        if ((localMenuItem.isVisible()) && (localMenuItem.getIcon() != null))
        {
          bool1 = true;
          break;
        }
        i += 1;
      }
      localᵅ.setForceShowIcon(bool1);
      if (localᵅ.ז())
      {
        if (this.ᴏ != null) {
          this.ᴏ.ˎ(paramᵡ);
        }
        return true;
      }
    }
    return false;
  }
  
  public boolean ˋ(ᵁ paramᵁ, ᵃ paramᵃ)
  {
    return false;
  }
  
  public ῑ Ӏ()
  {
    return this.ᚐ;
  }
  
  public boolean ז()
  {
    this.ᚐ = new ῑ(this.mContext, null, this.ᔪ, this.ᔮ);
    this.ᚐ.setOnDismissListener(this);
    this.ᚐ.setOnItemClickListener(this);
    this.ᚐ.setAdapter(this.ᔃ);
    this.ᚐ.setModal(true);
    View localView = this.ᘤ;
    if (localView != null)
    {
      int i;
      if (this.ᴈ == null) {
        i = 1;
      } else {
        i = 0;
      }
      this.ᴈ = localView.getViewTreeObserver();
      if (i != 0) {
        this.ᴈ.addOnGlobalLayoutListener(this);
      }
      this.ᚐ.setAnchorView(localView);
      this.ᚐ.setDropDownGravity(this.Ḭ);
    }
    else
    {
      return false;
    }
    if (!this.ᴣ)
    {
      this.ᵂ = ן();
      this.ᴣ = true;
    }
    this.ᚐ.setContentWidth(this.ᵂ);
    this.ᚐ.setInputMethodMode(2);
    this.ᚐ.show();
    this.ᚐ.getListView().setOnKeyListener(this);
    return true;
  }
  
  public boolean ᑦ()
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */