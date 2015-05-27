

android.annotation.TargetApi
android.app.Application
android.app.Application.ActivityLifecycleCallbacks
android.content.Context
android.os.Build.VERSION
java.util.HashSet
java.util.Set

pg

  UG
  pu
  
  pg
  
    pu = ((Application)paramContext.getApplicationContext());
    if (Build.VERSION.SDK_INT >= 14) {
      this.UG = new if(this.pu);
    }
  }
  
  public boolean ˊ(pg.ˊ paramˊ)
  {
    return (this.UG != null) && (if.ˊ(this.UG, paramˊ));
  }
  
  static class if
  {
    private final Set<Application.ActivityLifecycleCallbacks> UH = new HashSet();
    private final Application pu;
    
    if(Application paramApplication)
    {
      this.pu = paramApplication;
    }
    
    @TargetApi(14)
    private boolean ˋ(pg.ˊ paramˊ)
    {
      if (this.pu != null)
      {
        paramˊ = new ph(this, paramˊ);
        this.pu.registerActivityLifecycleCallbacks(paramˊ);
        this.UH.add(paramˊ);
        return true;
      }
      return false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pg
 * JD-Core Version:    0.7.0.1
 */