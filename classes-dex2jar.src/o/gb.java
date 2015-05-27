package o;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class gb
{
  public fw ˊ(Reader paramReader)
  {
    try
    {
      paramReader = new jz(paramReader);
      fw localfw = ᐝ(paramReader);
      if ((!localfw.q()) && (paramReader.J() != kb.NC)) {
        throw new gf("Did not consume the entire document.");
      }
      return localfw;
    }
    catch (kd paramReader)
    {
      throw new gf(paramReader);
    }
    catch (IOException paramReader)
    {
      throw new fx(paramReader);
    }
    catch (NumberFormatException paramReader)
    {
      throw new gf(paramReader);
    }
  }
  
  public fw ᐝ(jz paramjz)
  {
    boolean bool = paramjz.isLenient();
    paramjz.setLenient(true);
    try
    {
      fw localfw = hq.ᐝ(paramjz);
      return localfw;
    }
    catch (StackOverflowError localStackOverflowError)
    {
      throw new ga("Failed parsing JSON source: " + paramjz + " to Json", localStackOverflowError);
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      throw new ga("Failed parsing JSON source: " + paramjz + " to Json", localOutOfMemoryError);
    }
    finally
    {
      paramjz.setLenient(bool);
    }
  }
  
  public fw ᐤ(String paramString)
  {
    return ˊ(new StringReader(paramString));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gb
 * JD-Core Version:    0.7.0.1
 */