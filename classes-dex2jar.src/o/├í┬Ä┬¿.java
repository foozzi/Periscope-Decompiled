package o;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public class Ꭸ
  implements Handler.Callback
{
  private static final Ꭸ lR = new Ꭸ();
  private final Handler handler = new Handler(Looper.getMainLooper(), this);
  private volatile ᕻ lS;
  final Map<FragmentManager, Ꭲ> lT = new HashMap();
  final Map<ˈ, ᒩ> lU = new HashMap();
  
  @TargetApi(17)
  private static void ʼ(Activity paramActivity)
  {
    if ((Build.VERSION.SDK_INT >= 17) && (paramActivity.isDestroyed())) {
      throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }
  }
  
  private ᕻ ˑ(Context paramContext)
  {
    if (this.lS == null) {
      try
      {
        if (this.lS == null) {
          this.lS = new ᕻ(paramContext.getApplicationContext(), new ה(), new ܥ());
        }
      }
      finally
      {
        paramContext = finally;
        throw paramContext;
      }
    }
    return this.lS;
  }
  
  public static Ꭸ ร()
  {
    return lR;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    boolean bool = true;
    Object localObject = null;
    Message localMessage = null;
    switch (paramMessage.what)
    {
    default: 
      break;
    case 1: 
      paramMessage = (FragmentManager)paramMessage.obj;
      localMessage = paramMessage;
      paramMessage = this.lT.remove(paramMessage);
      break;
    case 2: 
      paramMessage = (ˈ)paramMessage.obj;
      localMessage = paramMessage;
      paramMessage = this.lU.remove(paramMessage);
      break;
    }
    bool = false;
    paramMessage = localObject;
    if ((bool) && (paramMessage == null) && (Log.isLoggable("RMRetriever", 5))) {
      Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + localMessage);
    }
    return bool;
  }
  
  @TargetApi(11)
  public ᕻ ʻ(Activity paramActivity)
  {
    if ((ﾕ.ﮇ()) || (Build.VERSION.SDK_INT < 11)) {
      return ـ(paramActivity.getApplicationContext());
    }
    ʼ(paramActivity);
    return ˊ(paramActivity, paramActivity.getFragmentManager());
  }
  
  @TargetApi(17)
  Ꭲ ˊ(FragmentManager paramFragmentManager)
  {
    Ꭲ localᎢ2 = (Ꭲ)paramFragmentManager.findFragmentByTag("com.bumptech.glide.manager");
    Ꭲ localᎢ1 = localᎢ2;
    if (localᎢ2 == null)
    {
      localᎢ2 = (Ꭲ)this.lT.get(paramFragmentManager);
      localᎢ1 = localᎢ2;
      if (localᎢ2 == null)
      {
        localᎢ1 = new Ꭲ();
        this.lT.put(paramFragmentManager, localᎢ1);
        paramFragmentManager.beginTransaction().add(localᎢ1, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.handler.obtainMessage(1, paramFragmentManager).sendToTarget();
      }
    }
    return localᎢ1;
  }
  
  ᒩ ˊ(ˈ paramˈ)
  {
    ᒩ localᒩ2 = (ᒩ)paramˈ.findFragmentByTag("com.bumptech.glide.manager");
    ᒩ localᒩ1 = localᒩ2;
    if (localᒩ2 == null)
    {
      localᒩ2 = (ᒩ)this.lU.get(paramˈ);
      localᒩ1 = localᒩ2;
      if (localᒩ2 == null)
      {
        localᒩ1 = new ᒩ();
        this.lU.put(paramˈ, localᒩ1);
        paramˈ.ˋ().ˊ(localᒩ1, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.handler.obtainMessage(2, paramˈ).sendToTarget();
      }
    }
    return localᒩ1;
  }
  
  @TargetApi(11)
  ᕻ ˊ(Context paramContext, FragmentManager paramFragmentManager)
  {
    Ꭲ localᎢ = ˊ(paramFragmentManager);
    ᕻ localᕻ = localᎢ.ܥ();
    paramFragmentManager = localᕻ;
    if (localᕻ == null)
    {
      paramFragmentManager = new ᕻ(paramContext, localᎢ.ں(), localᎢ.ধ());
      localᎢ.ʼ(paramFragmentManager);
    }
    return paramFragmentManager;
  }
  
  ᕻ ˊ(Context paramContext, ˈ paramˈ)
  {
    ᒩ localᒩ = ˊ(paramˈ);
    ᕻ localᕻ = localᒩ.ܥ();
    paramˈ = localᕻ;
    if (localᕻ == null)
    {
      paramˈ = new ᕻ(paramContext, localᒩ.ں(), localᒩ.ধ());
      localᒩ.ʼ(paramˈ);
    }
    return paramˈ;
  }
  
  public ᕻ ˋ(ι paramι)
  {
    if (ﾕ.ﮇ()) {
      return ـ(paramι.getApplicationContext());
    }
    ʼ(paramι);
    return ˊ(paramι, paramι.getSupportFragmentManager());
  }
  
  public ᕻ ـ(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("You cannot start a load on a null Context");
    }
    if ((ﾕ.ﭩ()) && (!(paramContext instanceof Application)))
    {
      if ((paramContext instanceof ι)) {
        return ˋ((ι)paramContext);
      }
      if ((paramContext instanceof Activity)) {
        return ʻ((Activity)paramContext);
      }
      if ((paramContext instanceof ContextWrapper)) {
        return ـ(((ContextWrapper)paramContext).getBaseContext());
      }
    }
    return ˑ(paramContext);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¨
 * JD-Core Version:    0.7.0.1
 */