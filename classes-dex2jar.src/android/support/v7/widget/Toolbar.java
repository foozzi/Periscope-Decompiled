package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import o.ſ;
import o.כ;
import o.ء;
import o.ذ.if;
import o.ر;
import o.ڊ.if;
import o.ڊ.ʽ;
import o.ڎ;
import o.৲;
import o.ฯ;
import o.ๅ;
import o.ᐞ;
import o.ᓯ;
import o.ᓱ;
import o.ᓴ;
import o.ᕽ;
import o.ᖦ;
import o.ᖦ.ˋ;
import o.ᵁ;
import o.ᵁ.if;
import o.ᵃ;
import o.ᵄ;
import o.ᵉ;
import o.ᵉ.if;
import o.ᵡ;
import o.ᵧ;
import o.ﺑ;
import o.ﻴ;

public class Toolbar
  extends ViewGroup
{
  private boolean dA;
  private boolean dB;
  private final ArrayList<View> dC = new ArrayList();
  private final int[] dD = new int[2];
  private Toolbar.ˋ dE;
  private final ᖦ.ˋ dF = new כ(this);
  private ᐞ dG;
  private ᓴ dH;
  private if dI;
  private boolean dJ;
  private int dK;
  private final Runnable dL = new ء(this);
  private TextView de;
  private TextView df;
  private ImageButton dg;
  private ImageView dh;
  private Drawable di;
  private CharSequence dj;
  private ImageButton dk;
  View dl;
  private int dm;
  private int jdField_do;
  private int dp;
  private int dq;
  private int dr;
  private int ds;
  private int dt;
  private int du;
  private final ſ dv = new ſ();
  private CharSequence dw;
  private CharSequence dx;
  private int dy;
  private int dz;
  private int Ť;
  private ᵉ.if ƈ;
  private ᵁ.if ȝ;
  private int ᒰ = 8388627;
  private final ฯ ᒴ;
  private Context Ἴ;
  private ᖦ Ἵ;
  
  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, ڊ.if.toolbarStyle);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(ᓯ.ˊ(paramContext, paramAttributeSet, false, true), paramAttributeSet, paramInt);
    paramContext = ๅ.ˊ(getContext(), paramAttributeSet, ڊ.ʽ.Toolbar, paramInt, 0);
    this.dm = paramContext.getResourceId(ڊ.ʽ.Toolbar_titleTextAppearance, 0);
    this.jdField_do = paramContext.getResourceId(ڊ.ʽ.Toolbar_subtitleTextAppearance, 0);
    this.ᒰ = paramContext.getInteger(ڊ.ʽ.Toolbar_android_gravity, this.ᒰ);
    this.dp = 48;
    paramInt = paramContext.getDimensionPixelOffset(ڊ.ʽ.Toolbar_titleMargins, 0);
    this.du = paramInt;
    this.dt = paramInt;
    this.ds = paramInt;
    this.dr = paramInt;
    paramInt = paramContext.getDimensionPixelOffset(ڊ.ʽ.Toolbar_titleMarginStart, -1);
    if (paramInt >= 0) {
      this.dr = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(ڊ.ʽ.Toolbar_titleMarginEnd, -1);
    if (paramInt >= 0) {
      this.ds = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(ڊ.ʽ.Toolbar_titleMarginTop, -1);
    if (paramInt >= 0) {
      this.dt = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(ڊ.ʽ.Toolbar_titleMarginBottom, -1);
    if (paramInt >= 0) {
      this.du = paramInt;
    }
    this.dq = paramContext.getDimensionPixelSize(ڊ.ʽ.Toolbar_maxButtonHeight, -1);
    paramInt = paramContext.getDimensionPixelOffset(ڊ.ʽ.Toolbar_contentInsetStart, -2147483648);
    int i = paramContext.getDimensionPixelOffset(ڊ.ʽ.Toolbar_contentInsetEnd, -2147483648);
    int j = paramContext.getDimensionPixelSize(ڊ.ʽ.Toolbar_contentInsetLeft, 0);
    int k = paramContext.getDimensionPixelSize(ڊ.ʽ.Toolbar_contentInsetRight, 0);
    this.dv.ᐧ(j, k);
    if ((paramInt != -2147483648) || (i != -2147483648)) {
      this.dv.ـ(paramInt, i);
    }
    this.di = paramContext.getDrawable(ڊ.ʽ.Toolbar_collapseIcon);
    this.dj = paramContext.getText(ڊ.ʽ.Toolbar_collapseContentDescription);
    paramAttributeSet = paramContext.getText(ڊ.ʽ.Toolbar_title);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setTitle(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(ڊ.ʽ.Toolbar_subtitle);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setSubtitle(paramAttributeSet);
    }
    this.Ἴ = getContext();
    setPopupTheme(paramContext.getResourceId(ڊ.ʽ.Toolbar_popupTheme, 0));
    paramAttributeSet = paramContext.getDrawable(ڊ.ʽ.Toolbar_navigationIcon);
    if (paramAttributeSet != null) {
      setNavigationIcon(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(ڊ.ʽ.Toolbar_navigationContentDescription);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setNavigationContentDescription(paramAttributeSet);
    }
    this.dK = paramContext.getDimensionPixelSize(ڊ.ʽ.Toolbar_android_minHeight, 0);
    paramContext.recycle();
    this.ᒴ = paramContext.ゝ();
  }
  
  private int ɩ(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return ᕽ.ˊ(paramView) + ᕽ.ˋ(paramView);
  }
  
  private void ɻ()
  {
    if (this.dh == null) {
      this.dh = new ImageView(getContext());
    }
  }
  
  private void ʏ()
  {
    if (this.Ἵ == null)
    {
      this.Ἵ = new ᖦ(getContext());
      this.Ἵ.setPopupTheme(this.Ť);
      this.Ἵ.setOnMenuItemClickListener(this.dF);
      this.Ἵ.setMenuCallbacks(this.ƈ, this.ȝ);
      Toolbar.ˊ localˊ = ΐ();
      localˊ.gravity = (this.dp & 0x70 | 0x800005);
      this.Ἵ.setLayoutParams(localˊ);
      ﹸ(this.Ἵ);
    }
  }
  
  private void ʔ()
  {
    if (this.dg == null)
    {
      this.dg = new ImageButton(getContext(), null, ڊ.if.toolbarNavigationButtonStyle);
      Toolbar.ˊ localˊ = ΐ();
      localˊ.gravity = (this.dp & 0x70 | 0x800003);
      this.dg.setLayoutParams(localˊ);
    }
  }
  
  private void ʕ()
  {
    if (this.dk == null)
    {
      this.dk = new ImageButton(getContext(), null, ڊ.if.toolbarNavigationButtonStyle);
      this.dk.setImageDrawable(this.di);
      this.dk.setContentDescription(this.dj);
      Toolbar.ˊ localˊ = ΐ();
      localˊ.gravity = (this.dp & 0x70 | 0x800003);
      localˊ.dO = 2;
      this.dk.setLayoutParams(localˊ);
      this.dk.setOnClickListener(new ر(this));
    }
  }
  
  private void ʖ()
  {
    removeCallbacks(this.dL);
    post(this.dL);
  }
  
  private int ʵ(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return paramView.topMargin + paramView.bottomMargin;
  }
  
  private boolean ʷ()
  {
    if (!this.dJ) {
      return false;
    }
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if ((ﹾ(localView)) && (localView.getMeasuredWidth() > 0) && (localView.getMeasuredHeight() > 0)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private void ʸ(View paramView)
  {
    if ((((Toolbar.ˊ)paramView.getLayoutParams()).dO != 2) && (paramView != this.Ἵ))
    {
      int i;
      if (this.dl != null) {
        i = 8;
      } else {
        i = 0;
      }
      paramView.setVisibility(i);
    }
  }
  
  private void ˆ(boolean paramBoolean)
  {
    int k = getChildCount();
    int i = 0;
    while (i < k)
    {
      View localView = getChildAt(i);
      if ((((Toolbar.ˊ)localView.getLayoutParams()).dO != 2) && (localView != this.Ἵ))
      {
        int j;
        if (paramBoolean) {
          j = 8;
        } else {
          j = 0;
        }
        localView.setVisibility(j);
      }
      i += 1;
    }
  }
  
  private int ˊ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = localMarginLayoutParams.leftMargin - paramArrayOfInt[0];
    int j = localMarginLayoutParams.rightMargin - paramArrayOfInt[1];
    int k = Math.max(0, i) + Math.max(0, j);
    paramArrayOfInt[0] = Math.max(0, -i);
    paramArrayOfInt[1] = Math.max(0, -j);
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + k + paramInt2, localMarginLayoutParams.width), getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + paramInt4, localMarginLayoutParams.height));
    return paramView.getMeasuredWidth() + k;
  }
  
  private int ˊ(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    Toolbar.ˊ localˊ = (Toolbar.ˊ)paramView.getLayoutParams();
    int i = localˊ.leftMargin - paramArrayOfInt[0];
    paramInt1 += Math.max(0, i);
    paramArrayOfInt[0] = Math.max(0, -i);
    paramInt2 = ˌ(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 + (localˊ.rightMargin + i);
  }
  
  private int ˊ(List<View> paramList, int[] paramArrayOfInt)
  {
    int m = paramArrayOfInt[0];
    int k = paramArrayOfInt[1];
    int j = 0;
    int n = paramList.size();
    int i = 0;
    while (i < n)
    {
      paramArrayOfInt = (View)paramList.get(i);
      Toolbar.ˊ localˊ = (Toolbar.ˊ)paramArrayOfInt.getLayoutParams();
      m = localˊ.leftMargin - m;
      k = localˊ.rightMargin - k;
      int i1 = Math.max(0, m);
      int i2 = Math.max(0, k);
      m = Math.max(0, -m);
      k = Math.max(0, -k);
      j += paramArrayOfInt.getMeasuredWidth() + i1 + i2;
      i += 1;
    }
    return j;
  }
  
  private void ˊ(List<View> paramList, int paramInt)
  {
    int i;
    if (ﺑ.ˌ(this) == 1) {
      i = 1;
    } else {
      i = 0;
    }
    int k = getChildCount();
    int j = ৲.getAbsoluteGravity(paramInt, ﺑ.ˌ(this));
    paramList.clear();
    View localView;
    Toolbar.ˊ localˊ;
    if (i != 0)
    {
      paramInt = k - 1;
      while (paramInt >= 0)
      {
        localView = getChildAt(paramInt);
        localˊ = (Toolbar.ˊ)localView.getLayoutParams();
        if ((localˊ.dO == 0) && (ﹾ(localView)) && (וֹ(localˊ.gravity) == j)) {
          paramList.add(localView);
        }
        paramInt -= 1;
      }
      return;
    }
    paramInt = 0;
    while (paramInt < k)
    {
      localView = getChildAt(paramInt);
      localˊ = (Toolbar.ˊ)localView.getLayoutParams();
      if ((localˊ.dO == 0) && (ﹾ(localView)) && (וֹ(localˊ.gravity) == j)) {
        paramList.add(localView);
      }
      paramInt += 1;
    }
  }
  
  private int ˋ(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    Toolbar.ˊ localˊ = (Toolbar.ˊ)paramView.getLayoutParams();
    int i = localˊ.rightMargin - paramArrayOfInt[1];
    paramInt1 -= Math.max(0, i);
    paramArrayOfInt[1] = Math.max(0, -i);
    paramInt2 = ˌ(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - (localˊ.leftMargin + i);
  }
  
  private void ˋ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin + paramInt2, localMarginLayoutParams.width);
    paramInt2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + paramInt4, localMarginLayoutParams.height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824)
    {
      paramInt1 = paramInt2;
      if (paramInt5 >= 0)
      {
        if (paramInt3 != 0) {
          paramInt5 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt5);
        }
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt5, 1073741824);
      }
    }
    paramView.measure(i, paramInt1);
  }
  
  private int ˌ(View paramView, int paramInt)
  {
    Toolbar.ˊ localˊ = (Toolbar.ˊ)paramView.getLayoutParams();
    int j = paramView.getMeasuredHeight();
    if (paramInt > 0) {
      paramInt = (j - paramInt) / 2;
    } else {
      paramInt = 0;
    }
    switch (וּ(localˊ.gravity))
    {
    default: 
      break;
    case 48: 
      return getPaddingTop() - paramInt;
    case 80: 
      return getHeight() - getPaddingBottom() - j - localˊ.bottomMargin - paramInt;
    }
    int k = getPaddingTop();
    paramInt = getPaddingBottom();
    int m = getHeight();
    int i = (m - k - paramInt - j) / 2;
    if (i < localˊ.topMargin)
    {
      paramInt = localˊ.topMargin;
    }
    else
    {
      j = m - paramInt - j - i - k;
      paramInt = i;
      if (j < localˊ.bottomMargin) {
        paramInt = Math.max(0, i - (localˊ.bottomMargin - j));
      }
    }
    return k + paramInt;
  }
  
  private int τ()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return ﺑ.ᐨ(this);
    }
    return this.dK;
  }
  
  private int וּ(int paramInt)
  {
    paramInt &= 0x70;
    switch (paramInt)
    {
    default: 
      break;
    case 16: 
    case 48: 
    case 80: 
      return paramInt;
    }
    return this.ᒰ & 0x70;
  }
  
  private int וֹ(int paramInt)
  {
    int i = ﺑ.ˌ(this);
    paramInt = ৲.getAbsoluteGravity(paramInt, i) & 0x7;
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
    case 3: 
    case 5: 
      return paramInt;
    }
    if (i == 1) {
      return 5;
    }
    return 3;
  }
  
  private void ﹸ(View paramView)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null) {
      localObject = ΐ();
    } else if (!checkLayoutParams((ViewGroup.LayoutParams)localObject)) {
      localObject = ˏ((ViewGroup.LayoutParams)localObject);
    } else {
      localObject = (Toolbar.ˊ)localObject;
    }
    ((Toolbar.ˊ)localObject).dO = 1;
    addView(paramView, (ViewGroup.LayoutParams)localObject);
  }
  
  private boolean ﹾ(View paramView)
  {
    return (paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof Toolbar.ˊ));
  }
  
  public void collapseActionView()
  {
    ᵃ localᵃ;
    if (this.dI == null) {
      localᵃ = null;
    } else {
      localᵃ = this.dI.dN;
    }
    if (localᵃ != null) {
      localᵃ.collapseActionView();
    }
  }
  
  public int getContentInsetEnd()
  {
    return this.dv.getEnd();
  }
  
  public int getContentInsetLeft()
  {
    return this.dv.getLeft();
  }
  
  public int getContentInsetRight()
  {
    return this.dv.getRight();
  }
  
  public int getContentInsetStart()
  {
    return this.dv.getStart();
  }
  
  public CharSequence getNavigationContentDescription()
  {
    if (this.dg != null) {
      return this.dg.getContentDescription();
    }
    return null;
  }
  
  public Drawable getNavigationIcon()
  {
    if (this.dg != null) {
      return this.dg.getDrawable();
    }
    return null;
  }
  
  public CharSequence getSubtitle()
  {
    return this.dx;
  }
  
  public CharSequence getTitle()
  {
    return this.dw;
  }
  
  public boolean isOverflowMenuShowing()
  {
    return (this.Ἵ != null) && (this.Ἵ.isOverflowMenuShowing());
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.dL);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = ᵧ.ˊ(paramMotionEvent);
    if (i == 9) {
      this.dB = false;
    }
    if (!this.dB)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i == 9) && (!bool)) {
        this.dB = true;
      }
    }
    if ((i == 10) || (i == 3)) {
      this.dB = false;
    }
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j;
    if (ﺑ.ˌ(this) == 1) {
      j = 1;
    } else {
      j = 0;
    }
    int i2 = getWidth();
    int i4 = getHeight();
    int n = getPaddingLeft();
    int i3 = getPaddingRight();
    int m = getPaddingTop();
    int i5 = getPaddingBottom();
    paramInt3 = n;
    paramInt4 = i2 - i3;
    int[] arrayOfInt = this.dD;
    arrayOfInt[1] = 0;
    arrayOfInt[0] = 0;
    int i1 = τ();
    paramInt1 = paramInt3;
    paramInt2 = paramInt4;
    if (ﹾ(this.dg)) {
      if (j != 0)
      {
        paramInt2 = ˋ(this.dg, paramInt4, arrayOfInt, i1);
        paramInt1 = paramInt3;
      }
      else
      {
        paramInt1 = ˊ(this.dg, paramInt3, arrayOfInt, i1);
        paramInt2 = paramInt4;
      }
    }
    paramInt3 = paramInt1;
    paramInt4 = paramInt2;
    if (ﹾ(this.dk)) {
      if (j != 0)
      {
        paramInt4 = ˋ(this.dk, paramInt2, arrayOfInt, i1);
        paramInt3 = paramInt1;
      }
      else
      {
        paramInt3 = ˊ(this.dk, paramInt1, arrayOfInt, i1);
        paramInt4 = paramInt2;
      }
    }
    paramInt2 = paramInt3;
    paramInt1 = paramInt4;
    if (ﹾ(this.Ἵ)) {
      if (j != 0)
      {
        paramInt2 = ˊ(this.Ἵ, paramInt3, arrayOfInt, i1);
        paramInt1 = paramInt4;
      }
      else
      {
        paramInt1 = ˋ(this.Ἵ, paramInt4, arrayOfInt, i1);
        paramInt2 = paramInt3;
      }
    }
    arrayOfInt[0] = Math.max(0, getContentInsetLeft() - paramInt2);
    arrayOfInt[1] = Math.max(0, getContentInsetRight() - (i2 - i3 - paramInt1));
    paramInt2 = Math.max(paramInt2, getContentInsetLeft());
    paramInt3 = Math.min(paramInt1, i2 - i3 - getContentInsetRight());
    paramInt1 = paramInt2;
    paramInt4 = paramInt3;
    if (ﹾ(this.dl)) {
      if (j != 0)
      {
        paramInt4 = ˋ(this.dl, paramInt3, arrayOfInt, i1);
        paramInt1 = paramInt2;
      }
      else
      {
        paramInt1 = ˊ(this.dl, paramInt2, arrayOfInt, i1);
        paramInt4 = paramInt3;
      }
    }
    paramInt2 = paramInt1;
    paramInt3 = paramInt4;
    if (ﹾ(this.dh)) {
      if (j != 0)
      {
        paramInt3 = ˋ(this.dh, paramInt4, arrayOfInt, i1);
        paramInt2 = paramInt1;
      }
      else
      {
        paramInt2 = ˊ(this.dh, paramInt1, arrayOfInt, i1);
        paramInt3 = paramInt4;
      }
    }
    paramBoolean = ﹾ(this.de);
    boolean bool = ﹾ(this.df);
    paramInt1 = 0;
    Object localObject1;
    if (paramBoolean)
    {
      localObject1 = (Toolbar.ˊ)this.de.getLayoutParams();
      paramInt1 = ((Toolbar.ˊ)localObject1).topMargin + this.de.getMeasuredHeight() + ((Toolbar.ˊ)localObject1).bottomMargin + 0;
    }
    int k = paramInt1;
    if (bool)
    {
      localObject1 = (Toolbar.ˊ)this.df.getLayoutParams();
      k = paramInt1 + (((Toolbar.ˊ)localObject1).topMargin + this.df.getMeasuredHeight() + ((Toolbar.ˊ)localObject1).bottomMargin);
    }
    if (!paramBoolean)
    {
      paramInt1 = paramInt2;
      paramInt4 = paramInt3;
      if (!bool) {}
    }
    else
    {
      if (paramBoolean) {
        localObject1 = this.de;
      } else {
        localObject1 = this.df;
      }
      if (bool) {
        localObject2 = this.df;
      } else {
        localObject2 = this.de;
      }
      localObject1 = (Toolbar.ˊ)((View)localObject1).getLayoutParams();
      Object localObject2 = (Toolbar.ˊ)((View)localObject2).getLayoutParams();
      int i;
      if (((paramBoolean) && (this.de.getMeasuredWidth() > 0)) || ((bool) && (this.df.getMeasuredWidth() > 0))) {
        i = 1;
      } else {
        i = 0;
      }
      switch (this.ᒰ & 0x70)
      {
      default: 
        break;
      case 48: 
        paramInt1 = getPaddingTop() + ((Toolbar.ˊ)localObject1).topMargin + this.dt;
        break;
      case 16: 
        paramInt4 = (i4 - m - i5 - k) / 2;
        if (paramInt4 < ((Toolbar.ˊ)localObject1).topMargin + this.dt)
        {
          paramInt1 = ((Toolbar.ˊ)localObject1).topMargin + this.dt;
        }
        else
        {
          k = i4 - i5 - k - paramInt4 - m;
          paramInt1 = paramInt4;
          if (k < ((Toolbar.ˊ)localObject1).bottomMargin + this.du) {
            paramInt1 = Math.max(0, paramInt4 - (((Toolbar.ˊ)localObject2).bottomMargin + this.du - k));
          }
        }
        paramInt1 = m + paramInt1;
        break;
      }
      paramInt1 = i4 - i5 - ((Toolbar.ˊ)localObject2).bottomMargin - this.du - k;
      if (j != 0)
      {
        if (i != 0) {
          paramInt4 = this.dr;
        } else {
          paramInt4 = 0;
        }
        paramInt4 -= arrayOfInt[1];
        paramInt3 -= Math.max(0, paramInt4);
        arrayOfInt[1] = Math.max(0, -paramInt4);
        k = paramInt3;
        paramInt4 = paramInt3;
        m = paramInt1;
        j = k;
        if (paramBoolean)
        {
          localObject1 = (Toolbar.ˊ)this.de.getLayoutParams();
          j = k - this.de.getMeasuredWidth();
          m = paramInt1 + this.de.getMeasuredHeight();
          this.de.layout(j, paramInt1, k, m);
          j -= this.ds;
          m += ((Toolbar.ˊ)localObject1).bottomMargin;
        }
        paramInt1 = paramInt4;
        if (bool)
        {
          localObject1 = (Toolbar.ˊ)this.df.getLayoutParams();
          paramInt1 = m + ((Toolbar.ˊ)localObject1).topMargin;
          k = this.df.getMeasuredWidth();
          m = paramInt1 + this.df.getMeasuredHeight();
          this.df.layout(paramInt4 - k, paramInt1, paramInt4, m);
          paramInt1 = paramInt4 - this.ds;
          paramInt4 = ((Toolbar.ˊ)localObject1).bottomMargin;
        }
        if (i != 0) {
          paramInt3 = Math.min(j, paramInt1);
        }
        paramInt1 = paramInt2;
        paramInt4 = paramInt3;
      }
      else
      {
        if (i != 0) {
          paramInt4 = this.dr;
        } else {
          paramInt4 = 0;
        }
        paramInt4 -= arrayOfInt[0];
        paramInt2 += Math.max(0, paramInt4);
        arrayOfInt[0] = Math.max(0, -paramInt4);
        k = paramInt2;
        paramInt4 = paramInt2;
        m = paramInt1;
        j = k;
        if (paramBoolean)
        {
          localObject1 = (Toolbar.ˊ)this.de.getLayoutParams();
          j = k + this.de.getMeasuredWidth();
          m = paramInt1 + this.de.getMeasuredHeight();
          this.de.layout(k, paramInt1, j, m);
          j += this.ds;
          m += ((Toolbar.ˊ)localObject1).bottomMargin;
        }
        k = paramInt4;
        if (bool)
        {
          localObject1 = (Toolbar.ˊ)this.df.getLayoutParams();
          paramInt1 = m + ((Toolbar.ˊ)localObject1).topMargin;
          k = paramInt4 + this.df.getMeasuredWidth();
          m = paramInt1 + this.df.getMeasuredHeight();
          this.df.layout(paramInt4, paramInt1, k, m);
          k += this.ds;
          paramInt1 = ((Toolbar.ˊ)localObject1).bottomMargin;
        }
        paramInt1 = paramInt2;
        paramInt4 = paramInt3;
        if (i != 0)
        {
          paramInt1 = Math.max(j, k);
          paramInt4 = paramInt3;
        }
      }
    }
    ˊ(this.dC, 3);
    paramInt3 = this.dC.size();
    paramInt2 = 0;
    while (paramInt2 < paramInt3)
    {
      paramInt1 = ˊ((View)this.dC.get(paramInt2), paramInt1, arrayOfInt, i1);
      paramInt2 += 1;
    }
    ˊ(this.dC, 5);
    paramInt3 = this.dC.size();
    paramInt2 = 0;
    while (paramInt2 < paramInt3)
    {
      paramInt4 = ˋ((View)this.dC.get(paramInt2), paramInt4, arrayOfInt, i1);
      paramInt2 += 1;
    }
    ˊ(this.dC, 1);
    paramInt3 = ˊ(this.dC, arrayOfInt);
    paramInt2 = n + (i2 - n - i3) / 2 - paramInt3 / 2;
    paramInt3 = paramInt2 + paramInt3;
    if (paramInt2 >= paramInt1)
    {
      paramInt1 = paramInt2;
      if (paramInt3 > paramInt4) {
        paramInt1 = paramInt2 - (paramInt3 - paramInt4);
      }
    }
    paramInt3 = this.dC.size();
    paramInt2 = 0;
    while (paramInt2 < paramInt3)
    {
      paramInt1 = ˊ((View)this.dC.get(paramInt2), paramInt1, arrayOfInt, i1);
      paramInt2 += 1;
    }
    this.dC.clear();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int m = 0;
    int j = 0;
    int[] arrayOfInt = this.dD;
    if (ᓯ.ᐩ(this))
    {
      i2 = 1;
      i1 = 0;
    }
    else
    {
      i2 = 0;
      i1 = 1;
    }
    int n = 0;
    if (ﹾ(this.dg))
    {
      ˋ(this.dg, paramInt1, 0, paramInt2, 0, this.dq);
      n = this.dg.getMeasuredWidth() + ɩ(this.dg);
      m = Math.max(0, this.dg.getMeasuredHeight() + ʵ(this.dg));
      j = ᓯ.combineMeasuredStates(0, ﺑ.ˍ(this.dg));
    }
    int k = m;
    int i = j;
    if (ﹾ(this.dk))
    {
      ˋ(this.dk, paramInt1, 0, paramInt2, 0, this.dq);
      n = this.dk.getMeasuredWidth() + ɩ(this.dk);
      k = Math.max(m, this.dk.getMeasuredHeight() + ʵ(this.dk));
      i = ᓯ.combineMeasuredStates(j, ﺑ.ˍ(this.dk));
    }
    j = getContentInsetStart();
    int i3 = Math.max(j, n) + 0;
    arrayOfInt[i2] = Math.max(0, j - n);
    n = 0;
    m = k;
    j = i;
    if (ﹾ(this.Ἵ))
    {
      ˋ(this.Ἵ, paramInt1, i3, paramInt2, 0, this.dq);
      n = this.Ἵ.getMeasuredWidth() + ɩ(this.Ἵ);
      m = Math.max(k, this.Ἵ.getMeasuredHeight() + ʵ(this.Ἵ));
      j = ᓯ.combineMeasuredStates(i, ﺑ.ˍ(this.Ἵ));
    }
    i = getContentInsetEnd();
    int i2 = i3 + Math.max(i, n);
    arrayOfInt[i1] = Math.max(0, i - n);
    int i1 = i2;
    k = m;
    i = j;
    if (ﹾ(this.dl))
    {
      i1 = i2 + ˊ(this.dl, paramInt1, i2, paramInt2, 0, arrayOfInt);
      k = Math.max(m, this.dl.getMeasuredHeight() + ʵ(this.dl));
      i = ᓯ.combineMeasuredStates(j, ﺑ.ˍ(this.dl));
    }
    j = i1;
    m = k;
    n = i;
    if (ﹾ(this.dh))
    {
      j = i1 + ˊ(this.dh, paramInt1, i1, paramInt2, 0, arrayOfInt);
      m = Math.max(k, this.dh.getMeasuredHeight() + ʵ(this.dh));
      n = ᓯ.combineMeasuredStates(i, ﺑ.ˍ(this.dh));
    }
    i3 = getChildCount();
    k = 0;
    i = n;
    i1 = m;
    n = j;
    while (k < i3)
    {
      View localView = getChildAt(k);
      i2 = n;
      m = i1;
      j = i;
      if (((Toolbar.ˊ)localView.getLayoutParams()).dO == 0) {
        if (!ﹾ(localView))
        {
          i2 = n;
          m = i1;
          j = i;
        }
        else
        {
          i2 = n + ˊ(localView, paramInt1, n, paramInt2, 0, arrayOfInt);
          m = Math.max(i1, localView.getMeasuredHeight() + ʵ(localView));
          j = ᓯ.combineMeasuredStates(i, ﺑ.ˍ(localView));
        }
      }
      k += 1;
      n = i2;
      i1 = m;
      i = j;
    }
    m = 0;
    k = 0;
    int i4 = this.dt + this.du;
    int i5 = this.dr + this.ds;
    j = i;
    if (ﹾ(this.de))
    {
      ˊ(this.de, paramInt1, n + i5, paramInt2, i4, arrayOfInt);
      m = this.de.getMeasuredWidth() + ɩ(this.de);
      k = this.de.getMeasuredHeight() + ʵ(this.de);
      j = ᓯ.combineMeasuredStates(i, ﺑ.ˍ(this.de));
    }
    i = j;
    i2 = m;
    i3 = k;
    if (ﹾ(this.df))
    {
      i2 = Math.max(m, ˊ(this.df, paramInt1, n + i5, paramInt2, k + i4, arrayOfInt));
      i3 = k + (this.df.getMeasuredHeight() + ʵ(this.df));
      i = ᓯ.combineMeasuredStates(j, ﺑ.ˍ(this.df));
    }
    j = Math.max(i1, i3);
    i1 = getPaddingLeft();
    i3 = getPaddingRight();
    k = getPaddingTop();
    m = getPaddingBottom();
    n = ﺑ.resolveSizeAndState(Math.max(n + i2 + (i1 + i3), getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i);
    paramInt1 = ﺑ.resolveSizeAndState(Math.max(j + (k + m), getSuggestedMinimumHeight()), paramInt2, i << 16);
    if (ʷ()) {
      paramInt1 = 0;
    }
    setMeasuredDimension(n, paramInt1);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    SavedState localSavedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.Ἵ != null) {
      paramParcelable = this.Ἵ.ﭜ();
    } else {
      paramParcelable = null;
    }
    if ((localSavedState.dP != 0) && (this.dI != null) && (paramParcelable != null))
    {
      paramParcelable = paramParcelable.findItem(localSavedState.dP);
      if (paramParcelable != null) {
        ᵄ.ˎ(paramParcelable);
      }
    }
    if (localSavedState.dQ) {
      ʖ();
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      super.onRtlPropertiesChanged(paramInt);
    }
    ſ localſ = this.dv;
    boolean bool;
    if (paramInt == 1) {
      bool = true;
    } else {
      bool = false;
    }
    localſ.ᴵ(bool);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if ((this.dI != null) && (this.dI.dN != null)) {
      localSavedState.dP = this.dI.dN.getItemId();
    }
    localSavedState.dQ = isOverflowMenuShowing();
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = ᵧ.ˊ(paramMotionEvent);
    if (i == 0) {
      this.dA = false;
    }
    if (!this.dA)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i == 0) && (!bool)) {
        this.dA = true;
      }
    }
    if ((i == 1) || (i == 3)) {
      this.dA = false;
    }
    return true;
  }
  
  public void setCollapsible(boolean paramBoolean)
  {
    this.dJ = paramBoolean;
    requestLayout();
  }
  
  public void setContentInsetsAbsolute(int paramInt1, int paramInt2)
  {
    this.dv.ᐧ(paramInt1, paramInt2);
  }
  
  public void setContentInsetsRelative(int paramInt1, int paramInt2)
  {
    this.dv.ـ(paramInt1, paramInt2);
  }
  
  public void setLogo(int paramInt)
  {
    setLogo(this.ᒴ.getDrawable(paramInt));
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      ɻ();
      if (this.dh.getParent() == null)
      {
        ﹸ(this.dh);
        ʸ(this.dh);
      }
    }
    else if ((this.dh != null) && (this.dh.getParent() != null))
    {
      removeView(this.dh);
    }
    if (this.dh != null) {
      this.dh.setImageDrawable(paramDrawable);
    }
  }
  
  public void setLogoDescription(int paramInt)
  {
    setLogoDescription(getContext().getText(paramInt));
  }
  
  public void setLogoDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      ɻ();
    }
    if (this.dh != null) {
      this.dh.setContentDescription(paramCharSequence);
    }
  }
  
  public void setMenu(ᵁ paramᵁ, ᓴ paramᓴ)
  {
    if ((paramᵁ == null) && (this.Ἵ == null)) {
      return;
    }
    ʏ();
    ᵁ localᵁ = this.Ἵ.ﭜ();
    if (localᵁ == paramᵁ) {
      return;
    }
    if (localᵁ != null)
    {
      localᵁ.ˊ(this.dH);
      localᵁ.ˊ(this.dI);
    }
    if (this.dI == null) {
      this.dI = new if(null);
    }
    paramᓴ.setExpandedActionViewsExclusive(true);
    if (paramᵁ != null)
    {
      paramᵁ.ˊ(paramᓴ, this.Ἴ);
      paramᵁ.ˊ(this.dI, this.Ἴ);
    }
    else
    {
      paramᓴ.ˊ(this.Ἴ, null);
      this.dI.ˊ(this.Ἴ, null);
      paramᓴ.ˈ(true);
      this.dI.ˈ(true);
    }
    this.Ἵ.setPopupTheme(this.Ť);
    this.Ἵ.setPresenter(paramᓴ);
    this.dH = paramᓴ;
  }
  
  public void setMenuCallbacks(ᵉ.if paramif, ᵁ.if paramif1)
  {
    this.ƈ = paramif;
    this.ȝ = paramif1;
  }
  
  public void setMinimumHeight(int paramInt)
  {
    this.dK = paramInt;
    super.setMinimumHeight(paramInt);
  }
  
  public void setNavigationContentDescription(int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getContext().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setNavigationContentDescription(localCharSequence);
  }
  
  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      ʔ();
    }
    if (this.dg != null) {
      this.dg.setContentDescription(paramCharSequence);
    }
  }
  
  public void setNavigationIcon(int paramInt)
  {
    setNavigationIcon(this.ᒴ.getDrawable(paramInt));
  }
  
  public void setNavigationIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      ʔ();
      if (this.dg.getParent() == null)
      {
        ﹸ(this.dg);
        ʸ(this.dg);
      }
    }
    else if ((this.dg != null) && (this.dg.getParent() != null))
    {
      removeView(this.dg);
    }
    if (this.dg != null) {
      this.dg.setImageDrawable(paramDrawable);
    }
  }
  
  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener)
  {
    ʔ();
    this.dg.setOnClickListener(paramOnClickListener);
  }
  
  public void setOnMenuItemClickListener(Toolbar.ˋ paramˋ)
  {
    this.dE = paramˋ;
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (this.Ť != paramInt)
    {
      this.Ť = paramInt;
      if (paramInt == 0)
      {
        this.Ἴ = getContext();
        return;
      }
      this.Ἴ = new ContextThemeWrapper(getContext(), paramInt);
    }
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(getContext().getText(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.df == null)
      {
        Context localContext = getContext();
        this.df = new TextView(localContext);
        this.df.setSingleLine();
        this.df.setEllipsize(TextUtils.TruncateAt.END);
        if (this.jdField_do != 0) {
          this.df.setTextAppearance(localContext, this.jdField_do);
        }
        if (this.dz != 0) {
          this.df.setTextColor(this.dz);
        }
      }
      if (this.df.getParent() == null)
      {
        ﹸ(this.df);
        ʸ(this.df);
      }
    }
    else if ((this.df != null) && (this.df.getParent() != null))
    {
      removeView(this.df);
    }
    if (this.df != null) {
      this.df.setText(paramCharSequence);
    }
    this.dx = paramCharSequence;
  }
  
  public void setSubtitleTextAppearance(Context paramContext, int paramInt)
  {
    this.jdField_do = paramInt;
    if (this.df != null) {
      this.df.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setSubtitleTextColor(int paramInt)
  {
    this.dz = paramInt;
    if (this.df != null) {
      this.df.setTextColor(paramInt);
    }
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(getContext().getText(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.de == null)
      {
        Context localContext = getContext();
        this.de = new TextView(localContext);
        this.de.setSingleLine();
        this.de.setEllipsize(TextUtils.TruncateAt.END);
        if (this.dm != 0) {
          this.de.setTextAppearance(localContext, this.dm);
        }
        if (this.dy != 0) {
          this.de.setTextColor(this.dy);
        }
      }
      if (this.de.getParent() == null)
      {
        ﹸ(this.de);
        ʸ(this.de);
      }
    }
    else if ((this.de != null) && (this.de.getParent() != null))
    {
      removeView(this.de);
    }
    if (this.de != null) {
      this.de.setText(paramCharSequence);
    }
    this.dw = paramCharSequence;
  }
  
  public void setTitleTextAppearance(Context paramContext, int paramInt)
  {
    this.dm = paramInt;
    if (this.de != null) {
      this.de.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setTitleTextColor(int paramInt)
  {
    this.dy = paramInt;
    if (this.de != null) {
      this.de.setTextColor(paramInt);
    }
  }
  
  public boolean showOverflowMenu()
  {
    return (this.Ἵ != null) && (this.Ἵ.showOverflowMenu());
  }
  
  public Toolbar.ˊ ˏ(AttributeSet paramAttributeSet)
  {
    return new Toolbar.ˊ(getContext(), paramAttributeSet);
  }
  
  protected Toolbar.ˊ ˏ(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof Toolbar.ˊ)) {
      return new Toolbar.ˊ((Toolbar.ˊ)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ذ.if)) {
      return new Toolbar.ˊ((ذ.if)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new Toolbar.ˊ((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new Toolbar.ˊ(paramLayoutParams);
  }
  
  protected Toolbar.ˊ ΐ()
  {
    return new Toolbar.ˊ(-2, -2);
  }
  
  public ﻴ Γ()
  {
    if (this.dG == null) {
      this.dG = new ᐞ(this, true);
    }
    return this.dG;
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new ڎ();
    public int dP;
    public boolean dQ;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      this.dP = paramParcel.readInt();
      boolean bool;
      if (paramParcel.readInt() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      this.dQ = bool;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.dP);
      if (this.dQ) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      paramParcel.writeInt(paramInt);
    }
  }
  
  class if
    implements ᵉ
  {
    ᵃ dN;
    ᵁ ｼ;
    
    private if() {}
    
    public void ˈ(boolean paramBoolean)
    {
      if (this.dN != null)
      {
        int k = 0;
        int j = k;
        if (this.ｼ != null)
        {
          int m = this.ｼ.size();
          int i = 0;
          for (;;)
          {
            j = k;
            if (i >= m) {
              break;
            }
            if (this.ｼ.getItem(i) == this.dN)
            {
              j = 1;
              break;
            }
            i += 1;
          }
        }
        if (j == 0) {
          ˋ(this.ｼ, this.dN);
        }
      }
    }
    
    public void ˊ(Context paramContext, ᵁ paramᵁ)
    {
      if ((this.ｼ != null) && (this.dN != null)) {
        this.ｼ.ᐝ(this.dN);
      }
      this.ｼ = paramᵁ;
    }
    
    public void ˊ(ᵁ paramᵁ, boolean paramBoolean) {}
    
    public boolean ˊ(ᵁ paramᵁ, ᵃ paramᵃ)
    {
      Toolbar.ˊ(Toolbar.this);
      if (Toolbar.ˋ(Toolbar.this).getParent() != Toolbar.this) {
        Toolbar.this.addView(Toolbar.ˋ(Toolbar.this));
      }
      Toolbar.this.dl = paramᵃ.getActionView();
      this.dN = paramᵃ;
      if (Toolbar.this.dl.getParent() != Toolbar.this)
      {
        paramᵁ = Toolbar.this.ΐ();
        paramᵁ.gravity = (Toolbar.ˎ(Toolbar.this) & 0x70 | 0x800003);
        paramᵁ.dO = 2;
        Toolbar.this.dl.setLayoutParams(paramᵁ);
        Toolbar.this.addView(Toolbar.this.dl);
      }
      Toolbar.ˊ(Toolbar.this, true);
      Toolbar.this.requestLayout();
      paramᵃ.ﾞ(true);
      if ((Toolbar.this.dl instanceof ᓱ)) {
        ((ᓱ)Toolbar.this.dl).onActionViewExpanded();
      }
      return true;
    }
    
    public boolean ˊ(ᵡ paramᵡ)
    {
      return false;
    }
    
    public boolean ˋ(ᵁ paramᵁ, ᵃ paramᵃ)
    {
      if ((Toolbar.this.dl instanceof ᓱ)) {
        ((ᓱ)Toolbar.this.dl).onActionViewCollapsed();
      }
      Toolbar.this.removeView(Toolbar.this.dl);
      Toolbar.this.removeView(Toolbar.ˋ(Toolbar.this));
      Toolbar.this.dl = null;
      Toolbar.ˊ(Toolbar.this, false);
      this.dN = null;
      Toolbar.this.requestLayout();
      paramᵃ.ﾞ(false);
      return true;
    }
    
    public boolean ᑦ()
    {
      return false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.Toolbar
 * JD-Core Version:    0.7.0.1
 */