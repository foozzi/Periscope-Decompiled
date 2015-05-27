package o;

import android.opengl.GLES20;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import tv.periscope.android.util.Size;

public class abj
  extends abm
{
  private static float[] bvG = { 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F };
  private int bvH = ˊ(ˊ(bvG));
  
  private static int ˊ(Buffer paramBuffer)
  {
    int[] arrayOfInt = new int[1];
    GLES20.glGenBuffers(1, arrayOfInt, 0);
    GLES20.glBindBuffer(34962, arrayOfInt[0]);
    GLES20.glBufferData(34962, paramBuffer.capacity() * 4, paramBuffer, 35044);
    return arrayOfInt[0];
  }
  
  private static FloatBuffer ˊ(float[] paramArrayOfFloat)
  {
    FloatBuffer localFloatBuffer = ByteBuffer.allocateDirect(paramArrayOfFloat.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    localFloatBuffer.put(paramArrayOfFloat);
    localFloatBuffer.position(0);
    return localFloatBuffer;
  }
  
  public void vQ()
  {
    GLES20.glDeleteBuffers(1, new int[] { this.bvH }, 0);
  }
  
  public void vX()
  {
    Size localSize = abp.wy();
    ʼ(0, 0, localSize.width(), localSize.height(), 0);
  }
  
  public void ʼ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    GLES20.glBindBuffer(34962, this.bvH);
    int i = this.bwC.ﹹ("Position");
    GLES20.glEnableVertexAttribArray(i);
    GLES20.glVertexAttribPointer(i, 2, 5126, false, 8, 0);
    GLES20.glDisable(2884);
    GLES20.glDisable(2929);
    GLES20.glDisable(3042);
    GLES20.glDepthFunc(519);
    Size localSize = abp.wy();
    GLES20.glUniform4f(this.bwC.ﹿ("OffsetScale"), paramInt1 / localSize.width(), paramInt2 / localSize.height(), paramInt3 / localSize.width(), paramInt4 / localSize.height());
    GLES20.glUniform1f(this.bwC.ﹿ("Rotation"), paramInt5);
    GLES20.glDrawArrays(5, 0, 4);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abj
 * JD-Core Version:    0.7.0.1
 */