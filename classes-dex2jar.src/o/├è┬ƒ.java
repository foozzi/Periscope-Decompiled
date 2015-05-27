package o;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public class ʟ
{
  private static final Interpolator ﭙ = new ʰ();
  private int ԇ;
  private float[] ה;
  private int כ;
  private float[] ٲ;
  private float[] ٳ;
  private float[] ژ;
  private int[] ں;
  private int[] ܥ;
  private int[] ধ;
  private int ઽ = -1;
  private int ร;
  private float ใ;
  private float Ꭲ;
  private int Ꭸ;
  private int Ꮠ;
  private ⅼ ᐜ;
  private final ʟ.if ᒩ;
  private VelocityTracker ᓴ;
  private View ᓶ;
  private boolean ᓷ;
  private final ViewGroup ᓸ;
  private final Runnable ᓹ = new г(this);
  
  private ʟ(Context paramContext, ViewGroup paramViewGroup, ʟ.if paramif)
  {
    if (paramViewGroup == null) {
      throw new IllegalArgumentException("Parent view may not be null");
    }
    if (paramif == null) {
      throw new IllegalArgumentException("Callback may not be null");
    }
    this.ᓸ = paramViewGroup;
    this.ᒩ = paramif;
    paramViewGroup = ViewConfiguration.get(paramContext);
    this.Ꭸ = ((int)(20.0F * paramContext.getResources().getDisplayMetrics().density + 0.5F));
    this.כ = paramViewGroup.getScaledTouchSlop();
    this.ใ = paramViewGroup.getScaledMaximumFlingVelocity();
    this.Ꭲ = paramViewGroup.getScaledMinimumFlingVelocity();
    this.ᐜ = ⅼ.ˊ(paramContext, ﭙ);
  }
  
  private void ʾ(float paramFloat1, float paramFloat2)
  {
    this.ᓷ = true;
    this.ᒩ.ˋ(this.ᓶ, paramFloat1, paramFloat2);
    this.ᓷ = false;
    if (this.ԇ == 1) {
      ᑊ(0);
    }
  }
  
  private int ˉ(int paramInt1, int paramInt2)
  {
    int j = 0;
    if (paramInt1 < this.ᓸ.getLeft() + this.Ꭸ) {
      j = 1;
    }
    int i = j;
    if (paramInt2 < this.ᓸ.getTop() + this.Ꭸ) {
      i = j | 0x4;
    }
    j = i;
    if (paramInt1 > this.ᓸ.getRight() - this.Ꭸ) {
      j = i | 0x2;
    }
    paramInt1 = j;
    if (paramInt2 > this.ᓸ.getBottom() - this.Ꭸ) {
      paramInt1 = j | 0x8;
    }
    return paramInt1;
  }
  
  private float ˊ(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.47123891676382D));
  }
  
  private int ˊ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = ᐝ(paramInt3, (int)this.Ꭲ, (int)this.ใ);
    paramInt4 = ᐝ(paramInt4, (int)this.Ꭲ, (int)this.ใ);
    int i = Math.abs(paramInt1);
    int j = Math.abs(paramInt2);
    int k = Math.abs(paramInt3);
    int m = Math.abs(paramInt4);
    int n = k + m;
    int i1 = i + j;
    float f1;
    if (paramInt3 != 0) {
      f1 = k / n;
    } else {
      f1 = i / i1;
    }
    float f2;
    if (paramInt4 != 0) {
      f2 = m / n;
    } else {
      f2 = j / i1;
    }
    paramInt1 = ˏ(paramInt1, paramInt3, this.ᒩ.ʳ(paramView));
    paramInt2 = ˏ(paramInt2, paramInt4, this.ᒩ.ʴ(paramView));
    return (int)(paramInt1 * f1 + paramInt2 * f2);
  }
  
  public static ʟ ˊ(ViewGroup paramViewGroup, float paramFloat, ʟ.if paramif)
  {
    paramViewGroup = ˊ(paramViewGroup, paramif);
    paramViewGroup.כ = ((int)(paramViewGroup.כ * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  public static ʟ ˊ(ViewGroup paramViewGroup, ʟ.if paramif)
  {
    return new ʟ(paramViewGroup.getContext(), paramViewGroup, paramif);
  }
  
  private void ˊ(float paramFloat1, float paramFloat2, int paramInt)
  {
    ᐣ(paramInt);
    float[] arrayOfFloat = this.ה;
    this.ٳ[paramInt] = paramFloat1;
    arrayOfFloat[paramInt] = paramFloat1;
    arrayOfFloat = this.ٲ;
    this.ژ[paramInt] = paramFloat2;
    arrayOfFloat[paramInt] = paramFloat2;
    this.ں[paramInt] = ˉ((int)paramFloat1, (int)paramFloat2);
    this.ร |= 1 << paramInt;
  }
  
  private boolean ˊ(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if (((this.ں[paramInt1] & paramInt2) != paramInt2) || ((this.Ꮠ & paramInt2) == 0) || ((this.ধ[paramInt1] & paramInt2) == paramInt2) || ((this.ܥ[paramInt1] & paramInt2) == paramInt2) || ((paramFloat1 <= this.כ) && (paramFloat2 <= this.כ))) {
      return false;
    }
    if ((paramFloat1 < 0.5F * paramFloat2) && (this.ᒩ.ᵕ(paramInt2)))
    {
      int[] arrayOfInt = this.ধ;
      arrayOfInt[paramInt1] |= paramInt2;
      return false;
    }
    return ((this.ܥ[paramInt1] & paramInt2) == 0) && (paramFloat1 > this.כ);
  }
  
  private boolean ˊ(View paramView, float paramFloat1, float paramFloat2)
  {
    if (paramView == null) {
      return false;
    }
    int i;
    if (this.ᒩ.ʳ(paramView) > 0) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (this.ᒩ.ʴ(paramView) > 0) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i != 0) && (j != 0)) {
      return paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 > this.כ * this.כ;
    }
    if (i != 0) {
      return Math.abs(paramFloat1) > this.כ;
    }
    if (j != 0) {
      return Math.abs(paramFloat2) > this.כ;
    }
    return false;
  }
  
  private void ˋ(float paramFloat1, float paramFloat2, int paramInt)
  {
    int j = 0;
    if (ˊ(paramFloat1, paramFloat2, paramInt, 1)) {
      j = 1;
    }
    int i = j;
    if (ˊ(paramFloat2, paramFloat1, paramInt, 4)) {
      i = j | 0x4;
    }
    j = i;
    if (ˊ(paramFloat1, paramFloat2, paramInt, 2)) {
      j = i | 0x2;
    }
    i = j;
    if (ˊ(paramFloat2, paramFloat1, paramInt, 8)) {
      i = j | 0x8;
    }
    if (i != 0)
    {
      int[] arrayOfInt = this.ܥ;
      arrayOfInt[paramInt] |= i;
      this.ᒩ.ˍ(i, paramInt);
    }
  }
  
  private boolean ˋ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.ᓶ.getLeft();
    int j = this.ᓶ.getTop();
    paramInt1 -= i;
    paramInt2 -= j;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.ᐜ.abortAnimation();
      ᑊ(0);
      return false;
    }
    paramInt3 = ˊ(this.ᓶ, paramInt1, paramInt2, paramInt3, paramInt4);
    this.ᐜ.startScroll(i, j, paramInt1, paramInt2, paramInt3);
    ᑊ(2);
    return true;
  }
  
  private float ˎ(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f = Math.abs(paramFloat1);
    if (f < paramFloat2) {
      return 0.0F;
    }
    if (f > paramFloat3)
    {
      if (paramFloat1 > 0.0F) {
        return paramFloat3;
      }
      return -paramFloat3;
    }
    return paramFloat1;
  }
  
  private void ˎ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramInt1;
    int i = paramInt2;
    int k = this.ᓶ.getLeft();
    int m = this.ᓶ.getTop();
    if (paramInt3 != 0)
    {
      j = this.ᒩ.ˎ(this.ᓶ, paramInt1, paramInt3);
      this.ᓶ.offsetLeftAndRight(j - k);
    }
    if (paramInt4 != 0)
    {
      i = this.ᒩ.ˏ(this.ᓶ, paramInt2, paramInt4);
      this.ᓶ.offsetTopAndBottom(i - m);
    }
    if ((paramInt3 != 0) || (paramInt4 != 0)) {
      this.ᒩ.ˋ(this.ᓶ, j, i, j - k, i - m);
    }
  }
  
  private int ˏ(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i = this.ᓸ.getWidth();
    int j = i / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i);
    float f1 = j;
    float f2 = j;
    f3 = ˊ(f3);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {
      paramInt1 = Math.round(Math.abs((f1 + f2 * f3) / paramInt2) * 1000.0F) * 4;
    } else {
      paramInt1 = (int)((1.0F + Math.abs(paramInt1) / paramInt3) * 256.0F);
    }
    return Math.min(paramInt1, 600);
  }
  
  private int ᐝ(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = Math.abs(paramInt1);
    if (i < paramInt2) {
      return 0;
    }
    if (i > paramInt3)
    {
      if (paramInt1 > 0) {
        return paramInt3;
      }
      return -paramInt3;
    }
    return paramInt1;
  }
  
  private void ᐝ(MotionEvent paramMotionEvent)
  {
    int j = ᵧ.ˎ(paramMotionEvent);
    int i = 0;
    while (i < j)
    {
      int k = ᵧ.ˋ(paramMotionEvent, i);
      float f1 = ᵧ.ˎ(paramMotionEvent, i);
      float f2 = ᵧ.ˏ(paramMotionEvent, i);
      this.ٳ[k] = f1;
      this.ژ[k] = f2;
      i += 1;
    }
  }
  
  private void ᐠ(int paramInt)
  {
    if (this.ה == null) {
      return;
    }
    this.ה[paramInt] = 0.0F;
    this.ٲ[paramInt] = 0.0F;
    this.ٳ[paramInt] = 0.0F;
    this.ژ[paramInt] = 0.0F;
    this.ں[paramInt] = 0;
    this.ܥ[paramInt] = 0;
    this.ধ[paramInt] = 0;
    this.ร &= (1 << paramInt ^ 0xFFFFFFFF);
  }
  
  private void ᐣ(int paramInt)
  {
    if ((this.ה == null) || (this.ה.length <= paramInt))
    {
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      float[] arrayOfFloat4 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (this.ה != null)
      {
        System.arraycopy(this.ה, 0, arrayOfFloat1, 0, this.ה.length);
        System.arraycopy(this.ٲ, 0, arrayOfFloat2, 0, this.ٲ.length);
        System.arraycopy(this.ٳ, 0, arrayOfFloat3, 0, this.ٳ.length);
        System.arraycopy(this.ژ, 0, arrayOfFloat4, 0, this.ژ.length);
        System.arraycopy(this.ں, 0, arrayOfInt1, 0, this.ں.length);
        System.arraycopy(this.ܥ, 0, arrayOfInt2, 0, this.ܥ.length);
        System.arraycopy(this.ধ, 0, arrayOfInt3, 0, this.ধ.length);
      }
      this.ה = arrayOfFloat1;
      this.ٲ = arrayOfFloat2;
      this.ٳ = arrayOfFloat3;
      this.ژ = arrayOfFloat4;
      this.ں = arrayOfInt1;
      this.ܥ = arrayOfInt2;
      this.ধ = arrayOfInt3;
    }
  }
  
  private void ᕽ()
  {
    if (this.ה == null) {
      return;
    }
    Arrays.fill(this.ה, 0.0F);
    Arrays.fill(this.ٲ, 0.0F);
    Arrays.fill(this.ٳ, 0.0F);
    Arrays.fill(this.ژ, 0.0F);
    Arrays.fill(this.ں, 0);
    Arrays.fill(this.ܥ, 0);
    Arrays.fill(this.ধ, 0);
    this.ร = 0;
  }
  
  private void ᘁ()
  {
    this.ᓴ.computeCurrentVelocity(1000, this.ใ);
    ʾ(ˎ(ﹻ.ˊ(this.ᓴ, this.ઽ), this.Ꭲ, this.ใ), ˎ(ﹻ.ˋ(this.ᓴ, this.ઽ), this.Ꭲ, this.ใ));
  }
  
  public void cancel()
  {
    this.ઽ = -1;
    ᕽ();
    if (this.ᓴ != null)
    {
      this.ᓴ.recycle();
      this.ᓴ = null;
    }
  }
  
  public boolean ʻ(MotionEvent paramMotionEvent)
  {
    int j = ᵧ.ˊ(paramMotionEvent);
    int i = ᵧ.ˋ(paramMotionEvent);
    if (j == 0) {
      cancel();
    }
    if (this.ᓴ == null) {
      this.ᓴ = VelocityTracker.obtain();
    }
    this.ᓴ.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (j)
    {
    default: 
      break;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      i = ᵧ.ˋ(paramMotionEvent, 0);
      ˊ(f1, f2, i);
      paramMotionEvent = ˈ((int)f1, (int)f2);
      if ((paramMotionEvent == this.ᓶ) && (this.ԇ == 2)) {
        ʻ(paramMotionEvent, i);
      }
      j = this.ں[i];
      if ((this.Ꮠ & j) != 0) {
        this.ᒩ.ˌ(this.Ꮠ & j, i);
      }
      break;
    case 5: 
      j = ᵧ.ˋ(paramMotionEvent, i);
      f1 = ᵧ.ˎ(paramMotionEvent, i);
      f2 = ᵧ.ˏ(paramMotionEvent, i);
      ˊ(f1, f2, j);
      if (this.ԇ == 0)
      {
        i = this.ں[j];
        if ((this.Ꮠ & i) != 0) {
          this.ᒩ.ˌ(this.Ꮠ & i, j);
        }
      }
      else if (this.ԇ == 2)
      {
        paramMotionEvent = ˈ((int)f1, (int)f2);
        if (paramMotionEvent == this.ᓶ) {
          ʻ(paramMotionEvent, j);
        }
      }
      break;
    case 2: 
      if ((this.ה != null) && (this.ٲ != null))
      {
        int k = ᵧ.ˎ(paramMotionEvent);
        i = 0;
        while (i < k)
        {
          int m = ᵧ.ˋ(paramMotionEvent, i);
          f1 = ᵧ.ˎ(paramMotionEvent, i);
          f2 = ᵧ.ˏ(paramMotionEvent, i);
          float f3 = f1 - this.ה[m];
          float f4 = f2 - this.ٲ[m];
          View localView = ˈ((int)f1, (int)f2);
          if ((localView != null) && (ˊ(localView, f3, f4))) {
            j = 1;
          } else {
            j = 0;
          }
          if (j != 0)
          {
            int n = localView.getLeft();
            int i1 = (int)f3;
            i1 = this.ᒩ.ˎ(localView, n + i1, (int)f3);
            int i2 = localView.getTop();
            int i3 = (int)f4;
            i3 = this.ᒩ.ˏ(localView, i2 + i3, (int)f4);
            int i4 = this.ᒩ.ʳ(localView);
            int i5 = this.ᒩ.ʴ(localView);
            if (((i4 == 0) || ((i4 > 0) && (i1 == n))) && ((i5 == 0) || ((i5 > 0) && (i3 == i2)))) {
              break;
            }
          }
          ˋ(f3, f4, m);
          if ((this.ԇ == 1) || ((j != 0) && (ʻ(localView, m)))) {
            break;
          }
          i += 1;
        }
        ᐝ(paramMotionEvent);
      }
      break;
    case 6: 
      ᐠ(ᵧ.ˋ(paramMotionEvent, i));
      break;
    case 1: 
    case 3: 
      cancel();
    }
    return this.ԇ == 1;
  }
  
  boolean ʻ(View paramView, int paramInt)
  {
    if ((paramView == this.ᓶ) && (this.ઽ == paramInt)) {
      return true;
    }
    if ((paramView != null) && (this.ᒩ.ʽ(paramView, paramInt)))
    {
      this.ઽ = paramInt;
      ᐝ(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public void ʼ(MotionEvent paramMotionEvent)
  {
    int j = ᵧ.ˊ(paramMotionEvent);
    int i = ᵧ.ˋ(paramMotionEvent);
    if (j == 0) {
      cancel();
    }
    if (this.ᓴ == null) {
      this.ᓴ = VelocityTracker.obtain();
    }
    this.ᓴ.addMovement(paramMotionEvent);
    float f1;
    float f2;
    int k;
    switch (j)
    {
    default: 
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      i = ᵧ.ˋ(paramMotionEvent, 0);
      paramMotionEvent = ˈ((int)f1, (int)f2);
      ˊ(f1, f2, i);
      ʻ(paramMotionEvent, i);
      j = this.ں[i];
      if ((this.Ꮠ & j) != 0)
      {
        this.ᒩ.ˌ(this.Ꮠ & j, i);
        return;
      }
      break;
    case 5: 
      j = ᵧ.ˋ(paramMotionEvent, i);
      f1 = ᵧ.ˎ(paramMotionEvent, i);
      f2 = ᵧ.ˏ(paramMotionEvent, i);
      ˊ(f1, f2, j);
      if (this.ԇ == 0)
      {
        ʻ(ˈ((int)f1, (int)f2), j);
        i = this.ں[j];
        if ((this.Ꮠ & i) != 0) {
          this.ᒩ.ˌ(this.Ꮠ & i, j);
        }
        return;
      }
      if (ʿ((int)f1, (int)f2))
      {
        ʻ(this.ᓶ, j);
        return;
      }
      break;
    case 2: 
      if (this.ԇ == 1)
      {
        i = ᵧ.ˊ(paramMotionEvent, this.ઽ);
        f1 = ᵧ.ˎ(paramMotionEvent, i);
        f2 = ᵧ.ˏ(paramMotionEvent, i);
        i = (int)(f1 - this.ٳ[this.ઽ]);
        j = (int)(f2 - this.ژ[this.ઽ]);
        ˎ(this.ᓶ.getLeft() + i, this.ᓶ.getTop() + j, i, j);
        ᐝ(paramMotionEvent);
        return;
      }
      j = ᵧ.ˎ(paramMotionEvent);
      i = 0;
      while (i < j)
      {
        k = ᵧ.ˋ(paramMotionEvent, i);
        f1 = ᵧ.ˎ(paramMotionEvent, i);
        f2 = ᵧ.ˏ(paramMotionEvent, i);
        float f3 = f1 - this.ה[k];
        float f4 = f2 - this.ٲ[k];
        ˋ(f3, f4, k);
        if (this.ԇ == 1) {
          break;
        }
        View localView = ˈ((int)f1, (int)f2);
        if ((ˊ(localView, f3, f4)) && (ʻ(localView, k))) {
          break;
        }
        i += 1;
      }
      ᐝ(paramMotionEvent);
      return;
    case 6: 
      int m = ᵧ.ˋ(paramMotionEvent, i);
      if ((this.ԇ == 1) && (m == this.ઽ))
      {
        k = -1;
        int n = ᵧ.ˎ(paramMotionEvent);
        i = 0;
        for (;;)
        {
          j = k;
          if (i >= n) {
            break;
          }
          j = ᵧ.ˋ(paramMotionEvent, i);
          if (j != this.ઽ)
          {
            f1 = ᵧ.ˎ(paramMotionEvent, i);
            f2 = ᵧ.ˏ(paramMotionEvent, i);
            if ((ˈ((int)f1, (int)f2) == this.ᓶ) && (ʻ(this.ᓶ, j)))
            {
              j = this.ઽ;
              break;
            }
          }
          i += 1;
        }
        if (j == -1) {
          ᘁ();
        }
      }
      ᐠ(m);
      return;
    case 1: 
      if (this.ԇ == 1) {
        ᘁ();
      }
      cancel();
      return;
    case 3: 
      if (this.ԇ == 1) {
        ʾ(0.0F, 0.0F);
      }
      cancel();
    }
  }
  
  public boolean ʾ(int paramInt1, int paramInt2)
  {
    if (!ᐩ(paramInt2)) {
      return false;
    }
    int i;
    if ((paramInt1 & 0x1) == 1) {
      i = 1;
    } else {
      i = 0;
    }
    if ((paramInt1 & 0x2) == 2) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    float f1 = this.ٳ[paramInt2] - this.ה[paramInt2];
    float f2 = this.ژ[paramInt2] - this.ٲ[paramInt2];
    if ((i != 0) && (paramInt1 != 0)) {
      return f1 * f1 + f2 * f2 > this.כ * this.כ;
    }
    if (i != 0) {
      return Math.abs(f1) > this.כ;
    }
    if (paramInt1 != 0) {
      return Math.abs(f2) > this.כ;
    }
    return false;
  }
  
  public boolean ʿ(int paramInt1, int paramInt2)
  {
    return ˋ(this.ᓶ, paramInt1, paramInt2);
  }
  
  public boolean ʿ(boolean paramBoolean)
  {
    if (this.ԇ == 2)
    {
      boolean bool2 = this.ᐜ.computeScrollOffset();
      int i = this.ᐜ.getCurrX();
      int j = this.ᐜ.getCurrY();
      int k = i - this.ᓶ.getLeft();
      int m = j - this.ᓶ.getTop();
      if (k != 0) {
        this.ᓶ.offsetLeftAndRight(k);
      }
      if (m != 0) {
        this.ᓶ.offsetTopAndBottom(m);
      }
      if ((k != 0) || (m != 0)) {
        this.ᒩ.ˋ(this.ᓶ, i, j, k, m);
      }
      boolean bool1 = bool2;
      if (bool2)
      {
        bool1 = bool2;
        if (i == this.ᐜ.getFinalX())
        {
          bool1 = bool2;
          if (j == this.ᐜ.getFinalY())
          {
            this.ᐜ.abortAnimation();
            bool1 = false;
          }
        }
      }
      if (!bool1) {
        if (paramBoolean) {
          this.ᓸ.post(this.ᓹ);
        } else {
          ᑊ(0);
        }
      }
    }
    return this.ԇ == 2;
  }
  
  public View ˈ(int paramInt1, int paramInt2)
  {
    int i = this.ᓸ.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = this.ᓸ.getChildAt(this.ᒩ.ᵣ(i));
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
      i -= 1;
    }
    return null;
  }
  
  public boolean ˊ(View paramView, int paramInt1, int paramInt2)
  {
    this.ᓶ = paramView;
    this.ઽ = -1;
    boolean bool = ˋ(paramInt1, paramInt2, 0, 0);
    if ((!bool) && (this.ԇ == 0) && (this.ᓶ != null)) {
      this.ᓶ = null;
    }
    return bool;
  }
  
  public boolean ˋ(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null) {
      return false;
    }
    return (paramInt1 >= paramView.getLeft()) && (paramInt1 < paramView.getRight()) && (paramInt2 >= paramView.getTop()) && (paramInt2 < paramView.getBottom());
  }
  
  public void ˍ(float paramFloat)
  {
    this.Ꭲ = paramFloat;
  }
  
  public void ᐝ(View paramView, int paramInt)
  {
    if (paramView.getParent() != this.ᓸ) {
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.ᓸ + ")");
    }
    this.ᓶ = paramView;
    this.ઽ = paramInt;
    this.ᒩ.ʼ(paramView, paramInt);
    ᑊ(1);
  }
  
  public boolean ᐩ(int paramInt)
  {
    return (this.ร & 1 << paramInt) != 0;
  }
  
  void ᑊ(int paramInt)
  {
    this.ᓸ.removeCallbacks(this.ᓹ);
    if (this.ԇ != paramInt)
    {
      this.ԇ = paramInt;
      this.ᒩ.ᕀ(paramInt);
      if (this.ԇ == 0) {
        this.ᓶ = null;
      }
    }
  }
  
  public View ᕑ()
  {
    return this.ᓶ;
  }
  
  public boolean ι(int paramInt1, int paramInt2)
  {
    if (!this.ᓷ) {
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }
    return ˋ(paramInt1, paramInt2, (int)ﹻ.ˊ(this.ᓴ, this.ઽ), (int)ﹻ.ˋ(this.ᓴ, this.ઽ));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê
 * JD-Core Version:    0.7.0.1
 */