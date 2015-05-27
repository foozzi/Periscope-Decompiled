.class public final Lo/ˉ;
.super Lo/ˈ;
.source ""

# interfaces
.implements Lo/ᕑ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ˉ$if;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field static final ᔇ:Z

.field static final ᵌ:Landroid/view/animation/Interpolator;

.field static final ᵓ:Landroid/view/animation/Interpolator;

.field static final ᵙ:Landroid/view/animation/Interpolator;

.field static final ᵛ:Landroid/view/animation/Interpolator;


# instance fields
.field mActivity:Lo/ι;

.field mContainer:Lo/con;

.field ı:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u02ce;>;"
        }
    .end annotation
.end field

.field ǃ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field ʲ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u02c8$if;>;"
        }
    .end annotation
.end field

.field ː:I

.field ˣ:Landroid/support/v4/app/Fragment;

.field ו:Z

.field ۦ:Z

.field เ:Z

.field Ꭵ:Ljava/lang/String;

.field ᐤ:Z

.field ᒡ:Landroid/os/Bundle;

.field ᒢ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
        }
    .end annotation
.end field

.field ᔈ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
        }
    .end annotation
.end field

.field ᖮ:Ljava/lang/Runnable;

.field ᗮ:[Ljava/lang/Runnable;

.field ᴶ:Z

.field public ᴸ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
        }
    .end annotation
.end field

.field ᵀ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
        }
    .end annotation
.end field

.field ᵋ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field ᵗ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u02ce;>;"
        }
    .end annotation
.end field

.field ﾟ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 414
    const/4 v0, 0x0

    sput-boolean v0, Lo/ˉ;->DEBUG:Z

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/ˉ;->ᔇ:Z

    .line 750
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lo/ˉ;->ᵌ:Landroid/view/animation/Interpolator;

    .line 751
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lo/ˉ;->ᵓ:Landroid/view/animation/Interpolator;

    .line 752
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lo/ˉ;->ᵙ:Landroid/view/animation/Interpolator;

    .line 753
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lo/ˉ;->ᵛ:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 413
    invoke-direct {p0}, Lo/ˈ;-><init>()V

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lo/ˉ;->ː:I

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->ᒡ:Landroid/os/Bundle;

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    .line 455
    new-instance v0, Lo/ˌ;

    invoke-direct {v0, p0}, Lo/ˌ;-><init>(Lo/ˉ;)V

    iput-object v0, p0, Lo/ˉ;->ᖮ:Ljava/lang/Runnable;

    .line 2216
    return-void
.end method

.method static ˊ(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 3

    .line 773
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 774
    sget-object v0, Lo/ˉ;->ᵓ:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 775
    const-wide/16 v0, 0xdc

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 776
    return-object v2
.end method

.method static ˊ(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 12

    .line 759
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 760
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v10, v0

    .line 762
    sget-object v0, Lo/ˉ;->ᵌ:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 763
    const-wide/16 v0, 0xdc

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 764
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 765
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    move/from16 v0, p4

    invoke-direct {v11, p3, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 766
    sget-object v0, Lo/ˉ;->ᵓ:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 767
    const-wide/16 v0, 0xdc

    invoke-virtual {v11, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 768
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 769
    return-object v9
.end method

.method private ˊ(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 463
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v4, Lo/ᵙ;

    const-string v0, "FragmentManager"

    invoke-direct {v4, v0}, Lo/ᵙ;-><init>(Ljava/lang/String;)V

    .line 466
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 467
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    if-eqz v0, :cond_0

    .line 469
    :try_start_0
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    const-string v1, "  "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v5, v2}, Lo/ι;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    goto :goto_0

    .line 470
    :catch_0
    move-exception v6

    .line 471
    const-string v0, "FragmentManager"

    const-string v1, "Failed dumping state"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    goto :goto_0

    .line 475
    :cond_0
    const-string v0, "  "

    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v5, v1}, Lo/ˉ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    goto :goto_0

    .line 476
    :catch_1
    move-exception v6

    .line 477
    const-string v0, "FragmentManager"

    const-string v1, "Failed dumping state"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    :goto_0
    throw p1
.end method

.method public static ˋ(IZ)I
    .locals 2

    .line 2105
    const/4 v1, -0x1

    .line 2106
    sparse-switch p0, :sswitch_data_0

    goto :goto_2

    .line 2108
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 2109
    :goto_0
    goto :goto_2

    .line 2111
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 2112
    :goto_1
    goto :goto_2

    .line 2114
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :cond_2
    const/4 v1, 0x6

    .line 2117
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method public static ᐝ(I)I
    .locals 2

    .line 2081
    const/4 v1, 0x0

    .line 2082
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 2084
    :sswitch_0
    const/16 v1, 0x2002

    .line 2085
    goto :goto_0

    .line 2087
    :sswitch_1
    const/16 v1, 0x1001

    .line 2088
    goto :goto_0

    .line 2090
    :sswitch_2
    const/16 v1, 0x1003

    .line 2093
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private ᐝ()V
    .locals 3

    .line 1376
    iget-boolean v0, p0, Lo/ˉ;->ۦ:Z

    if-eqz v0, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_0
    iget-object v0, p0, Lo/ˉ;->Ꭵ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1381
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ˉ;->Ꭵ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1384
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1973
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1974
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1975
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v2, v0

    .line 1976
    if-eqz v2, :cond_0

    .line 1977
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1974
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1981
    :cond_1
    return-void
.end method

.method public dispatchResume()V
    .locals 2

    .line 1938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ۦ:Z

    .line 1939
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1940
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .line 1950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ۦ:Z

    .line 1952
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1953
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 644
    if-lez v3, :cond_1

    .line 645
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 649
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 650
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 651
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 652
    if-eqz v5, :cond_0

    .line 653
    invoke-virtual {v5, v2, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 648
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 661
    if-lez v3, :cond_2

    .line 662
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 664
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 665
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 666
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 671
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ﾟ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 672
    iget-object v0, p0, Lo/ˉ;->ﾟ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 673
    if-lez v3, :cond_3

    .line 674
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 676
    iget-object v0, p0, Lo/ˉ;->ﾟ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 677
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 678
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 683
    :cond_3
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 684
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 685
    if-lez v3, :cond_4

    .line 686
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    .line 688
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˎ;

    move-object v5, v0

    .line 689
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 690
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lo/ˎ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v5, v2, p2, p3, p4}, Lo/ˎ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 687
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 696
    :cond_4
    move-object v4, p0

    monitor-enter v4

    .line 697
    :try_start_0
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 698
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 699
    if-lez v3, :cond_5

    .line 700
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_5

    .line 702
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˎ;

    move-object v6, v0

    .line 703
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 704
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 701
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 709
    :cond_5
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 710
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    :cond_6
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception v7

    monitor-exit v4

    throw v7

    .line 715
    :goto_5
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 716
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 717
    if-lez v3, :cond_7

    .line 718
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_7

    .line 720
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v5, v0

    .line 721
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 722
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 719
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 727
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 729
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ˉ;->mContainer:Lo/con;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 731
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 733
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lo/ˉ;->ː:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 734
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/ˉ;->ۦ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 735
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/ˉ;->เ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 736
    iget-boolean v0, p0, Lo/ˉ;->ו:Z

    if-eqz v0, :cond_9

    .line 737
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    iget-boolean v0, p0, Lo/ˉ;->ו:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 740
    :cond_9
    iget-object v0, p0, Lo/ˉ;->Ꭵ:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 741
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lo/ˉ;->Ꭵ:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    :cond_a
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 745
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    :cond_b
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 490
    invoke-virtual {p0}, Lo/ˉ;->ʻ()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 1320
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1323
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 1324
    if-eqz v3, :cond_0

    iget v0, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v0, p1, :cond_0

    .line 1325
    return-object v3

    .line 1322
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1329
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1331
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1332
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 1333
    if-eqz v3, :cond_2

    iget v0, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v0, p1, :cond_2

    .line 1334
    return-object v3

    .line 1331
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1338
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 1342
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1344
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1345
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 1346
    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    return-object v3

    .line 1344
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1351
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1353
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1354
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 1355
    if-eqz v3, :cond_2

    iget-object v0, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1356
    return-object v3

    .line 1353
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1360
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 1364
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1365
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1366
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 1367
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1368
    return-object v3

    .line 1365
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1372
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12

    .line 2122
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2123
    const/4 v0, 0x0

    return-object v0

    .line 2126
    :cond_0
    const-string v0, "class"

    move-object/from16 v1, p4

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2127
    sget-object v0, Lo/ˉ$if;->ﹾ:[I

    move-object/from16 v1, p4

    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2128
    if-nez v6, :cond_1

    .line 2129
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2131
    :cond_1
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 2132
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2133
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2135
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-static {v0, v6}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2138
    const/4 v0, 0x0

    return-object v0

    .line 2141
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    .line 2142
    :goto_0
    const/4 v0, -0x1

    if-ne v10, v0, :cond_4

    const/4 v0, -0x1

    if-ne v8, v0, :cond_4

    if-nez v9, :cond_4

    .line 2143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2150
    :cond_4
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    invoke-virtual {p0, v8}, Lo/ˉ;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v11

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 2151
    :goto_1
    if-nez v11, :cond_6

    if-eqz v9, :cond_6

    .line 2152
    invoke-virtual {p0, v9}, Lo/ˉ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    .line 2154
    :cond_6
    if-nez v11, :cond_7

    const/4 v0, -0x1

    if-eq v10, v0, :cond_7

    .line 2155
    invoke-virtual {p0, v10}, Lo/ˉ;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v11

    .line 2158
    :cond_7
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView: id=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " existing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_8
    if-nez v11, :cond_a

    .line 2162
    invoke-static {p3, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    .line 2163
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 2164
    if-eqz v8, :cond_9

    move v0, v8

    goto :goto_2

    :cond_9
    move v0, v10

    :goto_2
    iput v0, v11, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 2165
    iput v10, v11, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2166
    iput-object v9, v11, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 2167
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2168
    iput-object p0, v11, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    .line 2169
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v1, v11, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v2, p4

    invoke-virtual {v11, v0, v2, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2170
    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_3

    .line 2172
    :cond_a
    iget-boolean v0, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_b

    .line 2175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2182
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2186
    iget-boolean v0, v11, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_c

    .line 2187
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v1, v11, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v2, p4

    invoke-virtual {v11, v0, v2, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2193
    :cond_c
    :goto_3
    iget v0, p0, Lo/ˉ;->ː:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_d

    iget-boolean v0, v11, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_d

    .line 2194
    move-object v0, p0

    move-object v1, v11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_4

    .line 2196
    :cond_d
    invoke-virtual {p0, v11}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;)V

    .line 2199
    :goto_4
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 2200
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2203
    :cond_e
    if-eqz v8, :cond_f

    .line 2204
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    .line 2206
    :cond_f
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2207
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2209
    :cond_10
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public popBackStack(II)V
    .locals 3

    .line 527
    if-gez p1, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    new-instance v0, Lo/ˍ;

    invoke-direct {v0, p0, p1, p2}, Lo/ˍ;-><init>(Lo/ˉ;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(Ljava/lang/Runnable;Z)V

    .line 535
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .line 504
    invoke-direct {p0}, Lo/ˉ;->ᐝ()V

    .line 505
    invoke-virtual {p0}, Lo/ˉ;->executePendingTransactions()Z

    .line 506
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v0, v0, Lo/ι;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lo/ˉ;->ˊ(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 625
    const-string v0, "FragmentManager{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lo/ᵓ;->ˊ(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-static {v0, v1}, Lo/ᵓ;->ˊ(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 633
    :goto_0
    const-string v0, "}}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ʻ(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 1633
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1634
    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1637
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    goto :goto_0

    .line 1639
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1641
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1642
    iget-object v0, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1643
    iget-object v0, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->ᒢ:Landroid/util/SparseArray;

    .line 1646
    :cond_2
    return-void
.end method

.method public ʻ()Z
    .locals 6

    .line 1472
    iget-boolean v0, p0, Lo/ˉ;->ᴶ:Z

    if-eqz v0, :cond_0

    .line 1473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v1, v1, Lo/ι;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_1
    const/4 v2, 0x0

    .line 1485
    :goto_0
    move-object v4, p0

    monitor-enter v4

    .line 1486
    :try_start_0
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1487
    :cond_2
    monitor-exit v4

    goto :goto_3

    .line 1490
    :cond_3
    :try_start_1
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1491
    iget-object v0, p0, Lo/ˉ;->ᗮ:[Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/ˉ;->ᗮ:[Ljava/lang/Runnable;

    array-length v0, v0

    if-ge v0, v3, :cond_5

    .line 1492
    :cond_4
    new-array v0, v3, [Ljava/lang/Runnable;

    iput-object v0, p0, Lo/ˉ;->ᗮ:[Ljava/lang/Runnable;

    .line 1494
    :cond_5
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ˉ;->ᗮ:[Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1495
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1496
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v0, v0, Lo/ι;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ˉ;->ᖮ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 1499
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ᴶ:Z

    .line 1500
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 1501
    iget-object v0, p0, Lo/ˉ;->ᗮ:[Ljava/lang/Runnable;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1502
    iget-object v0, p0, Lo/ˉ;->ᗮ:[Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    .line 1500
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1504
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ᴶ:Z

    .line 1505
    const/4 v2, 0x1

    .line 1506
    goto/16 :goto_0

    .line 1508
    :goto_3
    iget-boolean v0, p0, Lo/ˉ;->ᐤ:Z

    if-eqz v0, :cond_9

    .line 1509
    const/4 v3, 0x0

    .line 1510
    const/4 v4, 0x0

    :goto_4
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 1511
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 1512
    if-eqz v5, :cond_7

    iget-object v0, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_7

    .line 1513
    iget-object v0, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ᐨ()Z

    move-result v0

    or-int/2addr v3, v0

    .line 1510
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1516
    :cond_8
    if-nez v3, :cond_9

    .line 1517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ᐤ:Z

    .line 1518
    invoke-virtual {p0}, Lo/ˉ;->ˏ()V

    .line 1521
    :cond_9
    return v2
.end method

.method ʼ(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3

    .line 1649
    const/4 v2, 0x0

    .line 1651
    iget-object v0, p0, Lo/ˉ;->ᒡ:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1652
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᒡ:Landroid/os/Bundle;

    .line 1654
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ᒡ:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1655
    iget-object v0, p0, Lo/ˉ;->ᒡ:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1656
    iget-object v2, p0, Lo/ˉ;->ᒡ:Landroid/os/Bundle;

    .line 1657
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->ᒡ:Landroid/os/Bundle;

    .line 1660
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1661
    invoke-virtual {p0, p1}, Lo/ˉ;->ʻ(Landroid/support/v4/app/Fragment;)V

    .line 1663
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 1664
    if-nez v2, :cond_3

    .line 1665
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1667
    :cond_3
    const-string v0, "android:view_state"

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1670
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_6

    .line 1671
    if-nez v2, :cond_5

    .line 1672
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1675
    :cond_5
    const-string v0, "android:user_visible_hint"

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1678
    :cond_6
    return-object v2
.end method

.method ʼ()V
    .locals 2

    .line 1525
    iget-object v0, p0, Lo/ˉ;->ʲ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1526
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ʲ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1527
    iget-object v0, p0, Lo/ˉ;->ʲ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˈ$if;

    invoke-interface {v0}, Lo/ˈ$if;->onBackStackChanged()V

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1530
    :cond_0
    return-void
.end method

.method ʽ()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
        }
    .end annotation

    .line 1614
    const/4 v3, 0x0

    .line 1615
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1616
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 1617
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 1618
    if-eqz v5, :cond_2

    iget-boolean v0, v5, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v0, :cond_2

    .line 1619
    if-nez v3, :cond_0

    .line 1620
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1624
    iget-object v0, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    iput v0, v5, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1625
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retainNonConfig: keeping retained "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1629
    :cond_3
    return-object v3
.end method

.method public ʾ()V
    .locals 2

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ۦ:Z

    .line 1924
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1925
    return-void
.end method

.method public ʿ()V
    .locals 2

    .line 1928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ۦ:Z

    .line 1929
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1930
    return-void
.end method

.method public ˈ()V
    .locals 2

    .line 1933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ۦ:Z

    .line 1934
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1935
    return-void
.end method

.method public ˉ()V
    .locals 2

    .line 1943
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1944
    return-void
.end method

.method public ˊ(Lo/ˎ;)I
    .locals 6

    .line 1413
    move-object v3, p0

    monitor-enter v3

    .line 1414
    :try_start_0
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1415
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    .line 1418
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1419
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    monitor-exit v3

    return v4

    .line 1424
    :cond_3
    :try_start_1
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1425
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_4
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1427
    monitor-exit v3

    return v4

    .line 1429
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5
.end method

.method public ˊ(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5

    .line 583
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 584
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 585
    const/4 v0, 0x0

    return-object v0

    .line 587
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment no longer exists for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 591
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v4, v0

    .line 592
    if-nez v4, :cond_2

    .line 593
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment no longer exists for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 596
    :cond_2
    return-object v4
.end method

.method ˊ(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 7

    .line 781
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v5

    .line 783
    if-eqz v5, :cond_0

    .line 784
    return-object v5

    .line 787
    :cond_0
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 789
    if-eqz v6, :cond_1

    .line 790
    return-object v6

    .line 794
    :cond_1
    if-nez p2, :cond_2

    .line 795
    const/4 v0, 0x0

    return-object v0

    .line 798
    :cond_2
    invoke-static {p2, p3}, Lo/ˉ;->ˋ(IZ)I

    move-result v6

    .line 799
    if-gez v6, :cond_3

    .line 800
    const/4 v0, 0x0

    return-object v0

    .line 803
    :cond_3
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 805
    :pswitch_0
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    const/high16 v1, 0x3f900000    # 1.125f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Lo/ˉ;->ˊ(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 807
    :pswitch_1
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f79999a    # 0.975f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/ˉ;->ˊ(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 809
    :pswitch_2
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    const v1, 0x3f79999a    # 0.975f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Lo/ˉ;->ˊ(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 811
    :pswitch_3
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f89999a    # 1.075f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/ˉ;->ˊ(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 813
    :pswitch_4
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lo/ˉ;->ˊ(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 815
    :pswitch_5
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ˉ;->ˊ(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 818
    :goto_0
    if-nez p4, :cond_4

    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 819
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 821
    :cond_4
    if-nez p4, :cond_5

    .line 822
    const/4 v0, 0x0

    return-object v0

    .line 835
    :cond_5
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method ˊ(IIIZ)V
    .locals 9

    .line 1124
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_0
    if-nez p4, :cond_1

    iget v0, p0, Lo/ˉ;->ː:I

    if-ne v0, p1, :cond_1

    .line 1129
    return-void

    .line 1132
    :cond_1
    iput p1, p0, Lo/ˉ;->ː:I

    .line 1133
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1134
    const/4 v6, 0x0

    .line 1135
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1136
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v8, v0

    .line 1137
    if-eqz v8, :cond_2

    .line 1138
    move-object v0, p0

    move-object v1, v8

    move v2, p1

    move v3, p2

    move v4, p3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1139
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    if-eqz v0, :cond_2

    .line 1140
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mLoaderManager:Lo/ᴵ;

    invoke-virtual {v0}, Lo/ᴵ;->ᐨ()Z

    move-result v0

    or-int/2addr v6, v0

    .line 1135
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1145
    :cond_3
    if-nez v6, :cond_4

    .line 1146
    invoke-virtual {p0}, Lo/ˉ;->ˏ()V

    .line 1149
    :cond_4
    iget-boolean v0, p0, Lo/ˉ;->ו:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    if-eqz v0, :cond_5

    iget v0, p0, Lo/ˉ;->ː:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1150
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->supportInvalidateOptionsMenu()V

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ו:Z

    .line 1154
    :cond_5
    return-void
.end method

.method public ˊ(ILo/ˎ;)V
    .locals 6

    .line 1433
    move-object v3, p0

    monitor-enter v3

    .line 1434
    :try_start_0
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    .line 1437
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1438
    if-ge p1, v4, :cond_2

    .line 1439
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1442
    :cond_2
    :goto_0
    if-ge v4, p1, :cond_5

    .line 1443
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    .line 1447
    :cond_3
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding available back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_4
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1451
    :cond_5
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_6
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    :goto_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 1455
    :goto_2
    return-void
.end method

.method ˊ(IZ)V
    .locals 2

    .line 1120
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lo/ˉ;->ˊ(IIIZ)V

    .line 1121
    return-void
.end method

.method public ˊ(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 574
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 578
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    return-void
.end method

.method public ˊ(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/os/Parcelable;Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;)V"
        }
    .end annotation

    .line 1800
    if-nez p1, :cond_0

    return-void

    .line 1801
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentManagerState;

    move-object v3, v0

    .line 1802
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ɩ:[Landroid/support/v4/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    .line 1806
    :cond_1
    if-eqz p2, :cond_4

    .line 1807
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 1808
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 1809
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAllState: re-attaching retained "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_2
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ɩ:[Landroid/support/v4/app/FragmentState;

    iget v1, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v6, v0, v1

    .line 1811
    iput-object v5, v6, Landroid/support/v4/app/FragmentState;->ˁ:Landroid/support/v4/app/Fragment;

    .line 1812
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1813
    const/4 v0, 0x0

    iput v0, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1814
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1815
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1816
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1817
    iget-object v0, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1818
    iget-object v0, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {v1}, Lo/ι;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1819
    iget-object v0, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1821
    iget-object v0, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v0, v5, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1807
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1828
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v3, Landroid/support/v4/app/FragmentManagerState;->ɩ:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    .line 1829
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1830
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1832
    :cond_5
    const/4 v4, 0x0

    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ɩ:[Landroid/support/v4/app/FragmentState;

    array-length v0, v0

    if-ge v4, v0, :cond_a

    .line 1833
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ɩ:[Landroid/support/v4/app/FragmentState;

    aget-object v5, v0, v4

    .line 1834
    if-eqz v5, :cond_7

    .line 1835
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v1, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/app/FragmentState;->ˊ(Lo/ι;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 1836
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAllState: active #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_6
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v4/app/FragmentState;->ˁ:Landroid/support/v4/app/Fragment;

    .line 1842
    goto :goto_2

    .line 1843
    :cond_7
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 1845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    .line 1847
    :cond_8
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAllState: avail #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_9
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1853
    :cond_a
    if-eqz p2, :cond_d

    .line 1854
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_d

    .line 1855
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 1856
    iget v0, v5, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v0, :cond_c

    .line 1857
    iget v0, v5, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    iget-object v1, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 1858
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    iget v1, v5, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_4

    .line 1860
    :cond_b
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-attaching retained fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " target no longer exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1854
    :cond_c
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1869
    :cond_d
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ʵ:[I

    if-eqz v0, :cond_12

    .line 1870
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v3, Landroid/support/v4/app/FragmentManagerState;->ʵ:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    .line 1871
    const/4 v4, 0x0

    :goto_5
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ʵ:[I

    array-length v0, v0

    if-ge v4, v0, :cond_11

    .line 1872
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    iget-object v1, v3, Landroid/support/v4/app/FragmentManagerState;->ʵ:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 1873
    if-nez v5, :cond_e

    .line 1874
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No instantiated fragment for index #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroid/support/v4/app/FragmentManagerState;->ʵ:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 1877
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1878
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAllState: added #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_f
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1880
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_10
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_11
    goto :goto_6

    .line 1885
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    .line 1889
    :goto_6
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ʸ:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_16

    .line 1890
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v3, Landroid/support/v4/app/FragmentManagerState;->ʸ:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    .line 1891
    const/4 v4, 0x0

    :goto_7
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ʸ:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    if-ge v4, v0, :cond_15

    .line 1892
    iget-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->ʸ:[Landroid/support/v4/app/BackStackState;

    aget-object v0, v0, v4

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->ˊ(Lo/ˉ;)Lo/ˎ;

    move-result-object v5

    .line 1893
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 1894
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAllState: back stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lo/ˎ;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    new-instance v6, Lo/ᵙ;

    const-string v0, "FragmentManager"

    invoke-direct {v6, v0}, Lo/ᵙ;-><init>(Ljava/lang/String;)V

    .line 1897
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1898
    const-string v0, "  "

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v7, v1}, Lo/ˎ;->ˊ(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1900
    :cond_13
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    iget v0, v5, Lo/ˎ;->mIndex:I

    if-ltz v0, :cond_14

    .line 1902
    iget v0, v5, Lo/ˎ;->mIndex:I

    invoke-virtual {p0, v0, v5}, Lo/ˉ;->ˊ(ILo/ˎ;)V

    .line 1891
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_15
    goto :goto_8

    .line 1906
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    .line 1908
    :goto_8
    return-void
.end method

.method public ˊ(Landroid/support/v4/app/Fragment;II)V
    .locals 7

    .line 1224
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1226
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_2

    if-eqz v6, :cond_6

    .line 1227
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1228
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1230
    :cond_3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ו:Z

    .line 1233
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1235
    move-object v0, p0

    move-object v1, p1

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_1
    move v3, p2

    move v4, p3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1238
    :cond_6
    return-void
.end method

.method ˊ(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 8

    .line 853
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 854
    const/4 p2, 0x1

    .line 856
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_2

    .line 858
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 862
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_3

    .line 863
    const/4 p2, 0x3

    .line 865
    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, p2, :cond_1f

    .line 869
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_4

    .line 870
    return-void

    .line 872
    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 877
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 878
    move-object v0, p0

    move-object v1, p1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 880
    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 882
    :pswitch_0
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_6
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 884
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {v1}, Lo/ι;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 885
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 887
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 889
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    .line 890
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 893
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 895
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_8

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 897
    const/4 v0, 0x3

    if-le p2, v0, :cond_8

    .line 898
    const/4 p2, 0x3

    .line 902
    :cond_8
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    .line 903
    iget-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 904
    iget-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v0, v0, Lo/ι;->mFragments:Lo/ˉ;

    :goto_0
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 907
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 908
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_a

    .line 909
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_b

    .line 913
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {v0, p1}, Lo/ι;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 916
    :cond_b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_c

    .line 917
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 919
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 920
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_10

    .line 924
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 926
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 927
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    .line 929
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;Z)V

    goto :goto_1

    .line 931
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lo/ᵎ;->ˏ(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 933
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 934
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_2

    .line 936
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 940
    :cond_10
    :goto_2
    :pswitch_1
    const/4 v0, 0x1

    if-le p2, v0, :cond_1a

    .line 941
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_11
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_18

    .line 943
    const/4 v6, 0x0

    .line 944
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_12

    .line 945
    iget-object v0, p0, Lo/ˉ;->mContainer:Lo/con;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-interface {v0, v1}, Lo/con;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    .line 946
    if-nez v6, :cond_12

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v0, :cond_12

    .line 947
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 954
    :cond_12
    iput-object v6, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 955
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v6, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 957
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 958
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 959
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 960
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;Z)V

    goto :goto_3

    .line 962
    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lo/ᵎ;->ˏ(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 964
    :goto_3
    if-eqz v6, :cond_15

    .line 965
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0, p4}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v7

    .line 967
    if-eqz v7, :cond_14

    .line 968
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 970
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 972
    :cond_15
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 973
    :cond_16
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_4

    .line 975
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 979
    :cond_18
    :goto_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 980
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 981
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 983
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 987
    :cond_1a
    :pswitch_2
    const/4 v0, 0x3

    if-le p2, v0, :cond_1c

    .line 988
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_1b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 992
    :cond_1c
    :pswitch_3
    const/4 v0, 0x4

    if-le p2, v0, :cond_1e

    .line 993
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 995
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 996
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 997
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_1e
    :goto_5
    goto/16 :goto_6

    .line 1000
    :cond_1f
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, p2, :cond_32

    .line 1001
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_6

    .line 1003
    :pswitch_4
    const/4 v0, 0x5

    if-ge p2, v0, :cond_21

    .line 1004
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_20
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1009
    :cond_21
    :pswitch_5
    const/4 v0, 0x4

    if-ge p2, v0, :cond_23

    .line 1010
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_22
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1014
    :cond_23
    :pswitch_6
    const/4 v0, 0x3

    if-ge p2, v0, :cond_25

    .line 1015
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1019
    :cond_25
    :pswitch_7
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2b

    .line 1020
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_26
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 1024
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1025
    invoke-virtual {p0, p1}, Lo/ˉ;->ʻ(Landroid/support/v4/app/Fragment;)V

    .line 1028
    :cond_27
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1029
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2a

    .line 1030
    const/4 v6, 0x0

    .line 1031
    iget v0, p0, Lo/ˉ;->ː:I

    if-lez v0, :cond_28

    iget-boolean v0, p0, Lo/ˉ;->เ:Z

    if-nez v0, :cond_28

    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p4}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1035
    :cond_28
    if-eqz v6, :cond_29

    .line 1036
    move-object v7, p1

    .line 1037
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1038
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1039
    new-instance v0, Lo/ˑ;

    invoke-direct {v0, p0, v7}, Lo/ˑ;-><init>(Lo/ˉ;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1055
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1057
    :cond_29
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1059
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1064
    :cond_2b
    :pswitch_8
    const/4 v0, 0x1

    if-ge p2, v0, :cond_32

    .line 1065
    iget-boolean v0, p0, Lo/ˉ;->เ:Z

    if-eqz v0, :cond_2c

    .line 1066
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1073
    iget-object v6, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1074
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1075
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 1078
    :cond_2c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_2d

    .line 1083
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1084
    const/4 p2, 0x1

    goto/16 :goto_6

    .line 1086
    :cond_2d
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_2e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_2f

    .line 1088
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1091
    :cond_2f
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1092
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1093
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_30

    .line 1094
    new-instance v0, Lo/ᵕ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᵕ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_30
    if-nez p5, :cond_32

    .line 1098
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_31

    .line 1099
    invoke-virtual {p0, p1}, Lo/ˉ;->ᐝ(Landroid/support/v4/app/Fragment;)V

    goto :goto_6

    .line 1101
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mActivity:Lo/ι;

    .line 1102
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1103
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lo/ˉ;

    .line 1112
    :cond_32
    :goto_6
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 1113
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public ˊ(Ljava/lang/Runnable;Z)V
    .locals 4

    .line 1394
    if-nez p2, :cond_0

    .line 1395
    invoke-direct {p0}, Lo/ˉ;->ᐝ()V

    .line 1397
    :cond_0
    move-object v2, p0

    monitor-enter v2

    .line 1398
    :try_start_0
    iget-boolean v0, p0, Lo/ˉ;->เ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    if-nez v0, :cond_2

    .line 1399
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1401
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    .line 1404
    :cond_3
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    iget-object v0, p0, Lo/ˉ;->ᔈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1406
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v0, v0, Lo/ι;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ˉ;->ᖮ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1407
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v0, v0, Lo/ι;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ˉ;->ᖮ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 1410
    :goto_0
    return-void
.end method

.method public ˊ(Lo/ι;Lo/con;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 1912
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1913
    :cond_0
    iput-object p1, p0, Lo/ˉ;->mActivity:Lo/ι;

    .line 1914
    iput-object p2, p0, Lo/ˉ;->mContainer:Lo/con;

    .line 1915
    iput-object p3, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    .line 1916
    return-void
.end method

.method ˊ(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 10

    .line 1541
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1542
    const/4 v0, 0x0

    return v0

    .line 1544
    :cond_0
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2

    .line 1545
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 1546
    if-gez v3, :cond_1

    .line 1547
    const/4 v0, 0x0

    return v0

    .line 1549
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˎ;

    move-object v4, v0

    .line 1550
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1551
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1552
    invoke-virtual {v4, v5, v6}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1553
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1, v5, v6}, Lo/ˎ;->ˊ(ZLo/ˎ$ˊ;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lo/ˎ$ˊ;

    .line 1554
    invoke-virtual {p0}, Lo/ˉ;->ʼ()V

    .line 1555
    goto/16 :goto_7

    .line 1556
    :cond_2
    const/4 v3, -0x1

    .line 1557
    if-nez p2, :cond_3

    if-ltz p3, :cond_a

    .line 1560
    :cond_3
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 1561
    :goto_0
    if-ltz v3, :cond_6

    .line 1562
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˎ;

    move-object v4, v0

    .line 1563
    if-eqz p2, :cond_4

    invoke-virtual {v4}, Lo/ˎ;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1564
    goto :goto_1

    .line 1566
    :cond_4
    if-ltz p3, :cond_5

    iget v0, v4, Lo/ˎ;->mIndex:I

    if-ne p3, v0, :cond_5

    .line 1567
    goto :goto_1

    .line 1569
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 1570
    goto :goto_0

    .line 1571
    :cond_6
    :goto_1
    if-gez v3, :cond_7

    .line 1572
    const/4 v0, 0x0

    return v0

    .line 1574
    :cond_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    .line 1575
    add-int/lit8 v3, v3, -0x1

    .line 1577
    :goto_2
    if-ltz v3, :cond_a

    .line 1578
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˎ;

    move-object v4, v0

    .line 1579
    if-eqz p2, :cond_8

    invoke-virtual {v4}, Lo/ˎ;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    if-ltz p3, :cond_a

    iget v0, v4, Lo/ˎ;->mIndex:I

    if-ne p3, v0, :cond_a

    .line 1581
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 1582
    goto :goto_2

    .line 1588
    :cond_a
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_b

    .line 1589
    const/4 v0, 0x0

    return v0

    .line 1591
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :goto_3
    if-le v5, v3, :cond_c

    .line 1594
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1596
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 1597
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1598
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1599
    const/4 v8, 0x0

    :goto_4
    if-gt v8, v5, :cond_d

    .line 1600
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˎ;

    invoke-virtual {v0, v6, v7}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1599
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1602
    :cond_d
    const/4 v8, 0x0

    .line 1603
    const/4 v9, 0x0

    :goto_5
    if-gt v9, v5, :cond_10

    .line 1604
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Popping back stack state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_e
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ˎ;

    if-ne v9, v5, :cond_f

    const/4 v1, 0x1

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1, v8, v6, v7}, Lo/ˎ;->ˊ(ZLo/ˎ$ˊ;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lo/ˎ$ˊ;

    move-result-object v8

    .line 1603
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1608
    :cond_10
    invoke-virtual {p0}, Lo/ˉ;->ʼ()V

    .line 1610
    :goto_7
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Landroid/view/Menu;)Z
    .locals 4

    .line 2027
    const/4 v1, 0x0

    .line 2028
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2029
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 2030
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 2031
    if-eqz v3, :cond_0

    .line 2032
    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2033
    const/4 v1, 0x1

    .line 2029
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2038
    :cond_1
    return v1
.end method

.method public ˊ(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5

    .line 1995
    const/4 v1, 0x0

    .line 1996
    const/4 v2, 0x0

    .line 1997
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1998
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 1999
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v4, v0

    .line 2000
    if-eqz v4, :cond_1

    .line 2001
    invoke-virtual {v4, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2002
    const/4 v1, 0x1

    .line 2003
    if-nez v2, :cond_0

    .line 2004
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2012
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ﾟ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 2013
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lo/ˉ;->ﾟ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 2014
    iget-object v0, p0, Lo/ˉ;->ﾟ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v4, v0

    .line 2015
    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2016
    :cond_3
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2013
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2021
    :cond_5
    iput-object v2, p0, Lo/ˉ;->ﾟ:Ljava/util/ArrayList;

    .line 2023
    return v1
.end method

.method public ˊ(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2042
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2043
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2044
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v2, v0

    .line 2045
    if-eqz v2, :cond_0

    .line 2046
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    const/4 v0, 0x1

    return v0

    .line 2043
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ()Lo/ᐨ;
    .locals 1

    .line 485
    new-instance v0, Lo/ˎ;

    invoke-direct {v0, p0}, Lo/ˎ;-><init>(Lo/ˉ;)V

    return-object v0
.end method

.method public ˋ(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .line 839
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 840
    iget-boolean v0, p0, Lo/ˉ;->ᴶ:Z

    if-eqz v0, :cond_0

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ᐤ:Z

    .line 843
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 846
    move-object v0, p0

    move-object v1, p1

    iget v2, p0, Lo/ˉ;->ː:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 848
    :cond_1
    return-void
.end method

.method public ˋ(Landroid/support/v4/app/Fragment;II)V
    .locals 4

    .line 1241
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_4

    .line 1243
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1244
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1247
    if-eqz v3, :cond_1

    .line 1248
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1250
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ו:Z

    .line 1255
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1257
    :cond_4
    return-void
.end method

.method public ˋ(Landroid/view/Menu;)V
    .locals 3

    .line 2070
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2071
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2072
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v2, v0

    .line 2073
    if-eqz v2, :cond_0

    .line 2074
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2071
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2078
    :cond_1
    return-void
.end method

.method ˋ(Lo/ˎ;)V
    .locals 1

    .line 1533
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    .line 1536
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    invoke-virtual {p0}, Lo/ˉ;->ʼ()V

    .line 1538
    return-void
.end method

.method public ˋ(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2056
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2057
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2058
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v2, v0

    .line 2059
    if-eqz v2, :cond_0

    .line 2060
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2061
    const/4 v0, 0x1

    return v0

    .line 2057
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2066
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ˌ()V
    .locals 2

    .line 1956
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1957
    return-void
.end method

.method public ˍ()V
    .locals 2

    .line 1960
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1961
    return-void
.end method

.method public ˎ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    return-object v0
.end method

.method ˎ(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .line 1116
    move-object v0, p0

    move-object v1, p1

    iget v2, p0, Lo/ˉ;->ː:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1117
    return-void
.end method

.method public ˎ(Landroid/support/v4/app/Fragment;II)V
    .locals 4

    .line 1260
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_4

    .line 1262
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1263
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1266
    if-eqz v3, :cond_1

    .line 1267
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1269
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ו:Z

    .line 1274
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1276
    :cond_4
    return-void
.end method

.method public ˎ(Landroid/support/v4/app/Fragment;Z)V
    .locals 3

    .line 1202
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    .line 1205
    :cond_0
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_1
    invoke-virtual {p0, p1}, Lo/ˉ;->ˏ(Landroid/support/v4/app/Fragment;)V

    .line 1207
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1208
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1213
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1214
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ו:Z

    .line 1217
    :cond_3
    if-eqz p2, :cond_4

    .line 1218
    invoke-virtual {p0, p1}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;)V

    .line 1221
    :cond_4
    return-void
.end method

.method ˏ()V
    .locals 3

    .line 1157
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1159
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1160
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v2, v0

    .line 1161
    if-eqz v2, :cond_1

    .line 1162
    invoke-virtual {p0, v2}, Lo/ˉ;->ˋ(Landroid/support/v4/app/Fragment;)V

    .line 1159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1165
    :cond_2
    return-void
.end method

.method public ˏ(I)V
    .locals 5

    .line 1458
    move-object v3, p0

    monitor-enter v3

    .line 1459
    :try_start_0
    iget-object v0, p0, Lo/ˉ;->ı:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1460
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    .line 1463
    :cond_0
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ǃ:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 1466
    :goto_0
    return-void
.end method

.method ˏ(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1168
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1169
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1173
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    .line 1176
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1177
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    :cond_3
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1181
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1183
    :goto_0
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_4
    return-void
.end method

.method public ˏ(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .line 1279
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1282
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4

    .line 1284
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1285
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1288
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ו:Z

    .line 1291
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1292
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1295
    :cond_4
    return-void
.end method

.method public ˑ()V
    .locals 2

    .line 1964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->เ:Z

    .line 1965
    invoke-virtual {p0}, Lo/ˉ;->ʻ()Z

    .line 1966
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ˉ;->ˊ(IZ)V

    .line 1967
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    .line 1968
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->mContainer:Lo/con;

    .line 1969
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ˉ;->ˣ:Landroid/support/v4/app/Fragment;

    .line 1970
    return-void
.end method

.method public ͺ()Landroid/os/Parcelable;
    .locals 9

    .line 1684
    invoke-virtual {p0}, Lo/ˉ;->ʻ()Z

    .line 1686
    sget-boolean v0, Lo/ˉ;->ᔇ:Z

    if-eqz v0, :cond_0

    .line 1696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ۦ:Z

    .line 1699
    :cond_0
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1700
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 1704
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1705
    new-array v4, v3, [Landroid/support/v4/app/FragmentState;

    .line 1706
    const/4 v5, 0x0

    .line 1707
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_9

    .line 1708
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v7, v0

    .line 1709
    if-eqz v7, :cond_8

    .line 1710
    iget v0, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_3

    .line 1711
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: active "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has cleared index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 1716
    :cond_3
    const/4 v5, 0x1

    .line 1718
    new-instance v8, Landroid/support/v4/app/FragmentState;

    invoke-direct {v8, v7}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1719
    aput-object v8, v4, v6

    .line 1721
    iget v0, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v0, :cond_6

    iget-object v0, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 1722
    invoke-virtual {p0, v7}, Lo/ˉ;->ʼ(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1724
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    .line 1725
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_4

    .line 1726
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 1730
    :cond_4
    iget-object v0, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 1731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1733
    :cond_5
    iget-object v0, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0, v1, v2}, Lo/ˉ;->ˊ(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1735
    iget v0, v7, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v0, :cond_7

    .line 1736
    iget-object v0, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    iget v2, v7, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1743
    :cond_6
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v0, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1746
    :cond_7
    :goto_1
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved state of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1751
    :cond_9
    if-nez v5, :cond_b

    .line 1752
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_a
    const/4 v0, 0x0

    return-object v0

    .line 1756
    :cond_b
    const/4 v6, 0x0

    .line 1757
    const/4 v7, 0x0

    .line 1760
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 1761
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1762
    if-lez v3, :cond_e

    .line 1763
    new-array v6, v3, [I

    .line 1764
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_e

    .line 1765
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v0, v6, v8

    .line 1766
    aget v0, v6, v8

    if-gez v0, :cond_c

    .line 1767
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: active "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has cleared index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v6, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ˉ;->ˊ(Ljava/lang/RuntimeException;)V

    .line 1771
    :cond_c
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAllState: adding fragment #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1778
    :cond_e
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 1779
    iget-object v0, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1780
    if-lez v3, :cond_10

    .line 1781
    new-array v7, v3, [Landroid/support/v4/app/BackStackState;

    .line 1782
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_10

    .line 1783
    new-instance v0, Landroid/support/v4/app/BackStackState;

    iget-object v1, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ˎ;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/BackStackState;-><init>(Lo/ˉ;Lo/ˎ;)V

    aput-object v0, v7, v8

    .line 1784
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAllState: adding back stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ˉ;->ᵗ:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1790
    :cond_10
    new-instance v8, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v8}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1791
    iput-object v4, v8, Landroid/support/v4/app/FragmentManagerState;->ɩ:[Landroid/support/v4/app/FragmentState;

    .line 1792
    iput-object v6, v8, Landroid/support/v4/app/FragmentManagerState;->ʵ:[I

    .line 1793
    iput-object v7, v8, Landroid/support/v4/app/FragmentManagerState;->ʸ:[Landroid/support/v4/app/BackStackState;

    .line 1794
    return-object v8
.end method

.method public ـ()V
    .locals 3

    .line 1984
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1985
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1986
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v2, v0

    .line 1987
    if-eqz v2, :cond_0

    .line 1988
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 1985
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1992
    :cond_1
    return-void
.end method

.method ᐝ(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1187
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1188
    return-void

    .line 1191
    :cond_0
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    .line 1196
    :cond_2
    iget-object v0, p0, Lo/ˉ;->ᵋ:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    iget-object v0, p0, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ι;->invalidateSupportFragment(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    .line 1199
    return-void
.end method

.method public ᐝ(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .line 1298
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_5

    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1301
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_5

    .line 1302
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    .line 1305
    :cond_1
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1306
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_2
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_3
    iget-object v0, p0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1311
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˉ;->ו:Z

    .line 1314
    :cond_4
    move-object v0, p0

    move-object v1, p1

    iget v2, p0, Lo/ˉ;->ː:I

    move v3, p2

    move v4, p3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1317
    :cond_5
    return-void
.end method

.method public ᐧ()Lo/ᕑ;
    .locals 0

    .line 2213
    return-object p0
.end method

.method public ι()V
    .locals 1

    .line 1919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ˉ;->ۦ:Z

    .line 1920
    return-void
.end method
