package o;

import android.os.Looper;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract interface ᒴ
{
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract Looper getLooper();
  
  public abstract boolean isConnected();
  
  public abstract boolean isConnecting();
  
  public abstract <A extends ᒰ.ˊ, R extends ᒹ, T extends ᖧ.if<R, A>> T ˊ(T paramT);
  
  public abstract void ˊ(ᒴ.ˊ paramˊ);
  
  public abstract void ˊ(ᒴ.ˋ paramˋ);
  
  public abstract <A extends ᒰ.ˊ, T extends ᖧ.if<? extends ᒹ, A>> T ˋ(T paramT);
  
  public abstract void ˋ(ᒴ.ˊ paramˊ);
  
  public abstract void ˋ(ᒴ.ˋ paramˋ);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */