package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;
import o.ܝ;
import o.ᒢ;
import o.ᒾ;
import o.ᴗ;
import o.ᵇ;
import o.ᵖ;
import o.ᵧ;
import o.ﮂ;
import o.ﮄ;
import o.ﹻ;
import o.ﹽ;
import o.ﺋ;
import o.ﺑ;
import o.ﺜ;
import o.ﻟ;
import o.ﾉ;

public class RecyclerView
  extends ViewGroup
{
  private static final boolean F;
  private static final Interpolator aA = new ﹽ();
  private final con G = new con(null);
  final RecyclerView.ʾ H = new RecyclerView.ʾ(this);
  private SavedState I;
  public ᴗ J;
  ᵇ K;
  final List<View> L = new ArrayList();
  private boolean M;
  private final Runnable N = new ﮂ(this);
  private if O;
  private RecyclerView.ʻ P;
  private RecyclerView.ʿ Q;
  private final ArrayList<aux> R = new ArrayList();
  private final ArrayList<RecyclerView.ʽ> S = new ArrayList();
  private RecyclerView.ʽ T;
  private boolean U;
  private boolean V;
  private boolean W;
  private boolean a_;
  private final boolean aa;
  private final AccessibilityManager ab;
  private boolean ac = false;
  private boolean ad = false;
  private ܝ ae;
  private ܝ af;
  private ܝ ag;
  private ܝ ah;
  public RecyclerView.ˎ ai = new ᵖ();
  private int aj = -1;
  private int ak;
  private int al;
  private int am;
  private int an;
  private final int ao;
  private final int ap;
  private final RecyclerView.ˍ aq = new RecyclerView.ˍ(this);
  public final RecyclerView.ˉ ar = new RecyclerView.ˉ();
  private RecyclerView.ͺ as;
  public boolean at = false;
  public boolean au = false;
  private RecyclerView.ˎ.ˊ av = new RecyclerView.ˏ(this, null);
  private boolean aw = false;
  private ﾉ ax;
  private final int[] ay = new int[2];
  private Runnable az = new ﮄ(this);
  private boolean b_;
  private boolean c_;
  private int כ;
  private VelocityTracker ᓴ;
  private int ℴ = 0;
  private final Rect ﹽ = new Rect();
  
  static
  {
    boolean bool;
    if ((Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {
      bool = true;
    } else {
      bool = false;
    }
    F = bool;
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    boolean bool;
    if (Build.VERSION.SDK_INT >= 16) {
      bool = true;
    } else {
      bool = false;
    }
    this.aa = bool;
    paramContext = ViewConfiguration.get(paramContext);
    this.כ = paramContext.getScaledTouchSlop();
    this.ao = paramContext.getScaledMinimumFlingVelocity();
    this.ap = paramContext.getScaledMaximumFlingVelocity();
    if (ﺑ.ͺ(this) == 2) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    this.ai.ˊ(this.av);
    ᴿ();
    ᴴ();
    if (ﺑ.ˈ(this) == 0) {
      ﺑ.ˏ(this, 1);
    }
    this.ab = ((AccessibilityManager)getContext().getSystemService("accessibility"));
    setAccessibilityDelegateCompat(new ﾉ(this));
  }
  
  private void ı(View paramView)
  {
    if (this.O != null) {
      this.O.ʾ(ᗮ(paramView));
    }
    ᵀ(paramView);
  }
  
  private void ǃ(View paramView)
  {
    this.L.remove(paramView);
  }
  
  private void ʲ(View paramView)
  {
    if (!this.L.contains(paramView)) {
      this.L.add(paramView);
    }
  }
  
  private void ʻ(RecyclerView.ˑ paramˑ)
  {
    View localView = paramˑ.bB;
    int i;
    if (localView.getParent() == this) {
      i = 1;
    } else {
      i = 0;
    }
    this.H.ⁱ(ᵣ(localView));
    if (paramˑ.Ῐ())
    {
      this.K.ˊ(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i == 0)
    {
      this.K.ˏ(localView, true);
      return;
    }
    this.K.ᕀ(localView);
  }
  
  private int ʽ(RecyclerView.ˑ paramˑ)
  {
    if (paramˑ.ᘁ(520)) {
      return -1;
    }
    return this.J.ᒡ(paramˑ.Ύ);
  }
  
  private boolean ʾ(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if (this.T != null) {
      if (i == 0)
      {
        this.T = null;
      }
      else
      {
        this.T.ˋ(this, paramMotionEvent);
        if ((i == 3) || (i == 1)) {
          this.T = null;
        }
        return true;
      }
    }
    if (i != 0)
    {
      int j = this.S.size();
      i = 0;
      while (i < j)
      {
        RecyclerView.ʽ localʽ = (RecyclerView.ʽ)this.S.get(i);
        if (localʽ.ˊ(this, paramMotionEvent))
        {
          this.T = localʽ;
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  private void ʿ(MotionEvent paramMotionEvent)
  {
    int i = ᵧ.ˋ(paramMotionEvent);
    if (ᵧ.ˋ(paramMotionEvent, i) == this.aj)
    {
      if (i == 0) {
        i = 1;
      } else {
        i = 0;
      }
      this.aj = ᵧ.ˋ(paramMotionEvent, i);
      int j = (int)(ᵧ.ˎ(paramMotionEvent, i) + 0.5F);
      this.am = j;
      this.ak = j;
      i = (int)(ᵧ.ˏ(paramMotionEvent, i) + 0.5F);
      this.an = i;
      this.al = i;
    }
  }
  
  private void ˊ(if paramif, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.O != null)
    {
      this.O.ˋ(this.G);
      this.O.ﹳ(this);
    }
    if ((!paramBoolean1) || (paramBoolean2))
    {
      if (this.ai != null) {
        this.ai.ļ();
      }
      if (this.P != null)
      {
        this.P.ˏ(this.H);
        this.P.ˎ(this.H);
      }
      this.H.clear();
    }
    this.J.reset();
    if localif = this.O;
    this.O = paramif;
    if (paramif != null)
    {
      paramif.ˊ(this.G);
      paramif.ᐨ(this);
    }
    if (this.P != null) {
      this.P.ˊ(localif, this.O);
    }
    this.H.ˊ(localif, this.O, paramBoolean1);
    RecyclerView.ˉ.ˊ(this.ar, true);
    ﺋ();
  }
  
  private void ˊ(RecyclerView.ˑ paramˑ, Rect paramRect, int paramInt1, int paramInt2)
  {
    View localView = paramˑ.bB;
    if ((paramRect != null) && ((paramRect.left != paramInt1) || (paramRect.top != paramInt2)))
    {
      paramˑ.setIsRecyclable(false);
      if (this.ai.ˊ(paramˑ, paramRect.left, paramRect.top, paramInt1, paramInt2)) {
        ⁀();
      }
    }
    else
    {
      paramˑ.setIsRecyclable(false);
      if (this.ai.ˎ(paramˑ)) {
        ⁀();
      }
    }
  }
  
  private void ˊ(RecyclerView.ˑ paramˑ1, RecyclerView.ˑ paramˑ2)
  {
    paramˑ1.setIsRecyclable(false);
    ʻ(paramˑ1);
    paramˑ1.bG = paramˑ2;
    this.H.ⁱ(paramˑ1);
    int k = paramˑ1.bB.getLeft();
    int m = paramˑ1.bB.getTop();
    int j;
    int i;
    if ((paramˑ2 == null) || (paramˑ2.ᴐ()))
    {
      j = k;
      i = m;
    }
    else
    {
      j = paramˑ2.bB.getLeft();
      i = paramˑ2.bB.getTop();
      paramˑ2.setIsRecyclable(false);
      paramˑ2.bH = paramˑ1;
    }
    if (this.ai.ˊ(paramˑ1, paramˑ2, k, m, j, i)) {
      ⁀();
    }
  }
  
  private void ˊ(RecyclerView.ᐝ paramᐝ)
  {
    View localView = paramᐝ.ᓮ.bB;
    ʻ(paramᐝ.ᓮ);
    int i = paramᐝ.left;
    int j = paramᐝ.top;
    int k = localView.getLeft();
    int m = localView.getTop();
    if ((i != k) || (j != m))
    {
      paramᐝ.ᓮ.setIsRecyclable(false);
      localView.layout(k, m, localView.getWidth() + k, localView.getHeight() + m);
      if (this.ai.ˊ(paramᐝ.ᓮ, i, j, k, m)) {
        ⁀();
      }
    }
    else
    {
      paramᐝ.ᓮ.setIsRecyclable(false);
      if (this.ai.ˊ(paramᐝ.ᓮ)) {
        ⁀();
      }
    }
  }
  
  private void ˊ(ᒢ<View, Rect> paramᒢ)
  {
    int j = this.L.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)this.L.get(i);
      RecyclerView.ˑ localˑ = ᗮ(localView);
      RecyclerView.ᐝ localᐝ = (RecyclerView.ᐝ)this.ar.bn.remove(localˑ);
      if (!this.ar.ڏ()) {
        this.ar.bo.remove(localˑ);
      }
      if (paramᒢ.remove(localView) != null) {
        this.P.ˊ(localView, this.H);
      } else if (localᐝ != null) {
        ˊ(localᐝ);
      } else {
        ˊ(new RecyclerView.ᐝ(localˑ, localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
      }
      i += 1;
    }
    this.L.clear();
  }
  
  private void ˋ(int[] paramArrayOfInt)
  {
    int i2 = this.K.getChildCount();
    if (i2 == 0)
    {
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return;
    }
    int j = 2147483647;
    int m = -2147483648;
    int k = 0;
    while (k < i2)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.getChildAt(k));
      int i1;
      if (localˑ.ᴐ())
      {
        i1 = m;
      }
      else
      {
        int n = localˑ.getLayoutPosition();
        int i = j;
        if (n < j) {
          i = n;
        }
        j = i;
        i1 = m;
        if (n > m)
        {
          i1 = n;
          j = i;
        }
      }
      k += 1;
      m = i1;
    }
    paramArrayOfInt[0] = j;
    paramArrayOfInt[1] = m;
  }
  
  private void ˡ(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      ἰ();
      this.ae.ͺ(-paramInt1 / getWidth());
    }
    else if (paramInt1 > 0)
    {
      ἱ();
      this.ag.ͺ(paramInt1 / getWidth());
    }
    if (paramInt2 < 0)
    {
      ὶ();
      this.af.ͺ(-paramInt2 / getHeight());
    }
    else if (paramInt2 > 0)
    {
      ί();
      this.ah.ͺ(paramInt2 / getHeight());
    }
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      ﺑ.ʿ(this);
    }
  }
  
  private void ˮ(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.ae != null)
    {
      bool1 = bool2;
      if (!this.ae.isFinished())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = this.ae.ﯨ();
        }
      }
    }
    bool2 = bool1;
    if (this.ag != null)
    {
      bool2 = bool1;
      if (!this.ag.isFinished())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | this.ag.ﯨ();
        }
      }
    }
    bool1 = bool2;
    if (this.af != null)
    {
      bool1 = bool2;
      if (!this.af.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | this.af.ﯨ();
        }
      }
    }
    bool2 = bool1;
    if (this.ah != null)
    {
      bool2 = bool1;
      if (!this.ah.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | this.ah.ﯨ();
        }
      }
    }
    if (bool2) {
      ﺑ.ʿ(this);
    }
  }
  
  private void ـ(int paramInt)
  {
    if (paramInt == this.ℴ) {
      return;
    }
    this.ℴ = paramInt;
    if (paramInt != 2) {
      ṛ();
    }
    if (this.as != null) {
      this.as.ˎ(this, paramInt);
    }
    if (this.P != null) {
      this.P.৲(paramInt);
    }
  }
  
  private void ᐠ(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (j)
    {
    default: 
      break;
    case 1073741824: 
    case -2147483648: 
      break;
    }
    paramInt1 = ﺑ.ᐧ(this);
    switch (i)
    {
    default: 
      break;
    case 1073741824: 
    case -2147483648: 
      break;
    }
    paramInt2 = ﺑ.ᐨ(this);
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  private boolean ᐣ(int paramInt1, int paramInt2)
  {
    int j = this.K.getChildCount();
    if (j == 0) {
      return (paramInt1 != 0) || (paramInt2 != 0);
    }
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.getChildAt(i));
      if (!localˑ.ᴐ())
      {
        int k = localˑ.getLayoutPosition();
        if ((k < paramInt1) || (k > paramInt2)) {
          return true;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private boolean ᔈ(View paramView)
  {
    ḷ();
    boolean bool = this.K.ᵕ(paramView);
    if (bool)
    {
      paramView = ᗮ(paramView);
      this.H.ⁱ(paramView);
      this.H.ᵔ(paramView);
    }
    ⁱ(false);
    return bool;
  }
  
  public static RecyclerView.ˑ ᗮ(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return ((RecyclerView.ʼ)paramView.getLayoutParams()).aO;
  }
  
  private void ᴴ()
  {
    this.K = new ᵇ(new ﺋ(this));
  }
  
  private void ᵕ(int paramInt1, int paramInt2)
  {
    onScrollChanged(0, 0, 0, 0);
    if (this.as != null) {
      this.as.ʼ(this, paramInt1, paramInt2);
    }
  }
  
  private void ᵟ()
  {
    this.N.run();
  }
  
  private void ṛ()
  {
    this.aq.stop();
    if (this.P != null) {
      this.P.Ί();
    }
  }
  
  private void ỉ()
  {
    boolean bool2 = false;
    if (this.ae != null) {
      bool2 = this.ae.ﯨ();
    }
    boolean bool1 = bool2;
    if (this.af != null) {
      bool1 = bool2 | this.af.ﯨ();
    }
    bool2 = bool1;
    if (this.ag != null) {
      bool2 = bool1 | this.ag.ﯨ();
    }
    bool1 = bool2;
    if (this.ah != null) {
      bool1 = bool2 | this.ah.ﯨ();
    }
    if (bool1) {
      ﺑ.ʿ(this);
    }
  }
  
  private boolean ι(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getAction();
    if ((j == 3) || (j == 0)) {
      this.T = null;
    }
    int k = this.S.size();
    int i = 0;
    while (i < k)
    {
      RecyclerView.ʽ localʽ = (RecyclerView.ʽ)this.S.get(i);
      if ((localʽ.ˊ(this, paramMotionEvent)) && (j != 3))
      {
        this.T = localʽ;
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void ῑ()
  {
    if (this.ᓴ != null) {
      this.ᓴ.clear();
    }
    ỉ();
    ـ(0);
  }
  
  private boolean ‿()
  {
    return (this.ai != null) && (this.ai.ɺ());
  }
  
  private void ⁀()
  {
    if ((!this.aw) && (this.U))
    {
      ﺑ.ˊ(this, this.az);
      this.aw = true;
    }
  }
  
  private boolean ⁔()
  {
    return (this.ai != null) && (this.P.ד());
  }
  
  private void 丨()
  {
    if (this.ac)
    {
      this.J.reset();
      ﺋ();
      this.P.י(this);
    }
    if ((this.ai != null) && (this.P.ד())) {
      this.J.ﭤ();
    } else {
      this.J.ﹹ();
    }
    int i;
    if (((this.at) && (!this.au)) || (this.at) || ((this.au) && (‿()))) {
      i = 1;
    } else {
      i = 0;
    }
    RecyclerView.ˉ localˉ = this.ar;
    boolean bool;
    if ((this.W) && (this.ai != null) && ((this.ac) || (i != 0) || (RecyclerView.ʻ.ˎ(this.P))) && ((!this.ac) || (this.O.hasStableIds()))) {
      bool = true;
    } else {
      bool = false;
    }
    RecyclerView.ˉ.ˎ(localˉ, bool);
    localˉ = this.ar;
    if ((RecyclerView.ˉ.ˌ(this.ar)) && (i != 0) && (!this.ac) && (⁔())) {
      bool = true;
    } else {
      bool = false;
    }
    RecyclerView.ˉ.ˏ(localˉ, bool);
  }
  
  private void ﹽ()
  {
    if (this.ac) {
      return;
    }
    this.ac = true;
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(i));
      if ((localˑ != null) && (!localˑ.ᴐ())) {
        localˑ.addFlags(512);
      }
      i += 1;
    }
    this.H.ך();
  }
  
  private void ﾟ(View paramView)
  {
    if (this.O != null) {
      this.O.ʿ(ᗮ(paramView));
    }
    ᵋ(paramView);
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if (!this.P.ˊ(this, paramArrayList, paramInt1, paramInt2)) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof RecyclerView.ʼ)) && (this.P.ˊ((RecyclerView.ʼ)paramLayoutParams));
  }
  
  protected int computeHorizontalScrollExtent()
  {
    if (this.P.ŗ()) {
      return this.P.ˏ(this.ar);
    }
    return 0;
  }
  
  protected int computeHorizontalScrollOffset()
  {
    if (this.P.ŗ()) {
      return this.P.ˋ(this.ar);
    }
    return 0;
  }
  
  protected int computeHorizontalScrollRange()
  {
    if (this.P.ŗ()) {
      return this.P.ʻ(this.ar);
    }
    return 0;
  }
  
  protected int computeVerticalScrollExtent()
  {
    if (this.P.ſ()) {
      return this.P.ᐝ(this.ar);
    }
    return 0;
  }
  
  protected int computeVerticalScrollOffset()
  {
    if (this.P.ſ()) {
      return this.P.ˎ(this.ar);
    }
    return 0;
  }
  
  protected int computeVerticalScrollRange()
  {
    if (this.P.ſ()) {
      return this.P.ʼ(this.ar);
    }
    return 0;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int j = this.R.size();
    int i = 0;
    while (i < j)
    {
      ((aux)this.R.get(i)).ˋ(paramCanvas, this, this.ar);
      i += 1;
    }
    i = 0;
    j = i;
    int k;
    if (this.ae != null)
    {
      j = i;
      if (!this.ae.isFinished())
      {
        k = paramCanvas.save();
        if (this.M) {
          i = getPaddingBottom();
        } else {
          i = 0;
        }
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-getHeight() + i, 0.0F);
        if ((this.ae != null) && (this.ae.draw(paramCanvas))) {
          j = 1;
        } else {
          j = 0;
        }
        paramCanvas.restoreToCount(k);
      }
    }
    i = j;
    if (this.af != null)
    {
      i = j;
      if (!this.af.isFinished())
      {
        k = paramCanvas.save();
        if (this.M) {
          paramCanvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if ((this.af != null) && (this.af.draw(paramCanvas))) {
          i = 1;
        } else {
          i = 0;
        }
        i = j | i;
        paramCanvas.restoreToCount(k);
      }
    }
    j = i;
    if (this.ag != null)
    {
      j = i;
      if (!this.ag.isFinished())
      {
        k = paramCanvas.save();
        int m = getWidth();
        if (this.M) {
          j = getPaddingTop();
        } else {
          j = 0;
        }
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-j, -m);
        if ((this.ag != null) && (this.ag.draw(paramCanvas))) {
          j = 1;
        } else {
          j = 0;
        }
        j = i | j;
        paramCanvas.restoreToCount(k);
      }
    }
    i = j;
    if (this.ah != null)
    {
      i = j;
      if (!this.ah.isFinished())
      {
        k = paramCanvas.save();
        paramCanvas.rotate(180.0F);
        if (this.M) {
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
        } else {
          paramCanvas.translate(-getWidth(), -getHeight());
        }
        if ((this.ah != null) && (this.ah.draw(paramCanvas))) {
          i = 1;
        } else {
          i = 0;
        }
        i = j | i;
        paramCanvas.restoreToCount(k);
      }
    }
    j = i;
    if (i == 0)
    {
      j = i;
      if (this.ai != null)
      {
        j = i;
        if (this.R.size() > 0)
        {
          j = i;
          if (this.ai.isRunning()) {
            j = 1;
          }
        }
      }
    }
    if (j != 0) {
      ﺑ.ʿ(this);
    }
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject = this.P.ˉ(paramView, paramInt);
    if (localObject != null) {
      return localObject;
    }
    View localView = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
    localObject = localView;
    if (localView == null)
    {
      localObject = localView;
      if (this.O != null)
      {
        localObject = localView;
        if (this.P != null)
        {
          ḷ();
          localObject = this.P.ˊ(paramView, paramInt, this.H, this.ar);
          ⁱ(false);
        }
      }
    }
    if (localObject != null) {
      return localObject;
    }
    return super.focusSearch(paramView, paramInt);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (this.P == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return this.P.ł();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (this.P == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return this.P.ˊ(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.P == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return this.P.ˎ(paramLayoutParams);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.U = true;
    this.W = false;
    if (this.P != null) {
      this.P.ʹ(this);
    }
    this.aw = false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.ai != null) {
      this.ai.ļ();
    }
    this.W = false;
    ṙ();
    this.U = false;
    if (this.P != null) {
      this.P.ˊ(this, this.H);
    }
    removeCallbacks(this.az);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int j = this.R.size();
    int i = 0;
    while (i < j)
    {
      ((aux)this.R.get(i)).ˊ(paramCanvas, this, this.ar);
      i += 1;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (ι(paramMotionEvent))
    {
      ῑ();
      return true;
    }
    boolean bool1 = this.P.ŗ();
    boolean bool2 = this.P.ſ();
    if (this.ᓴ == null) {
      this.ᓴ = VelocityTracker.obtain();
    }
    this.ᓴ.addMovement(paramMotionEvent);
    int j = ᵧ.ˊ(paramMotionEvent);
    int i = ᵧ.ˋ(paramMotionEvent);
    switch (j)
    {
    default: 
      break;
    case 0: 
      this.aj = ᵧ.ˋ(paramMotionEvent, 0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      this.am = i;
      this.ak = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      this.an = i;
      this.al = i;
      if (this.ℴ == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        ـ(1);
      }
      break;
    case 5: 
      this.aj = ᵧ.ˋ(paramMotionEvent, i);
      j = (int)(ᵧ.ˎ(paramMotionEvent, i) + 0.5F);
      this.am = j;
      this.ak = j;
      i = (int)(ᵧ.ˏ(paramMotionEvent, i) + 0.5F);
      this.an = i;
      this.al = i;
      break;
    case 2: 
      j = ᵧ.ˊ(paramMotionEvent, this.aj);
      if (j < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.aj + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i = (int)(ᵧ.ˎ(paramMotionEvent, j) + 0.5F);
      j = (int)(ᵧ.ˏ(paramMotionEvent, j) + 0.5F);
      if (this.ℴ != 1)
      {
        int m = i - this.ak;
        int k = j - this.al;
        j = 0;
        i = j;
        if (bool1)
        {
          i = j;
          if (Math.abs(m) > this.כ)
          {
            j = this.ak;
            int n = this.כ;
            if (m < 0) {
              i = -1;
            } else {
              i = 1;
            }
            this.am = (j + n * i);
            i = 1;
          }
        }
        j = i;
        if (bool2)
        {
          j = i;
          if (Math.abs(k) > this.כ)
          {
            j = this.al;
            m = this.כ;
            if (k < 0) {
              i = -1;
            } else {
              i = 1;
            }
            this.an = (j + m * i);
            j = 1;
          }
        }
        if (j != 0) {
          ـ(1);
        }
      }
      break;
    case 6: 
      ʿ(paramMotionEvent);
      break;
    case 1: 
      this.ᓴ.clear();
      break;
    case 3: 
      ῑ();
    }
    return this.ℴ == 1;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ḷ();
    氵();
    ⁱ(false);
    this.W = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.c_)
    {
      ḷ();
      丨();
      if (RecyclerView.ˉ.ˉ(this.ar))
      {
        RecyclerView.ˉ.ˋ(this.ar, true);
      }
      else
      {
        this.J.ﹹ();
        RecyclerView.ˉ.ˋ(this.ar, false);
      }
      this.c_ = false;
      ⁱ(false);
    }
    if (this.O != null) {
      this.ar.ʎ = this.O.getItemCount();
    } else {
      this.ar.ʎ = 0;
    }
    if (this.P == null) {
      ᐠ(paramInt1, paramInt2);
    } else {
      this.P.ˋ(this.H, this.ar, paramInt1, paramInt2);
    }
    RecyclerView.ˉ.ˋ(this.ar, false);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    this.I = ((SavedState)paramParcelable);
    super.onRestoreInstanceState(this.I.getSuperState());
    if ((this.P != null) && (this.I.bc != null)) {
      this.P.onRestoreInstanceState(this.I.bc);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (this.I != null)
    {
      SavedState.ˊ(localSavedState, this.I);
      return localSavedState;
    }
    if (this.P != null)
    {
      localSavedState.bc = this.P.onSaveInstanceState();
      return localSavedState;
    }
    localSavedState.bc = null;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      ῐ();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (ʾ(paramMotionEvent))
    {
      ῑ();
      return true;
    }
    boolean bool1 = this.P.ŗ();
    boolean bool2 = this.P.ſ();
    if (this.ᓴ == null) {
      this.ᓴ = VelocityTracker.obtain();
    }
    this.ᓴ.addMovement(paramMotionEvent);
    int j = ᵧ.ˊ(paramMotionEvent);
    int i = ᵧ.ˋ(paramMotionEvent);
    switch (j)
    {
    default: 
      break;
    case 0: 
      this.aj = ᵧ.ˋ(paramMotionEvent, 0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      this.am = i;
      this.ak = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      this.an = i;
      this.al = i;
      break;
    case 5: 
      this.aj = ᵧ.ˋ(paramMotionEvent, i);
      j = (int)(ᵧ.ˎ(paramMotionEvent, i) + 0.5F);
      this.am = j;
      this.ak = j;
      i = (int)(ᵧ.ˏ(paramMotionEvent, i) + 0.5F);
      this.an = i;
      this.al = i;
      break;
    case 2: 
      i = ᵧ.ˊ(paramMotionEvent, this.aj);
      if (i < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.aj + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int k = (int)(ᵧ.ˎ(paramMotionEvent, i) + 0.5F);
      int m = (int)(ᵧ.ˏ(paramMotionEvent, i) + 0.5F);
      if (this.ℴ != 1)
      {
        int i2 = k - this.ak;
        int n = m - this.al;
        j = 0;
        i = j;
        int i1;
        if (bool1)
        {
          i = j;
          if (Math.abs(i2) > this.כ)
          {
            j = this.ak;
            i1 = this.כ;
            if (i2 < 0) {
              i = -1;
            } else {
              i = 1;
            }
            this.am = (j + i1 * i);
            i = 1;
          }
        }
        j = i;
        if (bool2)
        {
          j = i;
          if (Math.abs(n) > this.כ)
          {
            j = this.al;
            i1 = this.כ;
            if (n < 0) {
              i = -1;
            } else {
              i = 1;
            }
            this.an = (j + i1 * i);
            j = 1;
          }
        }
        if (j != 0) {
          ـ(1);
        }
      }
      if (this.ℴ == 1)
      {
        i = this.am;
        j = this.an;
        if (bool1) {
          i = -(k - i);
        } else {
          i = 0;
        }
        if (bool2) {
          j = -(m - j);
        } else {
          j = 0;
        }
        if (ˆ(i, j)) {
          getParent().requestDisallowInterceptTouchEvent(true);
        }
      }
      this.am = k;
      this.an = m;
      break;
    case 6: 
      ʿ(paramMotionEvent);
      break;
    case 1: 
      this.ᓴ.computeCurrentVelocity(1000, this.ap);
      float f1;
      if (bool1) {
        f1 = -ﹻ.ˊ(this.ᓴ, this.aj);
      } else {
        f1 = 0.0F;
      }
      float f2;
      if (bool2) {
        f2 = -ﹻ.ˋ(this.ᓴ, this.aj);
      } else {
        f2 = 0.0F;
      }
      if (((f1 == 0.0F) && (f2 == 0.0F)) || (!ˇ((int)f1, (int)f2))) {
        ـ(0);
      }
      this.ᓴ.clear();
      ỉ();
      break;
    case 3: 
      ῑ();
    }
    return true;
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    RecyclerView.ˑ localˑ = ᗮ(paramView);
    if (localˑ != null) {
      if (localˑ.Ῐ()) {
        localˑ.ᵨ();
      } else if (!localˑ.ᴐ()) {
        throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localˑ);
      }
    }
    ﾟ(paramView);
    super.removeDetachedView(paramView, paramBoolean);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    if ((!this.P.ˊ(this, this.ar, paramView1, paramView2)) && (paramView2 != null))
    {
      this.ﹽ.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      offsetDescendantRectToMyCoords(paramView2, this.ﹽ);
      offsetRectIntoDescendantCoords(paramView1, this.ﹽ);
      Rect localRect = this.ﹽ;
      boolean bool;
      if (!this.W) {
        bool = true;
      } else {
        bool = false;
      }
      requestChildRectangleOnScreen(paramView1, localRect, bool);
    }
    super.requestChildFocus(paramView1, paramView2);
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return this.P.ˊ(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestLayout()
  {
    if (!this.a_)
    {
      super.requestLayout();
      return;
    }
    this.b_ = true;
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (this.P == null)
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    boolean bool1 = this.P.ŗ();
    boolean bool2 = this.P.ſ();
    if ((bool1) || (bool2))
    {
      if (!bool1) {
        paramInt1 = 0;
      }
      if (!bool2) {
        paramInt2 = 0;
      }
      ˆ(paramInt1, paramInt2);
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
  }
  
  public void setAccessibilityDelegateCompat(ﾉ paramﾉ)
  {
    this.ax = paramﾉ;
    ﺑ.ˊ(this, this.ax);
  }
  
  public void setAdapter(if paramif)
  {
    ˊ(paramif, false, true);
    requestLayout();
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != this.M) {
      ῐ();
    }
    this.M = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.W) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    this.V = paramBoolean;
  }
  
  public void setItemAnimator(RecyclerView.ˎ paramˎ)
  {
    if (this.ai != null)
    {
      this.ai.ļ();
      this.ai.ˊ(null);
    }
    this.ai = paramˎ;
    if (this.ai != null) {
      this.ai.ˊ(this.av);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    this.H.ᔅ(paramInt);
  }
  
  public void setLayoutManager(RecyclerView.ʻ paramʻ)
  {
    if (paramʻ == this.P) {
      return;
    }
    if (this.P != null)
    {
      if (this.U) {
        this.P.ˊ(this, this.H);
      }
      this.P.ﾞ(null);
    }
    this.H.clear();
    this.K.ﺫ();
    this.P = paramʻ;
    if (paramʻ != null)
    {
      if (paramʻ.aL != null) {
        throw new IllegalArgumentException("LayoutManager " + paramʻ + " is already attached to a RecyclerView: " + paramʻ.aL);
      }
      this.P.ﾞ(this);
      if (this.U) {
        this.P.ʹ(this);
      }
    }
    requestLayout();
  }
  
  public void setOnScrollListener(RecyclerView.ͺ paramͺ)
  {
    this.as = paramͺ;
  }
  
  public void setRecycledViewPool(RecyclerView.ι paramι)
  {
    this.H.setRecycledViewPool(paramι);
  }
  
  public void setRecyclerListener(RecyclerView.ʿ paramʿ)
  {
    this.Q = paramʿ;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0: 
      this.כ = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    this.כ = ᒾ.ˊ(localViewConfiguration);
  }
  
  public void setViewCacheExtension(RecyclerView.ˌ paramˌ)
  {
    this.H.setViewCacheExtension(paramˌ);
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    if (this.P == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    if (!this.P.ŗ()) {
      paramInt1 = 0;
    }
    if (!this.P.ſ()) {
      paramInt2 = 0;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      this.aq.smoothScrollBy(paramInt1, paramInt2);
    }
  }
  
  long ʼ(RecyclerView.ˑ paramˑ)
  {
    if (this.O.hasStableIds()) {
      return paramˑ.getItemId();
    }
    return paramˑ.Ύ;
  }
  
  public void ˀ(int paramInt)
  {
    int j = this.K.getChildCount();
    int i = 0;
    while (i < j)
    {
      this.K.getChildAt(i).offsetTopAndBottom(paramInt);
      i += 1;
    }
  }
  
  public void ˁ(int paramInt)
  {
    int j = this.K.getChildCount();
    int i = 0;
    while (i < j)
    {
      this.K.getChildAt(i).offsetLeftAndRight(paramInt);
      i += 1;
    }
  }
  
  boolean ˆ(int paramInt1, int paramInt2)
  {
    int i = 0;
    int i3 = 0;
    int k = 0;
    int i1 = 0;
    int j = 0;
    int i2 = 0;
    int m = 0;
    int n = 0;
    ᵟ();
    if (this.O != null)
    {
      ḷ();
      this.ad = true;
      i = i3;
      j = i2;
      if (paramInt1 != 0)
      {
        j = this.P.ˊ(paramInt1, this.H, this.ar);
        i = paramInt1 - j;
      }
      k = i1;
      m = n;
      if (paramInt2 != 0)
      {
        m = this.P.ˋ(paramInt2, this.H, this.ar);
        k = paramInt2 - m;
      }
      if (‿())
      {
        i1 = this.K.getChildCount();
        n = 0;
        while (n < i1)
        {
          View localView = this.K.getChildAt(n);
          Object localObject = ᵣ(localView);
          if ((localObject != null) && (((RecyclerView.ˑ)localObject).bH != null))
          {
            localObject = ((RecyclerView.ˑ)localObject).bH;
            if (localObject != null) {
              localObject = ((RecyclerView.ˑ)localObject).bB;
            } else {
              localObject = null;
            }
            if (localObject != null)
            {
              i2 = localView.getLeft();
              i3 = localView.getTop();
              if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
                ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
              }
            }
          }
          n += 1;
        }
      }
      this.ad = false;
      ⁱ(false);
    }
    if (!this.R.isEmpty()) {
      invalidate();
    }
    if (ﺑ.ͺ(this) != 2)
    {
      ˮ(paramInt1, paramInt2);
      ˡ(i, k);
    }
    if ((j != 0) || (m != 0)) {
      ᵕ(j, m);
    }
    if (!awakenScrollBars()) {
      invalidate();
    }
    return (j != 0) || (m != 0);
  }
  
  public boolean ˇ(int paramInt1, int paramInt2)
  {
    if (this.P == null)
    {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return false;
    }
    boolean bool1 = this.P.ŗ();
    boolean bool2 = this.P.ſ();
    int i;
    if (bool1)
    {
      i = paramInt1;
      if (Math.abs(paramInt1) >= this.ao) {}
    }
    else
    {
      i = 0;
    }
    if (bool2)
    {
      paramInt1 = paramInt2;
      if (Math.abs(paramInt2) >= this.ao) {}
    }
    else
    {
      paramInt1 = 0;
    }
    paramInt2 = Math.max(-this.ap, Math.min(i, this.ap));
    paramInt1 = Math.max(-this.ap, Math.min(paramInt1, this.ap));
    if ((paramInt2 != 0) || (paramInt1 != 0))
    {
      this.aq.ᒽ(paramInt2, paramInt1);
      return true;
    }
    return false;
  }
  
  public RecyclerView.ˑ ˈ(int paramInt, boolean paramBoolean)
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(i));
      if ((localˑ != null) && (!localˑ.isRemoved())) {
        if (paramBoolean)
        {
          if (localˑ.Ύ == paramInt) {
            return localˑ;
          }
        }
        else if (localˑ.getLayoutPosition() == paramInt) {
          return localˑ;
        }
      }
      i += 1;
    }
    return null;
  }
  
  public void ˊ(aux paramaux)
  {
    ˊ(paramaux, -1);
  }
  
  public void ˊ(aux paramaux, int paramInt)
  {
    if (this.P != null) {
      this.P.ˎ("Cannot add item decoration during a scroll  or layout");
    }
    if (this.R.isEmpty()) {
      setWillNotDraw(false);
    }
    if (paramInt < 0) {
      this.R.add(paramaux);
    } else {
      this.R.add(paramInt, paramaux);
    }
    灬();
    requestLayout();
  }
  
  public void ˋ(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(i));
      if ((localˑ != null) && (!localˑ.ᴐ())) {
        if (localˑ.Ύ >= paramInt1 + paramInt2)
        {
          localˑ.ˌ(-paramInt2, paramBoolean);
          RecyclerView.ˉ.ˊ(this.ar, true);
        }
        else if (localˑ.Ύ >= paramInt1)
        {
          localˑ.ˏ(paramInt1 - 1, -paramInt2, paramBoolean);
          RecyclerView.ˉ.ˊ(this.ar, true);
        }
      }
      i += 1;
    }
    this.H.ˋ(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  void ˎ(String paramString)
  {
    if (this.ad)
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  void ۥ(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      ἰ();
      this.ae.ˇ(-paramInt1);
    }
    else if (paramInt1 > 0)
    {
      ἱ();
      this.ag.ˇ(paramInt1);
    }
    if (paramInt2 < 0)
    {
      ὶ();
      this.af.ˇ(-paramInt2);
    }
    else if (paramInt2 > 0)
    {
      ί();
      this.ah.ˇ(paramInt2);
    }
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      ﺑ.ʿ(this);
    }
  }
  
  public void ᐩ(int paramInt1, int paramInt2)
  {
    int n = this.K.ﻴ();
    int i;
    int j;
    int k;
    if (paramInt1 < paramInt2)
    {
      i = paramInt1;
      j = paramInt2;
      k = -1;
    }
    else
    {
      i = paramInt2;
      j = paramInt1;
      k = 1;
    }
    int m = 0;
    while (m < n)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(m));
      if ((localˑ != null) && (localˑ.Ύ >= i) && (localˑ.Ύ <= j))
      {
        if (localˑ.Ύ == paramInt1) {
          localˑ.ˌ(paramInt2 - paramInt1, false);
        } else {
          localˑ.ˌ(k, false);
        }
        RecyclerView.ˉ.ˊ(this.ar, true);
      }
      m += 1;
    }
    this.H.ᐩ(paramInt1, paramInt2);
    requestLayout();
  }
  
  public void ᑊ(int paramInt1, int paramInt2)
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(i));
      if ((localˑ != null) && (!localˑ.ᴐ()) && (localˑ.Ύ >= paramInt1))
      {
        localˑ.ˌ(paramInt2, false);
        RecyclerView.ˉ.ˊ(this.ar, true);
      }
      i += 1;
    }
    this.H.ᑊ(paramInt1, paramInt2);
    requestLayout();
  }
  
  public void ᕀ(int paramInt1, int paramInt2)
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      View localView = this.K.ᵌ(i);
      RecyclerView.ˑ localˑ = ᗮ(localView);
      if ((localˑ != null) && (!localˑ.ᴐ()) && (localˑ.Ύ >= paramInt1) && (localˑ.Ύ < paramInt1 + paramInt2))
      {
        localˑ.addFlags(2);
        if (‿()) {
          localˑ.addFlags(64);
        }
        ((RecyclerView.ʼ)localView.getLayoutParams()).aQ = true;
      }
      i += 1;
    }
    this.H.ᕀ(paramInt1, paramInt2);
  }
  
  public int ᴶ(View paramView)
  {
    paramView = ᗮ(paramView);
    if (paramView != null) {
      return paramView.getAdapterPosition();
    }
    return -1;
  }
  
  public int ᴸ(View paramView)
  {
    paramView = ᗮ(paramView);
    if (paramView != null) {
      return paramView.getLayoutPosition();
    }
    return -1;
  }
  
  void ᴿ()
  {
    this.J = new ᴗ(new ﺜ(this));
  }
  
  public void ᵀ(View paramView) {}
  
  public if ᵇ()
  {
    return this.O;
  }
  
  public void ᵋ(View paramView) {}
  
  public RecyclerView.ʻ ᵖ()
  {
    return this.P;
  }
  
  Rect ᵗ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    if (!localʼ.aQ) {
      return localʼ.aP;
    }
    Rect localRect = localʼ.aP;
    localRect.set(0, 0, 0, 0);
    int j = this.R.size();
    int i = 0;
    while (i < j)
    {
      this.ﹽ.set(0, 0, 0, 0);
      ((aux)this.R.get(i)).ˊ(this.ﹽ, paramView, this, this.ar);
      localRect.left += this.ﹽ.left;
      localRect.top += this.ﹽ.top;
      localRect.right += this.ﹽ.right;
      localRect.bottom += this.ﹽ.bottom;
      i += 1;
    }
    localʼ.aQ = false;
    return localRect;
  }
  
  public RecyclerView.ˑ ᵣ(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return ᗮ(paramView);
  }
  
  public void ḷ()
  {
    if (!this.a_)
    {
      this.a_ = true;
      this.b_ = false;
    }
  }
  
  public void ṙ()
  {
    ـ(0);
    ṛ();
  }
  
  void ἰ()
  {
    if (this.ae != null) {
      return;
    }
    this.ae = new ܝ(getContext());
    if (this.M)
    {
      this.ae.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.ae.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ἱ()
  {
    if (this.ag != null) {
      return;
    }
    this.ag = new ܝ(getContext());
    if (this.M)
    {
      this.ag.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.ag.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ὶ()
  {
    if (this.af != null) {
      return;
    }
    this.af = new ܝ(getContext());
    if (this.M)
    {
      this.af.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.af.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void ί()
  {
    if (this.ah != null) {
      return;
    }
    this.ah = new ܝ(getContext());
    if (this.M)
    {
      this.ah.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.ah.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void ῐ()
  {
    this.ah = null;
    this.af = null;
    this.ag = null;
    this.ae = null;
  }
  
  public void ⁱ(boolean paramBoolean)
  {
    if (this.a_)
    {
      if ((paramBoolean) && (this.b_) && (this.P != null) && (this.O != null)) {
        氵();
      }
      this.a_ = false;
      this.b_ = false;
    }
  }
  
  public void 氵()
  {
    if (this.O == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (this.P == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    this.L.clear();
    ḷ();
    this.ad = true;
    丨();
    Object localObject2 = this.ar;
    if ((RecyclerView.ˉ.ˌ(this.ar)) && (this.au) && (‿())) {
      localObject1 = new ᒢ();
    } else {
      localObject1 = null;
    }
    ((RecyclerView.ˉ)localObject2).bp = ((ᒢ)localObject1);
    this.au = false;
    this.at = false;
    Object localObject1 = null;
    RecyclerView.ˉ.ˋ(this.ar, RecyclerView.ˉ.ˉ(this.ar));
    this.ar.ʎ = this.O.getItemCount();
    ˋ(this.ay);
    int j;
    int i;
    Object localObject3;
    if (RecyclerView.ˉ.ˌ(this.ar))
    {
      this.ar.bn.clear();
      this.ar.bo.clear();
      j = this.K.getChildCount();
      i = 0;
      while (i < j)
      {
        localObject2 = ᗮ(this.K.getChildAt(i));
        if ((!((RecyclerView.ˑ)localObject2).ᴐ()) && ((!((RecyclerView.ˑ)localObject2).Ḯ()) || (this.O.hasStableIds())))
        {
          localObject3 = ((RecyclerView.ˑ)localObject2).bB;
          this.ar.bn.put(localObject2, new RecyclerView.ᐝ((RecyclerView.ˑ)localObject2, ((View)localObject3).getLeft(), ((View)localObject3).getTop(), ((View)localObject3).getRight(), ((View)localObject3).getBottom()));
        }
        i += 1;
      }
    }
    long l;
    boolean bool;
    if (RecyclerView.ˉ.ˉ(this.ar))
    {
      ﭙ();
      if (this.ar.bp != null)
      {
        j = this.K.getChildCount();
        i = 0;
        while (i < j)
        {
          localObject1 = ᗮ(this.K.getChildAt(i));
          if ((((RecyclerView.ˑ)localObject1).Ἱ()) && (!((RecyclerView.ˑ)localObject1).isRemoved()) && (!((RecyclerView.ˑ)localObject1).ᴐ()))
          {
            l = ʼ((RecyclerView.ˑ)localObject1);
            this.ar.bp.put(Long.valueOf(l), localObject1);
            this.ar.bn.remove(localObject1);
          }
          i += 1;
        }
      }
      bool = RecyclerView.ˉ.ˍ(this.ar);
      RecyclerView.ˉ.ˊ(this.ar, false);
      this.P.ˊ(this.H, this.ar);
      RecyclerView.ˉ.ˊ(this.ar, bool);
      localObject2 = new ᒢ();
      i = 0;
      while (i < this.K.getChildCount())
      {
        int m = 0;
        localObject1 = this.K.getChildAt(i);
        if (!ᗮ((View)localObject1).ᴐ())
        {
          j = 0;
          int k;
          for (;;)
          {
            k = m;
            if (j >= this.ar.bn.size()) {
              break;
            }
            if (((RecyclerView.ˑ)this.ar.bn.keyAt(j)).bB == localObject1)
            {
              k = 1;
              break;
            }
            j += 1;
          }
          if (k == 0) {
            ((ᒢ)localObject2).put(localObject1, new Rect(((View)localObject1).getLeft(), ((View)localObject1).getTop(), ((View)localObject1).getRight(), ((View)localObject1).getBottom()));
          }
        }
        i += 1;
      }
      ﮂ();
      this.J.ﯧ();
    }
    else
    {
      ﮂ();
      this.J.ﹹ();
      localObject2 = localObject1;
      if (this.ar.bp != null)
      {
        j = this.K.getChildCount();
        i = 0;
        for (;;)
        {
          localObject2 = localObject1;
          if (i >= j) {
            break;
          }
          localObject2 = ᗮ(this.K.getChildAt(i));
          if ((((RecyclerView.ˑ)localObject2).Ἱ()) && (!((RecyclerView.ˑ)localObject2).isRemoved()) && (!((RecyclerView.ˑ)localObject2).ᴐ()))
          {
            l = ʼ((RecyclerView.ˑ)localObject2);
            this.ar.bp.put(Long.valueOf(l), localObject2);
            this.ar.bn.remove(localObject2);
          }
          i += 1;
        }
      }
    }
    this.ar.ʎ = this.O.getItemCount();
    RecyclerView.ˉ.ˋ(this.ar, 0);
    RecyclerView.ˉ.ˋ(this.ar, false);
    this.P.ˊ(this.H, this.ar);
    RecyclerView.ˉ.ˊ(this.ar, false);
    this.I = null;
    localObject1 = this.ar;
    if ((RecyclerView.ˉ.ˌ(this.ar)) && (this.ai != null)) {
      bool = true;
    } else {
      bool = false;
    }
    RecyclerView.ˉ.ˎ((RecyclerView.ˉ)localObject1, bool);
    if (RecyclerView.ˉ.ˌ(this.ar))
    {
      if (this.ar.bp != null) {
        localObject1 = new ᒢ();
      } else {
        localObject1 = null;
      }
      j = this.K.getChildCount();
      i = 0;
      Object localObject4;
      while (i < j)
      {
        localObject3 = ᗮ(this.K.getChildAt(i));
        if (!((RecyclerView.ˑ)localObject3).ᴐ())
        {
          localObject4 = ((RecyclerView.ˑ)localObject3).bB;
          l = ʼ((RecyclerView.ˑ)localObject3);
          if ((localObject1 != null) && (this.ar.bp.get(Long.valueOf(l)) != null)) {
            ((ᒢ)localObject1).put(Long.valueOf(l), localObject3);
          } else {
            this.ar.bo.put(localObject3, new RecyclerView.ᐝ((RecyclerView.ˑ)localObject3, ((View)localObject4).getLeft(), ((View)localObject4).getTop(), ((View)localObject4).getRight(), ((View)localObject4).getBottom()));
          }
        }
        i += 1;
      }
      ˊ((ᒢ)localObject2);
      i = this.ar.bn.size() - 1;
      while (i >= 0)
      {
        localObject3 = (RecyclerView.ˑ)this.ar.bn.keyAt(i);
        if (!this.ar.bo.containsKey(localObject3))
        {
          localObject3 = (RecyclerView.ᐝ)this.ar.bn.valueAt(i);
          this.ar.bn.removeAt(i);
          localObject4 = ((RecyclerView.ᐝ)localObject3).ᓮ.bB;
          this.H.ⁱ(((RecyclerView.ᐝ)localObject3).ᓮ);
          ˊ((RecyclerView.ᐝ)localObject3);
        }
        i -= 1;
      }
      i = this.ar.bo.size();
      if (i > 0)
      {
        i -= 1;
        while (i >= 0)
        {
          localObject4 = (RecyclerView.ˑ)this.ar.bo.keyAt(i);
          RecyclerView.ᐝ localᐝ = (RecyclerView.ᐝ)this.ar.bo.valueAt(i);
          if ((this.ar.bn.isEmpty()) || (!this.ar.bn.containsKey(localObject4)))
          {
            this.ar.bo.removeAt(i);
            if (localObject2 != null) {
              localObject3 = (Rect)((ᒢ)localObject2).get(((RecyclerView.ˑ)localObject4).bB);
            } else {
              localObject3 = null;
            }
            ˊ((RecyclerView.ˑ)localObject4, (Rect)localObject3, localᐝ.left, localᐝ.top);
          }
          i -= 1;
        }
      }
      j = this.ar.bo.size();
      i = 0;
      while (i < j)
      {
        localObject2 = (RecyclerView.ˑ)this.ar.bo.keyAt(i);
        localObject3 = (RecyclerView.ᐝ)this.ar.bo.valueAt(i);
        localObject4 = (RecyclerView.ᐝ)this.ar.bn.get(localObject2);
        if ((localObject4 != null) && (localObject3 != null) && ((((RecyclerView.ᐝ)localObject4).left != ((RecyclerView.ᐝ)localObject3).left) || (((RecyclerView.ᐝ)localObject4).top != ((RecyclerView.ᐝ)localObject3).top)))
        {
          ((RecyclerView.ˑ)localObject2).setIsRecyclable(false);
          if (this.ai.ˊ((RecyclerView.ˑ)localObject2, ((RecyclerView.ᐝ)localObject4).left, ((RecyclerView.ᐝ)localObject4).top, ((RecyclerView.ᐝ)localObject3).left, ((RecyclerView.ᐝ)localObject3).top)) {
            ⁀();
          }
        }
        i += 1;
      }
      if (this.ar.bp != null) {
        i = this.ar.bp.size();
      } else {
        i = 0;
      }
      i -= 1;
      while (i >= 0)
      {
        l = ((Long)this.ar.bp.keyAt(i)).longValue();
        localObject2 = (RecyclerView.ˑ)this.ar.bp.get(Long.valueOf(l));
        localObject3 = ((RecyclerView.ˑ)localObject2).bB;
        if ((!((RecyclerView.ˑ)localObject2).ᴐ()) && (RecyclerView.ʾ.ᐝ(this.H) != null) && (RecyclerView.ʾ.ᐝ(this.H).contains(localObject2))) {
          ˊ((RecyclerView.ˑ)localObject2, (RecyclerView.ˑ)((ᒢ)localObject1).get(Long.valueOf(l)));
        }
        i -= 1;
      }
    }
    ⁱ(false);
    this.P.ˎ(this.H);
    RecyclerView.ˉ.ˎ(this.ar, this.ar.ʎ);
    this.ac = false;
    RecyclerView.ˉ.ˎ(this.ar, false);
    RecyclerView.ˉ.ˏ(this.ar, false);
    this.ad = false;
    RecyclerView.ʻ.ˊ(this.P, false);
    if (RecyclerView.ʾ.ᐝ(this.H) != null) {
      RecyclerView.ʾ.ᐝ(this.H).clear();
    }
    this.ar.bp = null;
    if (ᐣ(this.ay[0], this.ay[1])) {
      ᵕ(0, 0);
    }
  }
  
  void 灬()
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.ʼ)this.K.ᵌ(i).getLayoutParams()).aQ = true;
      i += 1;
    }
    this.H.灬();
  }
  
  void ﭙ()
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(i));
      if (!localˑ.ᴐ()) {
        localˑ.ᴄ();
      }
      i += 1;
    }
  }
  
  void ﮂ()
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(i));
      if (!localˑ.ᴐ()) {
        localˑ.ᕻ();
      }
      i += 1;
    }
    this.H.ﮂ();
  }
  
  public void ﮄ()
  {
    int j = this.K.getChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.getChildAt(i));
      if ((localˑ != null) && (!localˑ.ᴐ())) {
        if ((localˑ.isRemoved()) || (localˑ.Ḯ()))
        {
          requestLayout();
        }
        else if (localˑ.Ἰ())
        {
          int k = this.O.getItemViewType(localˑ.Ύ);
          if (localˑ.getItemViewType() == k)
          {
            if ((!localˑ.Ἱ()) || (!‿())) {
              this.O.ˋ(localˑ, localˑ.Ύ);
            } else {
              requestLayout();
            }
          }
          else
          {
            localˑ.addFlags(4);
            requestLayout();
          }
        }
      }
      i += 1;
    }
  }
  
  public void ﹴ(int paramInt)
  {
    ṙ();
    if (this.P == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    this.P.ﹴ(paramInt);
    awakenScrollBars();
  }
  
  void ﺋ()
  {
    int j = this.K.ﻴ();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = ᗮ(this.K.ᵌ(i));
      if ((localˑ != null) && (!localˑ.ᴐ())) {
        localˑ.addFlags(6);
      }
      i += 1;
    }
    灬();
    this.H.ﺋ();
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new ﻟ();
    Parcelable bc;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      this.bc = paramParcel.readParcelable(RecyclerView.ʻ.class.getClassLoader());
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    private void ˊ(SavedState paramSavedState)
    {
      this.bc = paramSavedState.bc;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(this.bc, 0);
    }
  }
  
  public static abstract class aux
  {
    @Deprecated
    public void ˊ(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void ˊ(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ˉ paramˉ)
    {
      ˊ(paramCanvas, paramRecyclerView);
    }
    
    @Deprecated
    public void ˊ(Rect paramRect, int paramInt, RecyclerView paramRecyclerView)
    {
      paramRect.set(0, 0, 0, 0);
    }
    
    public void ˊ(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.ˉ paramˉ)
    {
      ˊ(paramRect, ((RecyclerView.ʼ)paramView.getLayoutParams()).Ј(), paramRecyclerView);
    }
    
    @Deprecated
    public void ˋ(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void ˋ(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ˉ paramˉ)
    {
      ˋ(paramCanvas, paramRecyclerView);
    }
  }
  
  class con
    extends RecyclerView.ˋ
  {
    private con() {}
    
    public void onChanged()
    {
      RecyclerView.this.ˎ(null);
      if (RecyclerView.ʻ(RecyclerView.this).hasStableIds())
      {
        RecyclerView.ˉ.ˊ(RecyclerView.this.ar, true);
        RecyclerView.ι(RecyclerView.this);
      }
      else
      {
        RecyclerView.ˉ.ˊ(RecyclerView.this.ar, true);
        RecyclerView.ι(RecyclerView.this);
      }
      if (!RecyclerView.this.J.ﯿ()) {
        RecyclerView.this.requestLayout();
      }
    }
    
    void כ()
    {
      if ((RecyclerView.ʾ(RecyclerView.this)) && (RecyclerView.ʿ(RecyclerView.this)) && (RecyclerView.ˈ(RecyclerView.this)))
      {
        ﺑ.ˊ(RecyclerView.this, RecyclerView.ˉ(RecyclerView.this));
        return;
      }
      RecyclerView.ˎ(RecyclerView.this, true);
      RecyclerView.this.requestLayout();
    }
    
    public void ᐟ(int paramInt1, int paramInt2)
    {
      RecyclerView.this.ˎ(null);
      if (RecyclerView.this.J.ՙ(paramInt1, paramInt2)) {
        כ();
      }
    }
    
    public void יּ(int paramInt1, int paramInt2)
    {
      RecyclerView.this.ˎ(null);
      if (RecyclerView.this.J.ʹ(paramInt1, paramInt2)) {
        כ();
      }
    }
  }
  
  public static abstract class if<VH extends RecyclerView.ˑ>
  {
    private final RecyclerView.ˊ aC = new RecyclerView.ˊ();
    private boolean aD = false;
    
    public abstract int getItemCount();
    
    public long getItemId(int paramInt)
    {
      return -1L;
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public final boolean hasStableIds()
    {
      return this.aD;
    }
    
    public final void notifyDataSetChanged()
    {
      this.aC.notifyChanged();
    }
    
    public void ʾ(VH paramVH) {}
    
    public void ʿ(VH paramVH) {}
    
    public void ˊ(RecyclerView.ˋ paramˋ)
    {
      this.aC.registerObserver(paramˋ);
    }
    
    public abstract void ˊ(VH paramVH, int paramInt);
    
    public void ˋ(RecyclerView.ˋ paramˋ)
    {
      this.aC.unregisterObserver(paramˋ);
    }
    
    public final void ˋ(VH paramVH, int paramInt)
    {
      paramVH.Ύ = paramInt;
      if (hasStableIds()) {
        paramVH.bD = getItemId(paramInt);
      }
      ˊ(paramVH, paramInt);
      paramVH.setFlags(1, 519);
    }
    
    public abstract VH ˎ(ViewGroup paramViewGroup, int paramInt);
    
    public final VH ˏ(ViewGroup paramViewGroup, int paramInt)
    {
      paramViewGroup = ˎ(paramViewGroup, paramInt);
      paramViewGroup.bE = paramInt;
      return paramViewGroup;
    }
    
    public final void ˢ(int paramInt)
    {
      this.aC.ᵣ(paramInt, 1);
    }
    
    public final void ˤ(int paramInt)
    {
      this.aC.יִ(paramInt, 1);
    }
    
    public void ͺ(VH paramVH) {}
    
    public void ᐨ(RecyclerView paramRecyclerView) {}
    
    public final void ᵣ(int paramInt1, int paramInt2)
    {
      this.aC.ᵣ(paramInt1, paramInt2);
    }
    
    public boolean ι(VH paramVH)
    {
      return false;
    }
    
    public final void יִ(int paramInt1, int paramInt2)
    {
      this.aC.יִ(paramInt1, paramInt2);
    }
    
    public void ﹳ(RecyclerView paramRecyclerView) {}
    
    public void ﹶ(boolean paramBoolean)
    {
      if (ﾉ()) {
        throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
      }
      this.aD = paramBoolean;
    }
    
    public final boolean ﾉ()
    {
      return this.aC.ﾉ();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * JD-Core Version:    0.7.0.1
 */