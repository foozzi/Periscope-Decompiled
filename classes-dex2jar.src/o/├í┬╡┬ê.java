package o;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class ᵈ
  extends ByteArrayOutputStream
{
  ᵈ(ᴺ paramᴺ, int paramInt)
  {
    super(paramInt);
  }
  
  public String toString()
  {
    int i;
    if ((this.count > 0) && (this.buf[(this.count - 1)] == 13)) {
      i = this.count - 1;
    } else {
      i = this.count;
    }
    try
    {
      String str = new String(this.buf, 0, i, ᴺ.ˊ(this.fl).name());
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */