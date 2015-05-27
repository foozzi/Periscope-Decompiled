package o;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class ᵁ
  implements ı
{
  private static final int[] у = { 1, 4, 5, 3, 2, 0 };
  private final Context mContext;
  private boolean э;
  private boolean є;
  private ᵁ.if ӵ;
  private ArrayList<ᵃ> ԍ;
  private boolean օ;
  private ArrayList<ᵃ> א;
  private ArrayList<ᵃ> ע;
  private boolean ة;
  private int ن = 0;
  private ContextMenu.ContextMenuInfo ٮ;
  CharSequence ٱ;
  Drawable ڈ;
  private final Resources ږ;
  View ڙ;
  private boolean ऽ = false;
  private boolean บ = false;
  private boolean ย = false;
  private boolean ะ = false;
  private ArrayList<ᵃ> າ = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<ᵉ>> ᐳ = new CopyOnWriteArrayList();
  private ᵃ ᐸ;
  private ArrayList<ᵃ> ﮂ;
  
  public ᵁ(Context paramContext)
  {
    this.mContext = paramContext;
    this.ږ = paramContext.getResources();
    this.ﮂ = new ArrayList();
    this.ԍ = new ArrayList();
    this.օ = true;
    this.א = new ArrayList();
    this.ע = new ArrayList();
    this.ة = true;
    ˌ(true);
  }
  
  private void ˉ(boolean paramBoolean)
  {
    if (this.ᐳ.isEmpty()) {
      return;
    }
    ᵘ();
    Iterator localIterator = this.ᐳ.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ᵉ localᵉ = (ᵉ)localWeakReference.get();
      if (localᵉ == null) {
        this.ᐳ.remove(localWeakReference);
      } else {
        localᵉ.ˈ(paramBoolean);
      }
    }
    ᵤ();
  }
  
  private static int ˊ(ArrayList<ᵃ> paramArrayList, int paramInt)
  {
    int i = paramArrayList.size() - 1;
    while (i >= 0)
    {
      if (((ᵃ)paramArrayList.get(i)).getOrdering() <= paramInt) {
        return i + 1;
      }
      i -= 1;
    }
    return 0;
  }
  
  private MenuItem ˊ(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i = ᐪ(paramInt3);
    paramCharSequence = ˊ(paramInt1, paramInt2, paramInt3, i, paramCharSequence, this.ن);
    if (this.ٮ != null) {
      paramCharSequence.ˊ(this.ٮ);
    }
    this.ﮂ.add(ˊ(this.ﮂ, i), paramCharSequence);
    ˑ(true);
    return paramCharSequence;
  }
  
  private ᵃ ˊ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    return new ᵃ(this, paramInt1, paramInt2, paramInt3, paramInt4, paramCharSequence, paramInt5);
  }
  
  private void ˊ(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    Resources localResources = getResources();
    if (paramView != null)
    {
      this.ڙ = paramView;
      this.ٱ = null;
      this.ڈ = null;
    }
    else
    {
      if (paramInt1 > 0) {
        this.ٱ = localResources.getText(paramInt1);
      } else if (paramCharSequence != null) {
        this.ٱ = paramCharSequence;
      }
      if (paramInt2 > 0) {
        this.ڈ = ᵣ.ˊ(getContext(), paramInt2);
      } else if (paramDrawable != null) {
        this.ڈ = paramDrawable;
      }
      this.ڙ = null;
    }
    ˑ(false);
  }
  
  private boolean ˊ(ᵡ paramᵡ, ᵉ paramᵉ)
  {
    if (this.ᐳ.isEmpty()) {
      return false;
    }
    boolean bool1 = false;
    if (paramᵉ != null) {
      bool1 = paramᵉ.ˊ(paramᵡ);
    }
    paramᵉ = this.ᐳ.iterator();
    while (paramᵉ.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)paramᵉ.next();
      ᵉ localᵉ = (ᵉ)localWeakReference.get();
      boolean bool2;
      if (localᵉ == null)
      {
        this.ᐳ.remove(localWeakReference);
        bool2 = bool1;
      }
      else
      {
        bool2 = bool1;
        if (!bool1) {
          bool2 = localᵉ.ˊ(paramᵡ);
        }
      }
      bool1 = bool2;
    }
    return bool1;
  }
  
  private void ˌ(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.ږ.getConfiguration().keyboard != 1) && (this.ږ.getBoolean(ڊ.ˊ.abc_config_showMenuShortcutsWhenKeyboardPresent))) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    this.є = paramBoolean;
  }
  
  private void ᐝ(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= this.ﮂ.size())) {
      return;
    }
    this.ﮂ.remove(paramInt);
    if (paramBoolean) {
      ˑ(true);
    }
  }
  
  private static int ᐪ(int paramInt)
  {
    int i = (0xFFFF0000 & paramInt) >> 16;
    if ((i < 0) || (i >= у.length)) {
      throw new IllegalArgumentException("order does not contain a valid category.");
    }
    return у[i] << 16 | 0xFFFF & paramInt;
  }
  
  public MenuItem add(int paramInt)
  {
    return ˊ(0, 0, 0, this.ږ.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return ˊ(paramInt1, paramInt2, paramInt3, this.ږ.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return ˊ(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return ˊ(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i;
    if (localList != null) {
      i = localList.size();
    } else {
      i = 0;
    }
    if ((paramInt4 & 0x1) == 0) {
      removeGroup(paramInt1);
    }
    paramInt4 = 0;
    while (paramInt4 < i)
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (localResolveInfo.specificIndex < 0) {
        paramComponentName = paramIntent;
      } else {
        paramComponentName = paramArrayOfIntent[localResolveInfo.specificIndex];
      }
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(localResolveInfo.activityInfo.applicationInfo.packageName, localResolveInfo.activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (localResolveInfo.specificIndex >= 0)) {
        paramArrayOfMenuItem[localResolveInfo.specificIndex] = paramComponentName;
      }
      paramInt4 += 1;
    }
    return i;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, this.ږ.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, this.ږ.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (ᵃ)ˊ(paramInt1, paramInt2, paramInt3, paramCharSequence);
    ᵡ localᵡ = new ᵡ(this.mContext, this, paramCharSequence);
    paramCharSequence.ˋ(localᵡ);
    return localᵡ;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public void clear()
  {
    if (this.ᐸ != null) {
      ᐝ(this.ᐸ);
    }
    this.ﮂ.clear();
    ˑ(true);
  }
  
  public void clearHeader()
  {
    this.ڈ = null;
    this.ٱ = null;
    this.ڙ = null;
    ˑ(false);
  }
  
  public void close()
  {
    ˍ(true);
  }
  
  public MenuItem findItem(int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (ᵃ)this.ﮂ.get(i);
      if (((ᵃ)localObject).getItemId() == paramInt) {
        return localObject;
      }
      if (((ᵃ)localObject).hasSubMenu())
      {
        localObject = ((ᵃ)localObject).getSubMenu().findItem(paramInt);
        if (localObject != null) {
          return localObject;
        }
      }
      i += 1;
    }
    return null;
  }
  
  public Context getContext()
  {
    return this.mContext;
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.ﮂ.get(paramInt);
  }
  
  Resources getResources()
  {
    return this.ږ;
  }
  
  public boolean hasVisibleItems()
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      if (((ᵃ)this.ﮂ.get(i)).isVisible()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return ˊ(paramInt, paramKeyEvent) != null;
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return ˊ(findItem(paramInt1), paramInt2);
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = ˊ(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null) {
      bool = ˊ(paramKeyEvent, paramInt2);
    }
    if ((paramInt2 & 0x2) != 0) {
      ˍ(true);
    }
    return bool;
  }
  
  public void removeGroup(int paramInt)
  {
    int k = ᐡ(paramInt);
    if (k >= 0)
    {
      int m = this.ﮂ.size();
      int j;
      for (int i = 0;; i = j)
      {
        j = i + 1;
        if ((i >= m - k) || (((ᵃ)this.ﮂ.get(k)).getGroupId() != paramInt)) {
          break;
        }
        ᐝ(k, false);
      }
      ˑ(true);
    }
  }
  
  public void removeItem(int paramInt)
  {
    ᐝ(ᐟ(paramInt), true);
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = this.ﮂ.size();
    int i = 0;
    while (i < j)
    {
      ᵃ localᵃ = (ᵃ)this.ﮂ.get(i);
      if (localᵃ.getGroupId() == paramInt)
      {
        localᵃ.ـ(paramBoolean2);
        localᵃ.setCheckable(paramBoolean1);
      }
      i += 1;
    }
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int j = this.ﮂ.size();
    int i = 0;
    while (i < j)
    {
      ᵃ localᵃ = (ᵃ)this.ﮂ.get(i);
      if (localᵃ.getGroupId() == paramInt) {
        localᵃ.setEnabled(paramBoolean);
      }
      i += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int m = this.ﮂ.size();
    int j = 0;
    int i = 0;
    while (i < m)
    {
      ᵃ localᵃ = (ᵃ)this.ﮂ.get(i);
      int k = j;
      if (localᵃ.getGroupId() == paramInt)
      {
        k = j;
        if (localᵃ.ᐨ(paramBoolean)) {
          k = 1;
        }
      }
      i += 1;
      j = k;
    }
    if (j != 0) {
      ˑ(true);
    }
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    this.э = paramBoolean;
    ˑ(false);
  }
  
  public int size()
  {
    return this.ﮂ.size();
  }
  
  protected ᵁ ʻ(CharSequence paramCharSequence)
  {
    ˊ(0, paramCharSequence, 0, null, null);
    return this;
  }
  
  protected ᵁ ʼ(Drawable paramDrawable)
  {
    ˊ(0, null, 0, paramDrawable, null);
    return this;
  }
  
  protected ᵁ ˇ(View paramView)
  {
    ˊ(0, null, 0, null, paramView);
    return this;
  }
  
  ᵃ ˊ(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = this.າ;
    localArrayList.clear();
    ˊ(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty()) {
      return null;
    }
    int k = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int m = localArrayList.size();
    if (m == 1) {
      return (ᵃ)localArrayList.get(0);
    }
    boolean bool = ᕐ();
    int i = 0;
    while (i < m)
    {
      paramKeyEvent = (ᵃ)localArrayList.get(i);
      int j;
      if (bool) {
        j = paramKeyEvent.getAlphabeticShortcut();
      } else {
        j = paramKeyEvent.getNumericShortcut();
      }
      if (((j == localKeyData.meta[0]) && ((k & 0x2) == 0)) || ((j == localKeyData.meta[2]) && ((k & 0x2) != 0)) || ((bool) && (j == 8) && (paramInt == 67))) {
        return paramKeyEvent;
      }
      i += 1;
    }
    return null;
  }
  
  void ˊ(List<ᵃ> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = ᕐ();
    int k = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int m = this.ﮂ.size();
    int i = 0;
    while (i < m)
    {
      ᵃ localᵃ = (ᵃ)this.ﮂ.get(i);
      if (localᵃ.hasSubMenu()) {
        ((ᵁ)localᵃ.getSubMenu()).ˊ(paramList, paramInt, paramKeyEvent);
      }
      int j;
      if (bool) {
        j = localᵃ.getAlphabeticShortcut();
      } else {
        j = localᵃ.getNumericShortcut();
      }
      if (((k & 0x5) == 0) && (j != 0) && ((j == localKeyData.meta[0]) || (j == localKeyData.meta[2]) || ((bool) && (j == 8) && (paramInt == 67))) && (localᵃ.isEnabled())) {
        paramList.add(localᵃ);
      }
      i += 1;
    }
  }
  
  public void ˊ(ᵉ paramᵉ)
  {
    Iterator localIterator = this.ᐳ.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ᵉ localᵉ = (ᵉ)localWeakReference.get();
      if ((localᵉ == null) || (localᵉ == paramᵉ)) {
        this.ᐳ.remove(localWeakReference);
      }
    }
  }
  
  public void ˊ(ᵉ paramᵉ, Context paramContext)
  {
    this.ᐳ.add(new WeakReference(paramᵉ));
    paramᵉ.ˊ(paramContext, this);
    this.ة = true;
  }
  
  public boolean ˊ(MenuItem paramMenuItem, int paramInt)
  {
    return ˊ(paramMenuItem, null, paramInt);
  }
  
  public boolean ˊ(MenuItem paramMenuItem, ᵉ paramᵉ, int paramInt)
  {
    Object localObject = (ᵃ)paramMenuItem;
    if ((localObject == null) || (!((ᵃ)localObject).isEnabled())) {
      return false;
    }
    boolean bool2 = ((ᵃ)localObject).ﯩ();
    paramMenuItem = ((ᵃ)localObject).ϊ();
    int i;
    if ((paramMenuItem != null) && (paramMenuItem.hasSubMenu())) {
      i = 1;
    } else {
      i = 0;
    }
    boolean bool1;
    if (((ᵃ)localObject).ג())
    {
      bool2 |= ((ᵃ)localObject).expandActionView();
      bool1 = bool2;
      if (bool2)
      {
        ˍ(true);
        return bool2;
      }
    }
    else
    {
      if ((((ᵃ)localObject).hasSubMenu()) || (i != 0))
      {
        ˍ(false);
        if (!((ᵃ)localObject).hasSubMenu()) {
          ((ᵃ)localObject).ˋ(new ᵡ(getContext(), this, (ᵃ)localObject));
        }
        localObject = (ᵡ)((ᵃ)localObject).getSubMenu();
        if (i != 0) {
          paramMenuItem.onPrepareSubMenu((SubMenu)localObject);
        }
        bool1 = bool2 | ˊ((ᵡ)localObject, paramᵉ);
        if (!bool1) {
          ˍ(true);
        }
        return bool1;
      }
      bool1 = bool2;
      if ((paramInt & 0x1) == 0)
      {
        ˍ(true);
        bool1 = bool2;
      }
    }
    return bool1;
  }
  
  boolean ˊ(ᵁ paramᵁ, MenuItem paramMenuItem)
  {
    return (this.ӵ != null) && (this.ӵ.ˋ(paramᵁ, paramMenuItem));
  }
  
  void ˋ(ᵃ paramᵃ)
  {
    this.օ = true;
    ˑ(true);
  }
  
  public final void ˍ(boolean paramBoolean)
  {
    if (this.ะ) {
      return;
    }
    this.ะ = true;
    Iterator localIterator = this.ᐳ.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ᵉ localᵉ = (ᵉ)localWeakReference.get();
      if (localᵉ == null) {
        this.ᐳ.remove(localWeakReference);
      } else {
        localᵉ.ˊ(this, paramBoolean);
      }
    }
    this.ะ = false;
  }
  
  void ˎ(ᵃ paramᵃ)
  {
    this.ة = true;
    ˑ(true);
  }
  
  void ˏ(MenuItem paramMenuItem)
  {
    int j = paramMenuItem.getGroupId();
    int k = this.ﮂ.size();
    int i = 0;
    while (i < k)
    {
      ᵃ localᵃ = (ᵃ)this.ﮂ.get(i);
      if ((localᵃ.getGroupId() == j) && (localᵃ.ﻳ()) && (localᵃ.isCheckable()))
      {
        boolean bool;
        if (localᵃ == paramMenuItem) {
          bool = true;
        } else {
          bool = false;
        }
        localᵃ.ᐧ(bool);
      }
      i += 1;
    }
  }
  
  public boolean ˏ(ᵃ paramᵃ)
  {
    if (this.ᐳ.isEmpty()) {
      return false;
    }
    boolean bool1 = false;
    ᵘ();
    Iterator localIterator = this.ᐳ.iterator();
    boolean bool2;
    for (;;)
    {
      bool2 = bool1;
      if (!localIterator.hasNext()) {
        break;
      }
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ᵉ localᵉ = (ᵉ)localWeakReference.get();
      if (localᵉ == null)
      {
        this.ᐳ.remove(localWeakReference);
        bool2 = bool1;
      }
      else
      {
        boolean bool3 = localᵉ.ˊ(this, paramᵃ);
        bool1 = bool3;
        bool2 = bool1;
        if (bool3)
        {
          bool2 = bool1;
          break;
        }
      }
      bool1 = bool2;
    }
    ᵤ();
    if (bool2) {
      this.ᐸ = paramᵃ;
    }
    return bool2;
  }
  
  public int ˑ(int paramInt1, int paramInt2)
  {
    int j = size();
    int i = paramInt2;
    if (paramInt2 < 0) {
      i = 0;
    }
    while (i < j)
    {
      if (((ᵃ)this.ﮂ.get(i)).getGroupId() == paramInt1) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public void ˑ(boolean paramBoolean)
  {
    if (!this.ऽ)
    {
      if (paramBoolean)
      {
        this.օ = true;
        this.ة = true;
      }
      ˉ(paramBoolean);
      return;
    }
    this.บ = true;
  }
  
  public boolean ᐝ(ᵃ paramᵃ)
  {
    if ((this.ᐳ.isEmpty()) || (this.ᐸ != paramᵃ)) {
      return false;
    }
    boolean bool1 = false;
    ᵘ();
    Iterator localIterator = this.ᐳ.iterator();
    boolean bool2;
    for (;;)
    {
      bool2 = bool1;
      if (!localIterator.hasNext()) {
        break;
      }
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ᵉ localᵉ = (ᵉ)localWeakReference.get();
      if (localᵉ == null)
      {
        this.ᐳ.remove(localWeakReference);
        bool2 = bool1;
      }
      else
      {
        boolean bool3 = localᵉ.ˋ(this, paramᵃ);
        bool1 = bool3;
        bool2 = bool1;
        if (bool3)
        {
          bool2 = bool1;
          break;
        }
      }
      bool1 = bool2;
    }
    ᵤ();
    if (bool2) {
      this.ᐸ = null;
    }
    return bool2;
  }
  
  public int ᐟ(int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      if (((ᵃ)this.ﮂ.get(i)).getItemId() == paramInt) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public int ᐡ(int paramInt)
  {
    return ˑ(paramInt, 0);
  }
  
  boolean ᕐ()
  {
    return this.э;
  }
  
  public boolean ᕝ()
  {
    return this.є;
  }
  
  public void ᵒ()
  {
    if (this.ӵ != null) {
      this.ӵ.ˋ(this);
    }
  }
  
  public void ᵘ()
  {
    if (!this.ऽ)
    {
      this.ऽ = true;
      this.บ = false;
    }
  }
  
  public void ᵤ()
  {
    this.ऽ = false;
    if (this.บ)
    {
      this.บ = false;
      ˑ(true);
    }
  }
  
  public ArrayList<ᵃ> ⁿ()
  {
    if (!this.օ) {
      return this.ԍ;
    }
    this.ԍ.clear();
    int j = this.ﮂ.size();
    int i = 0;
    while (i < j)
    {
      ᵃ localᵃ = (ᵃ)this.ﮂ.get(i);
      if (localᵃ.isVisible()) {
        this.ԍ.add(localᵃ);
      }
      i += 1;
    }
    this.օ = false;
    this.ة = true;
    return this.ԍ;
  }
  
  public void Ⅰ()
  {
    ArrayList localArrayList = ⁿ();
    if (!this.ة) {
      return;
    }
    int i = 0;
    Object localObject = this.ᐳ.iterator();
    while (((Iterator)localObject).hasNext())
    {
      WeakReference localWeakReference = (WeakReference)((Iterator)localObject).next();
      ᵉ localᵉ = (ᵉ)localWeakReference.get();
      if (localᵉ == null) {
        this.ᐳ.remove(localWeakReference);
      } else {
        i |= localᵉ.ᑦ();
      }
    }
    if (i != 0)
    {
      this.א.clear();
      this.ע.clear();
      int k = localArrayList.size();
      i = 0;
      while (i < k)
      {
        localObject = (ᵃ)localArrayList.get(i);
        if (((ᵃ)localObject).İ()) {
          this.א.add(localObject);
        } else {
          this.ע.add(localObject);
        }
        int j;
        i += 1;
      }
    }
    else
    {
      this.א.clear();
      this.ע.clear();
      this.ע.addAll(ⁿ());
    }
    this.ة = false;
  }
  
  public ArrayList<ᵃ> ⅰ()
  {
    Ⅰ();
    return this.א;
  }
  
  public ArrayList<ᵃ> 丶()
  {
    Ⅰ();
    return this.ע;
  }
  
  public ᵁ ﭔ()
  {
    return this;
  }
  
  boolean ﭠ()
  {
    return this.ย;
  }
  
  public ᵃ ﯦ()
  {
    return this.ᐸ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */