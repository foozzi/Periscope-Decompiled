package o;

import android.content.Context;
import android.content.res.Resources;
import android.opengl.GLES20;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;

public class abi
{
  private int bvF;
  
  public abi(Context paramContext, int paramInt1, int paramInt2)
  {
    paramInt1 = ʻ(35633, ι(paramContext, paramInt1));
    paramInt2 = ʻ(35632, ι(paramContext, paramInt2));
    this.bvF = GLES20.glCreateProgram();
    GLES20.glAttachShader(this.bvF, paramInt1);
    GLES20.glAttachShader(this.bvF, paramInt2);
    GLES20.glLinkProgram(this.bvF);
    paramContext = new int[1];
    GLES20.glGetProgramiv(this.bvF, 35714, paramContext, 0);
    if (paramContext[0] != 1) {
      throw new IllegalArgumentException("Can't link program: " + GLES20.glGetProgramInfoLog(this.bvF));
    }
    GLES20.glDeleteShader(paramInt1);
    GLES20.glDeleteShader(paramInt2);
  }
  
  private static int ʻ(int paramInt, String paramString)
  {
    paramInt = GLES20.glCreateShader(paramInt);
    GLES20.glShaderSource(paramInt, paramString);
    GLES20.glCompileShader(paramInt);
    paramString = new int[1];
    GLES20.glGetShaderiv(paramInt, 35713, paramString, 0);
    if (paramString[0] == 0) {
      throw new IllegalArgumentException("Could not compile shader: " + GLES20.glGetShaderInfoLog(paramInt));
    }
    return paramInt;
  }
  
  private static String ι(Context paramContext, int paramInt)
  {
    Object localObject = null;
    Context localContext = null;
    try
    {
      paramContext = paramContext.getResources().openRawResource(paramInt);
      localContext = paramContext;
      localObject = paramContext;
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramContext));
      String str2;
      for (String str1 = "";; str1 = str1 + str2 + "\n")
      {
        localContext = paramContext;
        localObject = paramContext;
        str2 = localBufferedReader.readLine();
        if (str2 == null) {
          break;
        }
        localContext = paramContext;
        localObject = paramContext;
      }
      akg.ˊ(paramContext);
      return str1;
    }
    catch (IOException paramContext)
    {
      localObject = localContext;
      throw new IllegalArgumentException("Unable to load shader from resource: " + paramInt);
    }
    finally
    {
      akg.ˊ((Closeable)localObject);
    }
  }
  
  public void tQ()
  {
    GLES20.glUseProgram(this.bvF);
  }
  
  public void tR()
  {
    GLES20.glUseProgram(0);
  }
  
  public void vQ()
  {
    if (this.bvF != -1) {
      GLES20.glDeleteProgram(this.bvF);
    }
    this.bvF = -1;
  }
  
  public int ﹹ(String paramString)
  {
    return GLES20.glGetAttribLocation(this.bvF, paramString);
  }
  
  public int ﹿ(String paramString)
  {
    return GLES20.glGetUniformLocation(this.bvF, paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abi
 * JD-Core Version:    0.7.0.1
 */