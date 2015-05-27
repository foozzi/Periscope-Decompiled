package o;

import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class hq
{
  public static Writer ˊ(Appendable paramAppendable)
  {
    if ((paramAppendable instanceof Writer)) {
      return (Writer)paramAppendable;
    }
    return new if(paramAppendable, null);
  }
  
  public static void ˋ(fw paramfw, kc paramkc)
  {
    ir.MR.ˊ(paramkc, paramfw);
  }
  
  public static fw ᐝ(jz paramjz)
  {
    int i = 1;
    try
    {
      paramjz.J();
      i = 0;
      paramjz = (fw)ir.MR.ˋ(paramjz);
      return paramjz;
    }
    catch (EOFException paramjz)
    {
      if (i != 0) {
        return fy.Ku;
      }
      throw new gf(paramjz);
    }
    catch (kd paramjz)
    {
      throw new gf(paramjz);
    }
    catch (IOException paramjz)
    {
      throw new fx(paramjz);
    }
    catch (NumberFormatException paramjz)
    {
      throw new gf(paramjz);
    }
  }
  
  static final class if
    extends Writer
  {
    private final Appendable Lu;
    private final if Lv = new if();
    
    private if(Appendable paramAppendable)
    {
      this.Lu = paramAppendable;
    }
    
    public void close() {}
    
    public void flush() {}
    
    public void write(int paramInt)
    {
      this.Lu.append((char)paramInt);
    }
    
    public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      this.Lv.chars = paramArrayOfChar;
      this.Lu.append(this.Lv, paramInt1, paramInt1 + paramInt2);
    }
    
    static class if
      implements CharSequence
    {
      char[] chars;
      
      public char charAt(int paramInt)
      {
        return this.chars[paramInt];
      }
      
      public int length()
      {
        return this.chars.length;
      }
      
      public CharSequence subSequence(int paramInt1, int paramInt2)
      {
        return new String(this.chars, paramInt1, paramInt2 - paramInt1);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hq
 * JD-Core Version:    0.7.0.1
 */