package o;

import android.opengl.GLES20;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import tv.periscope.android.util.Size;

public class abg
{
  private Size bqH;
  private List<abk> bvq = new ArrayList();
  private int bvr;
  private int bvs;
  private Size bvt;
  private Size bvu;
  private int bvv;
  private boolean bvw;
  
  void vQ()
  {
    Iterator localIterator = this.bvq.iterator();
    while (localIterator.hasNext()) {
      ((abk)localIterator.next()).vQ();
    }
    this.bvq.clear();
  }
  
  public abk ˊ(abi paramabi1, abi paramabi2, abj paramabj, abo paramabo)
  {
    Object localObject = null;
    Iterator localIterator = this.bvq.iterator();
    while (localIterator.hasNext())
    {
      abk localabk = (abk)localIterator.next();
      paramabj.ˊ(localabk);
      if ((paramabo instanceof abn)) {
        localObject = paramabi2;
      } else {
        localObject = paramabi1;
      }
      paramabj.ˊ((abi)localObject);
      GLES20.glUniform1f(paramabi1.ﹿ("Mirror"), 0.0F);
      paramabj.ˊ("Texture0", paramabo, 9729, 33071);
      paramabj.vX();
      paramabo = localabk.vY();
      localObject = localabk;
      paramabj.wr();
      paramabj.ws();
    }
    if (!(paramabo instanceof abn)) {
      paramabi2 = paramabi1;
    }
    paramabj.ˊ(paramabi2);
    paramabj.ˊ("Texture0", paramabo, 9729, 33071);
    int i = paramabi1.ﹿ("Mirror");
    float f;
    if (this.bvw) {
      f = 1.0F;
    } else {
      f = 0.0F;
    }
    GLES20.glUniform1f(i, f);
    paramabj.ʼ(this.bvr, this.bvs, this.bqH.width(), this.bqH.height(), this.bvv);
    paramabj.wr();
    return localObject;
  }
  
  void ˊ(Size paramSize1, Size paramSize2, int paramInt, boolean paramBoolean)
  {
    this.bvw = paramBoolean;
    if ((paramSize1.ˊ(this.bvt)) && (paramSize2.ˊ(this.bvu)) && (paramInt == this.bvv)) {
      return;
    }
    vQ();
    float f1 = paramSize2.Ay();
    float f2 = paramSize1.Ꭸ(paramInt).Ay();
    Size localSize;
    if (f1 < f2)
    {
      localSize = Size.ˑ(paramSize2.height() * f2, paramSize2.height());
      this.bvr = ((paramSize2.height() - localSize.height()) / 2);
    }
    else
    {
      localSize = Size.ˑ(paramSize2.width(), paramSize2.width() / f2);
      this.bvs = ((paramSize2.height() - localSize.height()) / 2);
    }
    int i = paramSize1.width();
    int j = paramSize1.height();
    int k = localSize.Ꭸ(paramInt).width();
    int m = localSize.Ꭸ(paramInt).height();
    this.bqH = localSize;
    this.bvv = paramInt;
    this.bvu = paramSize2;
    this.bvt = paramSize1;
    paramInt = j;
    while ((i / 2 > k) && (paramInt / 2 > m))
    {
      i /= 2;
      paramInt /= 2;
      this.bvq.add(new abk(i, paramInt, 6407, 5121));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abg
 * JD-Core Version:    0.7.0.1
 */