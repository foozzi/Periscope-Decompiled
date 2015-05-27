.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$if;,
        Landroid/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Lo/ﹴ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe74<Ljava/lang/String;Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public mActivity:Lo/ι;

.field public mAdded:Z

.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field public mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field public mBackStackNesting:I

.field public mCalled:Z

.field mCheckedForLoaderManager:Z

.field public mChildFragmentManager:Lo/ˉ;

.field public mContainer:Landroid/view/ViewGroup;

.field public mContainerId:I

.field public mDeferStart:Z

.field public mDetached:Z

.field mEnterTransition:Ljava/lang/Object;

.field public mEnterTransitionCallback:Lo/ᕀ;

.field mExitTransition:Ljava/lang/Object;

.field public mExitTransitionCallback:Lo/ᕀ;

.field public mFragmentId:I

.field public mFragmentManager:Lo/ˉ;

.field public mFromLayout:Z

.field public mHasMenu:Z

.field public mHidden:Z

.field public mInLayout:Z

.field public mIndex:I

.field public mInnerView:Landroid/view/View;

.field public mLoaderManager:Lo/ᴵ;

.field mLoadersStarted:Z

.field public mMenuVisible:Z

.field public mNextAnim:I

.field public mParentFragment:Landroid/support/v4/app/Fragment;

.field mReenterTransition:Ljava/lang/Object;

.field public mRemoving:Z

.field public mRestored:Z

.field public mResumed:Z

.field public mRetainInstance:Z

.field public mRetaining:Z

.field mReturnTransition:Ljava/lang/Object;

.field public mSavedFragmentState:Landroid/os/Bundle;

.field public mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
        }
    .end annotation
.end field

.field mSharedElementEnterTransition:Ljava/lang/Object;

.field mSharedElementReturnTransition:Ljava/lang/Object;

.field public mState:I

.field public mStateAfterAnimating:I

.field public mTag:Ljava/lang/String;

.field public mTarget:Landroid/support/v4/app/Fragment;

.field public mTargetIndex:I

.field public mTargetRequestCode:I

.field public mUserVisibleHint:Z

.field public mView:Landroid/view/View;

.field public mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lo/ﹴ;

    invoke-direct {v0}, Lo/ﹴ;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Lo/ﹴ;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    .line 309
    sget-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    .line 311
    sget-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 313
    sget-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lo/ᕀ;

    .line 389
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 396
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 5

    .line 415
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Lo/ﹴ;

    invoke-virtual {v0, p1}, Lo/ﹴ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    .line 416
    if-nez v3, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 419
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Lo/ﹴ;

    invoke-virtual {v0, p1, v3}, Lo/ﹴ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v4, v0

    .line 422
    if-eqz p2, :cond_1

    .line 423
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 424
    iput-object p2, v4, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 426
    :cond_1
    return-object v4

    .line 427
    :catch_0
    move-exception v3

    .line 428
    new-instance v0, Landroid/support/v4/app/Fragment$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": make sure class name exists, is public, and has an"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " empty constructor that is public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/support/v4/app/Fragment$if;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 431
    :catch_1
    move-exception v3

    .line 432
    new-instance v0, Landroid/support/v4/app/Fragment$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": make sure class name exists, is public, and has an"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " empty constructor that is public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/support/v4/app/Fragment$if;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 435
    :catch_2
    move-exception v3

    .line 436
    new-instance v0, Landroid/support/v4/app/Fragment$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": make sure class name exists, is public, and has an"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " empty constructor that is public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/support/v4/app/Fragment$if;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 452
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Lo/ﹴ;

    invoke-virtual {v0, p1}, Lo/ﹴ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 453
    if-nez v1, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 456
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Lo/ﹴ;

    invoke-virtual {v0, p1, v1}, Lo/ﹴ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_0
    const-class v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1656
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1657
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1658
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1659
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1660
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1662
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1663
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1664
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1665
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1666
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1667
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1668
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1669
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1670
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1671
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1672
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1673
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1674
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1675
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1676
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1677
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1678
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1681
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    if-eqz v0, :cond_1

    .line 1682
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1685
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 1686
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1687
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1689
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1690
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1692
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1693
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1696
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1697
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1700
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    .line 1701
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1702
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1705
    :cond_6
    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_7

    .line 1706
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1708
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1709
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1711
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1712
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1714
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1715
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1717
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1718
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1719
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1720
    iget v0, p0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1722
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_c

    .line 1723
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lo/ᴵ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1726
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_d

    .line 1727
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lo/ˉ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1730
    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 494
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 1733
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1734
    return-object p0

    .line 1736
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_1

    .line 1737
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p1}, Lo/ˉ;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    .line 1739
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActivity()Lo/ι;
    .locals 1

    .line 612
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 1619
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 1643
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .line 559
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Lo/ˈ;
    .locals 2

    .line 677
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-nez v0, :cond_3

    .line 678
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 679
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 680
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->dispatchResume()V

    goto :goto_0

    .line 681
    :cond_0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 682
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˈ()V

    goto :goto_0

    .line 683
    :cond_1
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 684
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʿ()V

    goto :goto_0

    .line 685
    :cond_2
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 686
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʾ()V

    .line 689
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    return-object v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 1434
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    .line 1502
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFragmentManager()Lo/ˈ;
    .locals 1

    .line 669
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 530
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    .line 934
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 935
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lo/ˈ;

    .line 936
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ᐧ()Lo/ᕑ;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ᔉ;->ˊ(Landroid/view/LayoutInflater;Lo/ᕑ;)V

    .line 937
    return-object v2
