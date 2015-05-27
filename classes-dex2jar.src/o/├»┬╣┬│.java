package o;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class ﹳ
{
  public static Object ˊ(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject != null) {
      localObject = ((Transition)paramObject).clone();
    }
    return localObject;
  }
  
  public static Object ˊ(Object paramObject, View paramView1, ArrayList<View> paramArrayList, Map<String, View> paramMap, View paramView2)
  {
    if (paramObject != null)
    {
      ˊ(paramArrayList, paramView1);
      if (paramMap != null) {
        paramArrayList.removeAll(paramMap.values());
      }
      if (paramArrayList.isEmpty()) {
        return null;
      }
      paramArrayList.add(paramView2);
      ˋ((Transition)paramObject, paramArrayList);
    }
    return paramObject;
  }
  
  public static Object ˊ(Object paramObject1, Object paramObject2, Object paramObject3, boolean paramBoolean)
  {
    boolean bool2 = true;
    Transition localTransition = (Transition)paramObject1;
    paramObject1 = (Transition)paramObject2;
    paramObject3 = (Transition)paramObject3;
    boolean bool1 = bool2;
    if (localTransition != null)
    {
      bool1 = bool2;
      if (paramObject1 != null) {
        bool1 = paramBoolean;
      }
    }
    if (bool1)
    {
      paramObject2 = new TransitionSet();
      if (localTransition != null) {
        paramObject2.addTransition(localTransition);
      }
      if (paramObject1 != null) {
        paramObject2.addTransition(paramObject1);
      }
      if (paramObject3 != null) {
        paramObject2.addTransition(paramObject3);
      }
      return paramObject2;
    }
    paramObject2 = null;
    if ((paramObject1 != null) && (localTransition != null))
    {
      paramObject1 = new TransitionSet().addTransition(paramObject1).addTransition(localTransition).setOrdering(1);
    }
    else if (paramObject1 == null)
    {
      paramObject1 = paramObject2;
      if (localTransition != null) {
        paramObject1 = localTransition;
      }
    }
    if (paramObject3 != null)
    {
      paramObject2 = new TransitionSet();
      if (paramObject1 != null) {
        paramObject2.addTransition(paramObject1);
      }
      paramObject2.addTransition(paramObject3);
      return paramObject2;
    }
    return paramObject1;
  }
  
  public static String ˊ(View paramView)
  {
    return paramView.getTransitionName();
  }
  
  private static void ˊ(Transition paramTransition, ﹳ.if paramif)
  {
    if (paramTransition != null) {
      paramTransition.setEpicenterCallback(new ՙ(paramif));
    }
  }
  
  public static void ˊ(View paramView1, View paramView2, Object paramObject1, ArrayList<View> paramArrayList1, Object paramObject2, ArrayList<View> paramArrayList2, Object paramObject3, ArrayList<View> paramArrayList3, Object paramObject4, ArrayList<View> paramArrayList4, Map<String, View> paramMap)
  {
    paramObject1 = (Transition)paramObject1;
    paramObject2 = (Transition)paramObject2;
    paramObject3 = (Transition)paramObject3;
    paramObject4 = (Transition)paramObject4;
    if (paramObject4 != null) {
      paramView1.getViewTreeObserver().addOnPreDrawListener(new י(paramView1, paramObject1, paramView2, paramArrayList1, paramObject2, paramArrayList2, paramObject3, paramArrayList3, paramMap, paramArrayList4, paramObject4));
    }
  }
  
  public static void ˊ(ViewGroup paramViewGroup, Object paramObject)
  {
    TransitionManager.beginDelayedTransition(paramViewGroup, (Transition)paramObject);
  }
  
  public static void ˊ(Object paramObject, View paramView)
  {
    ((Transition)paramObject).setEpicenterCallback(new ﾞ(ˋ(paramView)));
  }
  
  public static void ˊ(Object paramObject, View paramView, boolean paramBoolean)
  {
    ((Transition)paramObject).excludeTarget(paramView, paramBoolean);
  }
  
  public static void ˊ(Object paramObject1, Object paramObject2, View paramView1, ﹳ.ˊ paramˊ, View paramView2, ﹳ.if paramif, Map<String, String> paramMap, ArrayList<View> paramArrayList1, Map<String, View> paramMap1, ArrayList<View> paramArrayList2)
  {
    if ((paramObject1 != null) || (paramObject2 != null))
    {
      paramObject1 = (Transition)paramObject1;
      if (paramObject1 != null) {
        paramObject1.addTarget(paramView2);
      }
      if (paramObject2 != null) {
        ˋ((Transition)paramObject2, paramArrayList2);
      }
      if (paramˊ != null) {
        paramView1.getViewTreeObserver().addOnPreDrawListener(new ʹ(paramView1, paramˊ, paramMap, paramMap1, paramObject1, paramArrayList1, paramView2));
      }
      ˊ(paramObject1, paramif);
    }
  }
  
  public static void ˊ(Object paramObject, ArrayList<View> paramArrayList)
  {
    paramObject = (Transition)paramObject;
    int i;
    if ((paramObject instanceof TransitionSet))
    {
      paramObject = (TransitionSet)paramObject;
      int j = paramObject.getTransitionCount();
      i = 0;
      while (i < j)
      {
        ˊ(paramObject.getTransitionAt(i), paramArrayList);
        i += 1;
      }
      return;
    }
    if (!ˊ(paramObject))
    {
      List localList = paramObject.getTargets();
      if ((localList != null) && (localList.size() == paramArrayList.size()) && (localList.containsAll(paramArrayList)))
      {
        i = paramArrayList.size() - 1;
        while (i >= 0)
        {
          paramObject.removeTarget((View)paramArrayList.get(i));
          i -= 1;
        }
      }
    }
  }
  
  private static void ˊ(ArrayList<View> paramArrayList, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        if (paramView.isTransitionGroup())
        {
          paramArrayList.add(paramView);
        }
        else
        {
          int j = paramView.getChildCount();
          int i = 0;
          while (i < j)
          {
            ˊ(paramArrayList, paramView.getChildAt(i));
            i += 1;
          }
        }
        return;
      }
      paramArrayList.add(paramView);
    }
  }
  
  public static void ˊ(Map<String, View> paramMap, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      String str = paramView.getTransitionName();
      if (str != null) {
        paramMap.put(str, paramView);
      }
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int j = paramView.getChildCount();
        int i = 0;
        while (i < j)
        {
          ˊ(paramMap, paramView.getChildAt(i));
          i += 1;
        }
      }
    }
  }
  
  private static boolean ˊ(Transition paramTransition)
  {
    return (!ˊ(paramTransition.getTargetIds())) || (!ˊ(paramTransition.getTargetNames())) || (!ˊ(paramTransition.getTargetTypes()));
  }
  
  private static boolean ˊ(List paramList)
  {
    return (paramList == null) || (paramList.isEmpty());
  }
  
  private static Rect ˋ(View paramView)
  {
    Rect localRect = new Rect();
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    localRect.set(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + paramView.getWidth(), arrayOfInt[1] + paramView.getHeight());
    return localRect;
  }
  
  public static void ˋ(Object paramObject, ArrayList<View> paramArrayList)
  {
    paramObject = (Transition)paramObject;
    int j;
    int i;
    if ((paramObject instanceof TransitionSet))
    {
      paramObject = (TransitionSet)paramObject;
      j = paramObject.getTransitionCount();
      i = 0;
      while (i < j)
      {
        ˋ(paramObject.getTransitionAt(i), paramArrayList);
        i += 1;
      }
      return;
    }
    if ((!ˊ(paramObject)) && (ˊ(paramObject.getTargets())))
    {
      j = paramArrayList.size();
      i = 0;
      while (i < j)
      {
        paramObject.addTarget((View)paramArrayList.get(i));
        i += 1;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹³
 * JD-Core Version:    0.7.0.1
 */