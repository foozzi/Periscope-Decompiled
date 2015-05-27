package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Path;
import android.view.View;
import android.view.ViewGroup;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ahl
{
  private final Random bER;
  private final int bES;
  private final int bET;
  private final int bEU;
  private final int bEV;
  private final int bEW;
  private final int bEX;
  private final int mLength;
  
  public ahl(Context paramContext)
  {
    paramContext = paramContext.getResources();
    this.bES = paramContext.getDimensionPixelOffset(2131361874);
    this.bET = paramContext.getDimensionPixelOffset(2131361875);
    this.bEU = paramContext.getDimensionPixelOffset(2131361873);
    this.mLength = paramContext.getDimensionPixelOffset(2131361876);
    this.bEV = paramContext.getDimensionPixelOffset(2131361877);
    this.bEW = paramContext.getInteger(2131492868);
    this.bEX = paramContext.getDimensionPixelOffset(2131361878);
    this.bER = akn.AA();
  }
  
  public float zF()
  {
    return this.bER.nextFloat() * 28.6F - 14.3F;
  }
  
  public Path ˊ(AtomicInteger paramAtomicInteger, View paramView, int paramInt)
  {
    Random localRandom = this.bER;
    int k = localRandom.nextInt(this.bEU);
    int m = localRandom.nextInt(this.bEU);
    int i = paramView.getHeight() - this.bET;
    int j = paramAtomicInteger.intValue() * 15 + this.mLength * paramInt + localRandom.nextInt(this.bEV);
    akk.ᐪ("HeartRender", "Beginning path composition with heart count " + paramAtomicInteger + " " + "and length " + j + " and adjusted Y value " + i);
    paramInt = (int)(j / this.bEW);
    k = this.bEX + k;
    m = this.bEX + m;
    int n = i - j;
    j = i - j / 2;
    paramAtomicInteger = new Path();
    paramAtomicInteger.moveTo(this.bES, i);
    paramAtomicInteger.cubicTo(this.bES, i - paramInt, k, j + paramInt, k, j);
    paramAtomicInteger.moveTo(k, j);
    paramAtomicInteger.cubicTo(k, j - paramInt, m, n + paramInt, m, n);
    return paramAtomicInteger;
  }
  
  public abstract void ˊ(View paramView, ViewGroup paramViewGroup);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahl
 * JD-Core Version:    0.7.0.1
 */