.class public Lo/ι;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ι$if;
    }
.end annotation


# static fields
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mAllLoaderManagers:Lo/ﹴ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe74<Ljava/lang/String;Lo/\u1d35;>;"
        }
    .end annotation
.end field

.field mCheckedForLoaderManager:Z

.field final mContainer:Lo/con;

.field mCreated:Z

.field public final mFragments:Lo/ˉ;

.field final mHandler:Landroid/os/Handler;

.field mLoaderManager:Lo/ᴵ;

.field mLoadersStarted:Z

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mResumed:Z

.field public mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lo/ʾ;

    invoke-direct {v0, p0}, Lo/ʾ;-><init>(Lo/ι;)V

    iput-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lo/ˉ;

    invoke-direct {v0}, Lo/ˉ;-><init>()V

    iput-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    .line 107
    new-instance v0, Lo/ʿ;

    invoke-direct {v0, p0}, Lo/ʿ;-><init>(Lo/ι;)V

    iput-object v0, p0, Lo/ι;->mContainer:Lo/con;

    .line 134
    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5

    .line 742
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    if-nez p3, :cond_0

    .line 744
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    return-void

    .line 747
    :cond_0
    invoke-static {p3}, Lo/ι;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 749
    return-void

    .line 751
    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 752
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 753
    if-gtz v3, :cond_2

    .line 754
    return-void

    .line 756
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 757
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 758
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo/ι;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 757
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 760
    :cond_3
    return-void
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 677
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 682
    :sswitch_0
    const/16 v0, 0x56

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 683
    :sswitch_1
    const/16 v0, 0x49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 684
    :sswitch_2
    const/16 v0, 0x47

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 685
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_2

    :cond_0
    const/16 v0, 0x2e

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x45

    goto :goto_3

    :cond_1
    const/16 v0, 0x2e

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    goto :goto_4

    :cond_2
    const/16 v0, 0x44

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x48

    goto :goto_5

    :cond_3
    const/16 v0, 0x2e

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x56

    goto :goto_6

    :cond_4
    const/16 v0, 0x2e

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x43

    goto :goto_7

    :cond_5
    const/16 v0, 0x2e

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x4c

    goto :goto_8

    :cond_6
    const/16 v0, 0x2e

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x46

    goto :goto_9

    :cond_7
    const/16 v0, 0x2e

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x53

    goto :goto_a

    :cond_8
    const/16 v0, 0x2e

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x50

    goto :goto_b

    :cond_9
    const/16 v0, 0x2e

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 698
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 700
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 704
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    .line 707
    const/4 v0, -0x1

    if-eq v2, v0, :cond_a

    .line 708
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 711
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 714
    const/high16 v0, -0x1000000

    and-int/2addr v0, v2

    sparse-switch v0, :sswitch_data_1

    goto :goto_c

    .line 716
    :sswitch_3
    const-string v4, "app"

    .line 717
    goto :goto_d

    .line 719
    :sswitch_4
    const-string v4, "android"

    .line 720
    goto :goto_d

    .line 722
    :goto_c
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 725
    :goto_d
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 726
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 727
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    goto :goto_e

    .line 733
    :catch_0
    move-exception v4

    .line 737
    :cond_a
    :goto_e
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method doReallyStop(Z)V
    .locals 2

    .line 763
    iget-boolean v0, p0, Lo/ι;->mReallyStopped:Z

    if-nez v0, :cond_0

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mReallyStopped:Z

    .line 765
    iput-boolean p1, p0, Lo/ι;->mRetaining:Z

    .line 766
    iget-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    invoke-virtual {p0}, Lo/ι;->onReallyStop()V

    .line 769
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 649
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 653
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 657
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    iget-boolean v0, p0, Lo/ι;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-boolean v0, p0, Lo/ι;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mStopped="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-boolean v0, p0, Lo/ι;->mStopped:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReallyStopped="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    iget-boolean v0, p0, Lo/ι;->mReallyStopped:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 662
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    iget-boolean v0, p0, Lo/ι;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 664
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

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

    .line 670
    :cond_0
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/ˉ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 671
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/ι;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Lo/ι;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 673
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 613
    invoke-virtual {p0}, Lo/ι;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ι$if;

    move-object v1, v0

    .line 615
    if-eqz v1, :cond_0

    iget-object v0, v1, Lo/ι$if;->ᐟ:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLoaderManager(Ljava/lang/String;ZZ)Lo/ᴵ;
    .locals 2

    .line 866
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lo/ﹴ;

    invoke-direct {v0}, Lo/ﹴ;-><init>()V

    iput-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    .line 869
    :cond_0
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0, p1}, Lo/ﹴ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴵ;

    move-object v1, v0

    .line 870
    if-nez v1, :cond_1

    .line 871
    if-eqz p3, :cond_2

    .line 872
    new-instance v1, Lo/ᴵ;

    invoke-direct {v1, p1, p0, p2}, Lo/ᴵ;-><init>(Ljava/lang/String;Lo/ι;Z)V

    .line 873
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0, p1, v1}, Lo/ﹴ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {v1, p0}, Lo/ᴵ;->ˊ(Lo/ι;)V

    .line 878
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSupportFragmentManager()Lo/ˈ;
    .locals 1

    .line 808
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    return-object v0
.end method