.end method

.method public getLoaderManager()Lo/ٴ;
    .locals 4

    .line 878
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    return-object v0

    .line 881
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    if-nez v0, :cond_1

    .line 882
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 885
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lo/ι;->getLoaderManager(Ljava/lang/String;ZZ)Lo/ᴵ;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    .line 886
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    return-object v0
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 697
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    .line 1535
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .line 619
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .line 808
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 1468
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 1562
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    .line 642
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 655
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 598
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .line 605
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 632
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .line 871
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1065
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 501
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public initState()V
    .locals 1

    .line 1215
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1218
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1220
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 1221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1222
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1224
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    .line 1225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    .line 1226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    .line 1227
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 1228
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1231
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1233
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1236
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    .line 1743
    new-instance v0, Lo/ˉ;

    invoke-direct {v0}, Lo/ˉ;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    .line 1744
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    new-instance v2, Lo/ʽ;

    invoke-direct {v2, p0}, Lo/ʽ;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lo/ˉ;->ˊ(Lo/ι;Lo/con;Landroid/support/v4/app/Fragment;)V

    .line 1759
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .line 704
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDetached()Z
    .locals 1

    .line 713
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    return v0
.end method

.method public final isInBackStack()Z
    .locals 1

    .line 487
    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 750
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1082
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1083
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 926
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 992
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1154
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1017
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    .line 998
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1339
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Lo/ι;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/ι;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1340
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1260
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 1196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1199
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1201
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/ι;->getLoaderManager(Ljava/lang/String;ZZ)Lo/ᴵ;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    .line 1203
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ᴵ()V

    .line 1206
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .line 1287
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1189
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1244
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 783
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 984
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1176
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1319
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1163
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1277
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1128
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1150
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1108
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1110
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1112
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/ι;->getLoaderManager(Ljava/lang/String;ZZ)Lo/ᴵ;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    .line 1114
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ﹳ()V

    .line 1118
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1172
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1055
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1097
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1098
    return-void
.end method

.method public performActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1793
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 1796
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1797
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1798
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1799
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1802
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_2

    .line 1803
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʿ()V

    .line 1805
    :cond_2
    return-void
.end method

.method public performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1844
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1845
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p1}, Lo/ˉ;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1848
    :cond_0
    return-void
.end method

