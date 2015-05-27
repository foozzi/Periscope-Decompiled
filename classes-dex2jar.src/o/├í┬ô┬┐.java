package o;

import java.io.Closeable;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;

final class ᓿ
{
  public static void ˊ(Throwable paramThrowable, OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {
      ˋ(paramThrowable, paramOutputStream);
    }
  }
  
  private static void ˊ(Throwable paramThrowable, Writer paramWriter)
  {
    int i = 1;
    if (paramThrowable != null) {}
    for (;;)
    {
      String str;
      try
      {
        localObject = ˎ(paramThrowable);
        if (localObject == null) {
          break label156;
        }
      }
      catch (Exception paramThrowable)
      {
        int j;
        int k;
        pj.cd().ˏ("Fabric", "Could not write stack trace", paramThrowable);
        return;
      }
      paramWriter.write(str + paramThrowable.getClass().getName() + ": " + (String)localObject + "\n");
      j = 0;
      Object localObject = paramThrowable.getStackTrace();
      k = localObject.length;
      i = 0;
      if (i < k)
      {
        str = localObject[i];
        paramWriter.write("\tat " + str.toString() + "\n");
        i += 1;
      }
      else
      {
        paramThrowable = paramThrowable.getCause();
        i = j;
        break;
        return;
        label156:
        localObject = "";
        if (i != 0) {
          str = "";
        } else {
          str = "Caused by: ";
        }
      }
    }
  }
  
  private static void ˋ(Throwable paramThrowable, OutputStream paramOutputStream)
  {
    Object localObject = null;
    OutputStream localOutputStream = null;
    try
    {
      paramOutputStream = new PrintWriter(paramOutputStream);
      localOutputStream = paramOutputStream;
      localObject = paramOutputStream;
      ˊ(paramThrowable, paramOutputStream);
      qh.ˊ(paramOutputStream, "Failed to close stack trace writer.");
      return;
    }
    catch (Exception paramThrowable)
    {
      localObject = localOutputStream;
      pj.cd().ˏ("Fabric", "Failed to create PrintWriter", paramThrowable);
      qh.ˊ(localOutputStream, "Failed to close stack trace writer.");
      return;
    }
    finally
    {
      qh.ˊ((Closeable)localObject, "Failed to close stack trace writer.");
    }
  }
  
  private static String ˎ(Throwable paramThrowable)
  {
    paramThrowable = paramThrowable.getLocalizedMessage();
    if (paramThrowable == null) {
      return null;
    }
    return paramThrowable.replaceAll("(\r\n|\n|\f)", " ");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿
 * JD-Core Version:    0.7.0.1
 */