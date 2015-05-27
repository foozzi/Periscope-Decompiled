package o;

import android.graphics.Matrix;
import android.view.TextureView;

public class amr
{
  public static void ˊ(TextureView paramTextureView, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) || (paramInt2 == 0)) {
      return;
    }
    if (paramInt2 - paramInt1 > 0)
    {
      localMatrix = new Matrix();
      localMatrix.setScale(1.0F, paramInt2 / paramInt1);
      paramTextureView.setTransform(localMatrix);
      return;
    }
    Matrix localMatrix = new Matrix();
    localMatrix.setScale(1.0F, 1.0F);
    paramTextureView.setTransform(localMatrix);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amr
 * JD-Core Version:    0.7.0.1
 */