.method public performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1911
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1912
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    const/4 v0, 0x1

    return v0

    .line 1915
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_1

    .line 1916
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p1}, Lo/ˉ;->ˋ(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    const/4 v0, 0x1

    return v0

    .line 1921
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1762
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 1765
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1766
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1767
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1768
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1771
    :cond_1
    if-eqz p1, :cond_3

    .line 1772
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1774
    if-eqz v3, :cond_3

    .line 1775
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-nez v0, :cond_2

    .line 1776
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 1778
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lo/ˉ;->ˊ(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1779
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʾ()V

    .line 1782
    :cond_3
    return-void
.end method

.method public performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 1867
    const/4 v1, 0x0

    .line 1868
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1869
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 1870
    const/4 v1, 0x1

    .line 1871
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1873
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_1

    .line 1874
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p1, p2}, Lo/ˉ;->ˊ(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 1877
    :cond_1
    return v1
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1786
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1787
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 1789
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public performDestroy()V
    .locals 3

    .line 2005
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˑ()V

    .line 2008
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2009
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2010
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2011
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2014
    :cond_1
    return-void
.end method

.method public performDestroyView()V
    .locals 3

    .line 1990
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˍ()V

    .line 1993
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1994
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1995
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1996
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_2

    .line 2000
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->י()V

    .line 2002
    :cond_2
    return-void
.end method

.method public performLowMemory()V
    .locals 1

    .line 1851
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1852
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ـ()V

    .line 1855
    :cond_0
    return-void
.end method

.method public performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1895
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1896
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 1897
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1898
    const/4 v0, 0x1

    return v0

    .line 1901
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_1

    .line 1902
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p1}, Lo/ˉ;->ˊ(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1903
    const/4 v0, 0x1

    return v0

    .line 1907
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1925
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1926
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 1927
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1929
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_1

    .line 1930
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p1}, Lo/ˉ;->ˋ(Landroid/view/Menu;)V

    .line 1933
    :cond_1
    return-void
.end method

.method public performPause()V
    .locals 3

    .line 1946
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˉ()V

    .line 1949
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1950
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 1951
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1952
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1955
    :cond_1
    return-void
.end method

.method public performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1881
    const/4 v1, 0x0

    .line 1882
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1883
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 1884
    const/4 v1, 0x1

    .line 1885
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1887
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_1

    .line 1888
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p1}, Lo/ˉ;->ˊ(Landroid/view/Menu;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 1891
    :cond_1
    return v1
.end method

.method public performReallyStop()V
    .locals 4

    .line 1970
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˌ()V

    .line 1973
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_3

    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1975
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    .line 1976
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1977
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/ι;->getLoaderManager(Ljava/lang/String;ZZ)Lo/ᴵ;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    .line 1979
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_3

    .line 1980
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    iget-boolean v0, v0, Lo/ι;->mRetaining:Z

    if-nez v0, :cond_2

    .line 1981
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ﾞ()V

    goto :goto_0

    .line 1983
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ʹ()V

    .line 1987
    :cond_3
    :goto_0
    return-void
.end method

.method public performResume()V
    .locals 3

    .line 1827
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 1829
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʻ()Z

    .line 1831
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1832
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 1833
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1834
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1837
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_2

    .line 1838
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->dispatchResume()V

    .line 1839
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʻ()Z

    .line 1841
    :cond_2
    return-void
.end method

.method public performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1936
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1937
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1938
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ͺ()Landroid/os/Parcelable;

    move-result-object v1

    .line 1939
    if-eqz v1, :cond_0

    .line 1940
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1943
    :cond_0
    return-void
.end method

.method public performStart()V
    .locals 3

    .line 1808
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 1810
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʻ()Z

    .line 1812
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1813
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 1814
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1815
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1818
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˈ()V

    .line 1821
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_3

    .line 1822
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ٴ()V

    .line 1824
    :cond_3
    return-void
.end method

.method public performStop()V
    .locals 3

    .line 1958
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->dispatchStop()V

    .line 1961
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1962
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 1963
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1964
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1967
    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    .line 1353
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1354
    return-void
.end method

.method public final restoreViewState(Landroid/os/Bundle;)V
    .locals 3

    .line 465
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 469
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 470
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 471
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 472
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1

    .line 1607
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 1608
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1

    .line 1631
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 1632
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    .line 548
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 552
    return-void
.end method

.method public setEnterSharedElementCallback(Lo/ᕀ;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    .line 1397
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    .line 1422
    return-void
.end method

.method public setExitSharedElementCallback(Lo/ᕀ;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lo/ᕀ;

    .line 1408
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    .line 1487
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 819
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 820
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    .line 821
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->supportInvalidateOptionsMenu()V

    .line 825
    :cond_0
    return-void
.end method

.method public final setIndex(ILandroid/support/v4/app/Fragment;)V
    .locals 2

    .line 478
    iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 479
    if-eqz p2, :cond_0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 484
    :goto_0
    return-void
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .locals 2

    .line 571
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->ᵣ:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->ᵣ:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 576
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 837
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 838
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 839
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->supportInvalidateOptionsMenu()V

    .line 843
    :cond_0
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 0

    .line 1519
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    .line 1520
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 2

    .line 800
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 801
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 805
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    .line 1453
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 0

    .line 1549
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 1550
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 1579
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 0

    .line 590
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 591
    iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 592
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 859
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    invoke-virtual {v0, p0}, Lo/ˉ;->ˋ(Landroid/support/v4/app/Fragment;)V

    .line 862
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 863
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 864
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    .line 894
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    if-nez v0, :cond_0

    .line 895
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lo/ι;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 898
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .line 905
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    invoke-virtual {v0, p0, p1, p2}, Lo/ι;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 909
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 507
    invoke-static {p0, v1}, Lo/ᵓ;->ˊ(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 508
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 509
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    :cond_0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_1

    .line 513
    const-string v0, " id=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 517
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1364
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1365
    return-void
.end method