.method public getSupportLoaderManager()Lo/ٴ;
    .locals 3

    .line 857
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    return-object v0

    .line 860
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mCheckedForLoaderManager:Z

    .line 861
    const-string v0, "(root)"

    iget-boolean v1, p0, Lo/ι;->mLoadersStarted:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lo/ι;->getLoaderManager(Ljava/lang/String;ZZ)Lo/ᴵ;

    move-result-object v0

    iput-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    .line 862
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    return-object v0
.end method

.method invalidateSupportFragment(Ljava/lang/String;)V
    .locals 2

    .line 840
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0, p1}, Lo/ﹴ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴵ;

    move-object v1, v0

    .line 842
    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lo/ᴵ;->mRetaining:Z

    if-nez v0, :cond_0

    .line 843
    invoke-virtual {v1}, Lo/ᴵ;->ᴵ()V

    .line 844
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0, p1}, Lo/ﹴ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 151
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 152
    shr-int/lit8 v3, p1, 0x10

    .line 153
    if-eqz v3, :cond_3

    .line 154
    add-int/lit8 v3, v3, -0x1

    .line 155
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz v3, :cond_0

    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    .line 156
    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v4, v0

    .line 161
    if-nez v4, :cond_2

    .line 162
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v4, v0, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    :goto_0
    return-void

    .line 170
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 801
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lo/ι;->supportFinishAfterTransition()V

    .line 181
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0, p1}, Lo/ˉ;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 251
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    iget-object v1, p0, Lo/ι;->mContainer:Lo/con;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lo/ˉ;->ˊ(Lo/ι;Lo/con;Landroid/support/v4/app/Fragment;)V

    .line 253
    invoke-virtual {p0}, Lo/ι;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lo/ι;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0}, Lo/ι;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ι$if;

    move-object v3, v0

    .line 261
    if-eqz v3, :cond_1

    .line 262
    iget-object v0, v3, Lo/ι$if;->ᒽ:Lo/ﹴ;

    iput-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    .line 264
    :cond_1
    if-eqz p1, :cond_3

    .line 265
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 266
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    if-eqz v3, :cond_2

    iget-object v1, v3, Lo/ι$if;->ᐪ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v4, v1}, Lo/ˉ;->ˊ(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 268
    :cond_3
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʾ()V

    .line 269
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    .line 276
    if-nez p1, :cond_1

    .line 277
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    .line 278
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {p0}, Lo/ι;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lo/ˉ;->ˊ(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 280
    return v2

    .line 285
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3

    .line 296
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lo/ˉ;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 301
    if-nez v2, :cond_1

    .line 302
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 304
    :cond_1
    return-object v2
.end method

.method protected onDestroy()V
    .locals 1

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ι;->doReallyStop(Z)V

    .line 316
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˑ()V

    .line 317
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ᴵ()V

    .line 320
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lo/ι;->onBackPressed()V

    .line 333
    const/4 v0, 0x1

    return v0

    .line 336
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 345
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ـ()V

    .line 346
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 353
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 359
    :sswitch_0
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0, p2}, Lo/ˉ;->ˊ(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 362
    :sswitch_1
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0, p2}, Lo/ˉ;->ˋ(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 365
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 408
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 409
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 410
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 374
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 376
    :sswitch_0
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0, p2}, Lo/ˉ;->ˋ(Landroid/view/Menu;)V

    .line 379
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 380
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ι;->mResumed:Z

    .line 389
    iget-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    invoke-virtual {p0}, Lo/ι;->onResumeFragments()V

    .line 393
    :cond_0
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˉ()V

    .line 394
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 435
    iget-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    invoke-virtual {p0}, Lo/ι;->onResumeFragments()V

    .line 437
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʻ()Z

    .line 438
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 472
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .line 455
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 456
    iget-boolean v0, p0, Lo/ι;->mOptionsMenuInvalidated:Z

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ι;->mOptionsMenuInvalidated:Z

    .line 458
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 459
    invoke-virtual {p0, p1, p3}, Lo/ι;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 461
    :cond_0
    invoke-virtual {p0, p2, p3}, Lo/ι;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 462
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0, p3}, Lo/ˉ;->ˊ(Landroid/view/Menu;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 463
    return v1

    .line 465
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method onReallyStop()V
    .locals 1

    .line 779
    iget-boolean v0, p0, Lo/ι;->mLoadersStarted:Z

    if-eqz v0, :cond_1

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ι;->mLoadersStarted:Z

    .line 781
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_1

    .line 782
    iget-boolean v0, p0, Lo/ι;->mRetaining:Z

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ﾞ()V

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ʹ()V

    .line 790
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˌ()V

    .line 791
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 424
    iget-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mResumed:Z

    .line 426
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʻ()Z

    .line 427
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .line 447
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->dispatchResume()V

    .line 448
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 605
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 9

    .line 482
    iget-boolean v0, p0, Lo/ι;->mStopped:Z

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ι;->doReallyStop(Z)V

    .line 486
    :cond_0
    invoke-virtual {p0}, Lo/ι;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 488
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʽ()Ljava/util/ArrayList;

    move-result-object v3

    .line 489
    const/4 v4, 0x0

    .line 490
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0}, Lo/ﹴ;->size()I

    move-result v5

    .line 494
    new-array v6, v5, [Lo/ᴵ;

    .line 495
    add-int/lit8 v7, v5, -0x1

    :goto_0
    if-ltz v7, :cond_1

    .line 496
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0, v7}, Lo/ﹴ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴵ;

    aput-object v0, v6, v7

    .line 495
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 498
    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    .line 499
    aget-object v8, v6, v7

    .line 500
    iget-boolean v0, v8, Lo/ᴵ;->mRetaining:Z

    if-eqz v0, :cond_2

    .line 501
    const/4 v4, 0x1

    goto :goto_2

    .line 503
    :cond_2
    invoke-virtual {v8}, Lo/ᴵ;->ᴵ()V

    .line 504
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    iget-object v1, v8, Lo/ᴵ;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ﹴ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 508
    :cond_3
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 509
    const/4 v0, 0x0

    return-object v0

    .line 512
    :cond_4
    new-instance v5, Lo/ι$if;

    invoke-direct {v5}, Lo/ι$if;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, v5, Lo/ι$if;->יּ:Ljava/lang/Object;

    .line 514
    iput-object v2, v5, Lo/ι$if;->ᐟ:Ljava/lang/Object;

    .line 515
    const/4 v0, 0x0

    iput-object v0, v5, Lo/ι$if;->ᐡ:Lo/ﹴ;

    .line 516
    iput-object v3, v5, Lo/ι$if;->ᐪ:Ljava/util/ArrayList;

    .line 517
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    iput-object v0, v5, Lo/ι$if;->ᒽ:Lo/ﹴ;

    .line 518
    return-object v5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 526
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 527
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ͺ()Landroid/os/Parcelable;

    move-result-object v1

    .line 528
    if-eqz v1, :cond_0

    .line 529
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    .line 539
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ι;->mStopped:Z

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ι;->mReallyStopped:Z

    .line 543
    iget-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-boolean v0, p0, Lo/ι;->mCreated:Z

    if-nez v0, :cond_0

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mCreated:Z

    .line 547
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʿ()V

    .line 550
    :cond_0
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ι()V

    .line 551
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʻ()Z

    .line 553
    iget-boolean v0, p0, Lo/ι;->mLoadersStarted:Z

    if-nez v0, :cond_3

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mLoadersStarted:Z

    .line 555
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ﹳ()V

    goto :goto_0

    .line 557
    :cond_1
    iget-boolean v0, p0, Lo/ι;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_2

    .line 558
    const-string v0, "(root)"

    iget-boolean v1, p0, Lo/ι;->mLoadersStarted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lo/ι;->getLoaderManager(Ljava/lang/String;ZZ)Lo/ᴵ;

    move-result-object v0

    iput-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    .line 560
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    iget-boolean v0, v0, Lo/ᴵ;->וֹ:Z

    if-nez v0, :cond_2

    .line 561
    iget-object v0, p0, Lo/ι;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ﹳ()V

    .line 564
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mCheckedForLoaderManager:Z

    .line 568
    :cond_3
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ˈ()V

    .line 569
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    if-eqz v0, :cond_5

    .line 570
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0}, Lo/ﹴ;->size()I

    move-result v3

    .line 571
    new-array v4, v3, [Lo/ᴵ;

    .line 572
    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_4

    .line 573
    iget-object v0, p0, Lo/ι;->mAllLoaderManagers:Lo/ﹴ;

    invoke-virtual {v0, v5}, Lo/ﹴ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴵ;

    aput-object v0, v4, v5

    .line 572
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 575
    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 576
    aget-object v6, v4, v5

    .line 577
    invoke-virtual {v6}, Lo/ᴵ;->ՙ()V

    .line 578
    invoke-virtual {v6}, Lo/ᴵ;->ٴ()V

    .line 575
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 581
    :cond_5
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 588
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mStopped:Z

    .line 591
    iget-object v0, p0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 593
    iget-object v0, p0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->dispatchStop()V

    .line 594
    return-void
.end method

.method public setEnterSharedElementCallback(Lo/ᕀ;)V
    .locals 0

    .line 205
    invoke-static {p0, p1}, Lo/if;->ˊ(Landroid/app/Activity;Lo/ᕀ;)V

    .line 206
    return-void
.end method

.method public setExitSharedElementCallback(Lo/ᕀ;)V
    .locals 0

    .line 218
    invoke-static {p0, p1}, Lo/if;->ˋ(Landroid/app/Activity;Lo/ᕀ;)V

    .line 219
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 817
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 821
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    .line 828
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 829
    const/4 v0, -0x1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 830
    return-void

    .line 832
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 833
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 836
    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 193
    invoke-static {p0}, Lo/if;->ˊ(Landroid/app/Activity;)V

    .line 194
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 629
    invoke-static {p0}, Lo/ˋ;->ˏ(Landroid/app/Activity;)V

    .line 630
    return-void

    .line 635
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ι;->mOptionsMenuInvalidated:Z

    .line 636
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 226
    invoke-static {p0}, Lo/if;->ˋ(Landroid/app/Activity;)V

    .line 227
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 234
    invoke-static {p0}, Lo/if;->ˎ(Landroid/app/Activity;)V

    .line 235
    return-void
.end method
