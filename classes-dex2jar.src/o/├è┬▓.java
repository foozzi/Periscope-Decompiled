package o;

import android.os.AsyncTask;
import android.os.Build.VERSION;

public class ʲ
{
  public static <Params, Progress, Result> AsyncTask<Params, Progress, Result> ˊ(AsyncTask<Params, Progress, Result> paramAsyncTask, Params... paramVarArgs)
  {
    if (paramAsyncTask == null) {
      throw new IllegalArgumentException("task can not be null");
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      ː.ˋ(paramAsyncTask, paramVarArgs);
      return paramAsyncTask;
    }
    paramAsyncTask.execute(paramVarArgs);
    return paramAsyncTask;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê²
 * JD-Core Version:    0.7.0.1
 */