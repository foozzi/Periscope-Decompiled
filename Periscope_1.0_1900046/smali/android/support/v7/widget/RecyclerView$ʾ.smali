.class public final Landroid/support/v7/widget/RecyclerView$ʾ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u02be"
.end annotation


# instance fields
.field final synthetic aB:Landroid/support/v7/widget/RecyclerView;

.field final aV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private aW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field final aX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private final aY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private aZ:I

.field private ba:Landroid/support/v7/widget/RecyclerView$ι;

.field private bb:Landroid/support/v7/widget/RecyclerView$ˌ;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 3435
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    .line 3437
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    .line 3439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    .line 3441
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aY:Ljava/util/List;

    .line 3444
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aZ:I

    return-void
.end method

.method private ˋ(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 3762
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 3763
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3764
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3765
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ˋ(Landroid/view/ViewGroup;Z)V

    .line 3762
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3768
    :cond_1
    if-nez p2, :cond_2

    .line 3769
    return-void

    .line 3772
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3773
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3774
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 3776
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 3777
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3778
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3780
    :goto_1
    return-void
.end method

.method static synthetic ᐝ(Landroid/support/v7/widget/RecyclerView$ʾ;)Ljava/util/ArrayList;
    .locals 1

    .line 3435
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ᵎ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 2

    .line 3756
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3757
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ˋ(Landroid/view/ViewGroup;Z)V

    .line 3759
    :cond_0
    return-void
.end method

.method private ᵙ(Landroid/view/View;)V
    .locals 1

    .line 3742
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˌ(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˌ(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3743
    invoke-static {p1}, Lo/ﺑ;->ˈ(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3745
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/ﺑ;->ˏ(Landroid/view/View;I)V

    .line 3748
    :cond_0
    invoke-static {p1}, Lo/ﺑ;->ι(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3749
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˍ(Landroid/support/v7/widget/RecyclerView;)Lo/ﾉ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﾉ;->ⅹ()Lo/ﹾ;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;Lo/ﹾ;)V

    .line 3753
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 3457
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3458
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʾ;->т()V

    .line 3459
    return-void
.end method

.method setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ι;)V
    .locals 2

    .line 4203
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->ba:Landroid/support/v7/widget/RecyclerView$ι;

    if-eqz v0, :cond_0

    .line 4204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->ba:Landroid/support/v7/widget/RecyclerView$ι;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ι;->detach()V

    .line 4206
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->ba:Landroid/support/v7/widget/RecyclerView$ι;

    .line 4207
    if-eqz p1, :cond_1

    .line 4208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->ba:Landroid/support/v7/widget/RecyclerView$ι;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->ᵇ()Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ι;->ˊ(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 4210
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ˌ;)V
    .locals 0

    .line 4199
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->bb:Landroid/support/v7/widget/RecyclerView$ˌ;

    .line 4200
    return-void
.end method

.method ˉ(IZ)Landroid/view/View;
    .locals 8

    .line 3613
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3614
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3617
    :cond_1
    const/4 v3, 0x0

    .line 3618
    const/4 v4, 0x0

    .line 3620
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3621
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᕁ(I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 3622
    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 3625
    :cond_3
    :goto_0
    if-nez v4, :cond_8

    .line 3626
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ˎ(IIZ)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 3627
    if-eqz v4, :cond_8

    .line 3628
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᴵ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3630
    if-nez p2, :cond_6

    .line 3633
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 3634
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴛ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3635
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3636
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴺ()V

    goto :goto_1

    .line 3637
    :cond_4
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵈ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3638
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵑ()V

    .line 3640
    :cond_5
    :goto_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵔ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3642
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 3644
    :cond_7
    const/4 v3, 0x1

    .line 3648
    :cond_8
    :goto_2
    if-nez v4, :cond_f

    .line 3649
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0, p1}, Lo/ᴗ;->ᐤ(I)I

    move-result v5

    .line 3650
    if-ltz v5, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v0

    if-lt v5, v0, :cond_a

    .line 3651
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3656
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$if;->getItemViewType(I)I

    move-result v6

    .line 3658
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3659
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$if;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v6, p2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ˊ(JIZ)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 3660
    if-eqz v4, :cond_b

    .line 3662
    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    .line 3663
    const/4 v3, 0x1

    .line 3666
    :cond_b
    if-nez v4, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->bb:Landroid/support/v7/widget/RecyclerView$ˌ;

    if-eqz v0, :cond_d

    .line 3669
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->bb:Landroid/support/v7/widget/RecyclerView$ˌ;

    invoke-virtual {v0, p0, p1, v6}, Landroid/support/v7/widget/RecyclerView$ˌ;->ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;II)Landroid/view/View;

    move-result-object v7

    .line 3671
    if-eqz v7, :cond_d

    .line 3672
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 3673
    if-nez v4, :cond_c

    .line 3674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3676
    :cond_c
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3683
    :cond_d
    if-nez v4, :cond_e

    .line 3690
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ґ()Landroid/support/v7/widget/RecyclerView$ι;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$if;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ι;->ᐢ(I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 3692
    if-eqz v4, :cond_e

    .line 3693
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ڌ()V

    .line 3694
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ﻟ()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3695
    invoke-direct {p0, v4}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵎ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3699
    :cond_e
    if-nez v4, :cond_f

    .line 3700
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView$if;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$if;->ˏ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 3707
    :cond_f
    const/4 v5, 0x0

    .line 3708
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->isBound()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3710
    iput p1, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    goto :goto_3

    .line 3711
    :cond_10
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->isBound()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἰ()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3716
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0, p1}, Lo/ᴗ;->ᐤ(I)I

    move-result v6

    .line 3717
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/widget/RecyclerView$if;->ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V

    .line 3718
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵙ(Landroid/view/View;)V

    .line 3719
    const/4 v5, 0x1

    .line 3720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3721
    iput p1, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    .line 3725
    :cond_12
    :goto_3
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3727
    if-nez v6, :cond_13

    .line 3728
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v7, v0

    .line 3729
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 3730
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3731
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v7, v0

    .line 3732
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 3734
    :cond_14
    move-object v0, v6

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v7, v0

    .line 3736
    :goto_4
    iput-object v4, v7, Landroid/support/v7/widget/RecyclerView$ʼ;->aO:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 3737
    if-eqz v3, :cond_15

    if-eqz v5, :cond_15

    const/4 v0, 0x1

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v7, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    .line 3738
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    return-object v0
.end method

.method ˊ(JIZ)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 7

    .line 4061
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4062
    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_3

    .line 4063
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v5, v0

    .line 4064
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵈ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4065
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 4066
    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 4067
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4076
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4077
    const/4 v0, 0x2

    const/16 v1, 0xe

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->setFlags(II)V

    .line 4081
    :cond_0
    return-object v5

    .line 4082
    :cond_1
    if-nez p4, :cond_2

    .line 4084
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4085
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v5, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4086
    iget-object v0, v5, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵥ(Landroid/view/View;)V

    .line 4062
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4092
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4093
    add-int/lit8 v5, v4, -0x1

    :goto_1
    if-ltz v5, :cond_7

    .line 4094
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v6, v0

    .line 4095
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_6

    .line 4096
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v0

    if-ne p3, v0, :cond_5

    .line 4097
    if-nez p4, :cond_4

    .line 4098
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4100
    :cond_4
    return-object v6

    .line 4101
    :cond_5
    if-nez p4, :cond_6

    .line 4102
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔊ(I)V

    .line 4093
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4106
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$if;Landroid/support/v7/widget/RecyclerView$if;Z)V
    .locals 1

    .line 4124
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʾ;->clear()V

    .line 4125
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ґ()Landroid/support/v7/widget/RecyclerView$ι;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ι;->ˊ(Landroid/support/v7/widget/RecyclerView$if;Landroid/support/v7/widget/RecyclerView$if;Z)V

    .line 4126
    return-void
.end method

.method ˋ(IIZ)V
    .locals 5

    .line 4178
    add-int v1, p1, p2

    .line 4179
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4180
    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 4181
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v4, v0

    .line 4182
    if-eqz v4, :cond_1

    .line 4183
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 4189
    neg-int v0, p2

    invoke-virtual {v4, v0, p3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    goto :goto_1

    .line 4190
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 4192
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔊ(I)V

    .line 4180
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4196
    :cond_2
    return-void
.end method

.method ˎ(IIZ)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 7

    .line 4013
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4016
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 4017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v5, v0

    .line 4018
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵈ()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˑ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4020
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 4021
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scrap view for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t dirty but has"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrong view type! (found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    goto :goto_1

    .line 4026
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 4027
    return-object v5

    .line 4016
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 4031
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 4032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, p1, p2}, Lo/ᵇ;->ᵢ(II)Landroid/view/View;

    move-result-object v4

    .line 4033
    if-eqz v4, :cond_4

    .line 4035
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 4040
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4041
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_7

    .line 4042
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v6, v0

    .line 4045
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-ne v0, p1, :cond_6

    .line 4046
    if-nez p3, :cond_5

    .line 4047
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4053
    :cond_5
    return-object v6

    .line 4041
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4056
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public с()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation

    .line 3480
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aY:Ljava/util/List;

    return-object v0
.end method

.method т()V
    .locals 3

    .line 3817
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3818
    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 3819
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔊ(I)V

    .line 3818
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3821
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3822
    return-void
.end method

.method х()I
    .locals 1

    .line 3961
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method ј()V
    .locals 1

    .line 3969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3970
    return-void
.end method

.method ґ()Landroid/support/v7/widget/RecyclerView$ι;
    .locals 1

    .line 4213
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->ba:Landroid/support/v7/widget/RecyclerView$ι;

    if-nez v0, :cond_0

    .line 4214
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ι;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$ι;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->ba:Landroid/support/v7/widget/RecyclerView$ι;

    .line 4216
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->ba:Landroid/support/v7/widget/RecyclerView$ι;

    return-object v0
.end method

.method ך()V
    .locals 4

    .line 4238
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4239
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4240
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 4241
    if-eqz v3, :cond_0

    .line 4242
    const/16 v0, 0x200

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 4239
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4245
    :cond_1
    return-void
.end method

.method ᐩ(II)V
    .locals 8

    .line 4130
    if-ge p1, p2, :cond_0

    .line 4131
    move v2, p1

    .line 4132
    move v3, p2

    .line 4133
    const/4 v4, -0x1

    goto :goto_0

    .line 4135
    :cond_0
    move v2, p2

    .line 4136
    move v3, p1

    .line 4137
    const/4 v4, 0x1

    .line 4139
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4140
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    .line 4141
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v7, v0

    .line 4142
    if-eqz v7, :cond_3

    iget v0, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-lt v0, v2, :cond_3

    iget v0, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-le v0, v3, :cond_1

    .line 4143
    goto :goto_2

    .line 4145
    :cond_1
    iget v0, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-ne v0, p1, :cond_2

    .line 4146
    sub-int v0, p2, p1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    goto :goto_2

    .line 4148
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v7, v4, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    .line 4140
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4155
    :cond_4
    return-void
.end method

.method ᑊ(II)V
    .locals 4

    .line 4158
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4159
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4160
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 4161
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 4166
    const/4 v0, 0x1

    invoke-virtual {v3, p2, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    .line 4159
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4169
    :cond_1
    return-void
.end method

.method public ᔅ(I)V
    .locals 3

    .line 3467
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aZ:I

    .line 3469
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 3470
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔊ(I)V

    .line 3469
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3472
    :cond_0
    return-void
.end method

.method public ᔉ(I)Landroid/view/View;
    .locals 1

    .line 3609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ˉ(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method ᔊ(I)V
    .locals 2

    .line 3839
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v1, v0

    .line 3843
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵢ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3844
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3845
    return-void
.end method

.method ᔋ(I)Landroid/view/View;
    .locals 1

    .line 3965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    return-object v0
.end method

.method ᕀ(II)V
    .locals 6

    .line 4220
    add-int v1, p1, p2

    .line 4221
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4222
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4223
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v4, v0

    .line 4224
    if-nez v4, :cond_0

    .line 4225
    goto :goto_1

    .line 4228
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v5

    .line 4229
    if-lt v5, p1, :cond_1

    if-ge v5, v1, :cond_1

    .line 4230
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 4222
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4235
    :cond_2
    return-void
.end method

.method ᕁ(I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 8

    .line 3975
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    if-nez v0, :cond_1

    .line 3976
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 3979
    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 3980
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v4, v0

    .line 3981
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵈ()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 3982
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 3983
    return-object v4

    .line 3979
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3987
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0, p1}, Lo/ᴗ;->ᐤ(I)I

    move-result v3

    .line 3989
    if-lez v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 3990
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$if;->getItemId(I)J

    move-result-wide v4

    .line 3991
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_5

    .line 3992
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v7, v0

    .line 3993
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵈ()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 3994
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 3995
    return-object v7

    .line 3991
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4000
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method ᴵ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 5

    .line 3494
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3495
    const/4 v0, 0x1

    return v0

    .line 3497
    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3498
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3501
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3503
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$if;->getItemViewType(I)I

    move-result v4

    .line 3504
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v0

    if-eq v4, v0, :cond_3

    .line 3505
    const/4 v0, 0x0

    return v0

    .line 3508
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3509
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemId()J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v2

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$if;->getItemId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3511
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method ᵔ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 6

    .line 3853
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴛ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3854
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴛ()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAttached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3860
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3861
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3865
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3870
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ﹺ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$if;->ι(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 3873
    :goto_1
    if-nez v3, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ὶ()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3874
    :cond_6
    const/4 v4, 0x0

    .line 3875
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˑ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3878
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3879
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aZ:I

    if-ne v5, v0, :cond_8

    if-lez v5, :cond_8

    .line 3880
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔊ(I)V

    .line 3882
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aZ:I

    if-ge v5, v0, :cond_9

    .line 3883
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3884
    const/4 v4, 0x1

    .line 3887
    :cond_9
    if-nez v4, :cond_a

    .line 3888
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵢ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3896
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ͺ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3897
    return-void
.end method

.method public ᵛ(Landroid/view/View;)V
    .locals 3

    .line 3795
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v2

    .line 3796
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3797
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3799
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴛ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3800
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴺ()V

    goto :goto_0

    .line 3801
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵈ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3802
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵑ()V

    .line 3804
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵔ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3805
    return-void
.end method

.method ᵢ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 2

    .line 3900
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;Lo/ﹾ;)V

    .line 3901
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ґ()Landroid/support/v7/widget/RecyclerView$ι;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ι;->ٴ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3902
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ﹶ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3903
    return-void
.end method

.method ᵥ(Landroid/view/View;)V
    .locals 2

    .line 3911
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    .line 3912
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ʾ;)Landroid/support/v7/widget/RecyclerView$ʾ;

    .line 3913
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵑ()V

    .line 3914
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵔ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 3915
    return-void
.end method

.method ⁱ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 1

    .line 3951
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʼ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3952
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3954
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3956
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ʾ;)Landroid/support/v7/widget/RecyclerView$ʾ;

    .line 3957
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵑ()V

    .line 3958
    return-void
.end method

.method 灬()V
    .locals 5

    .line 4281
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4282
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4283
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 4284
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v4, v0

    .line 4285
    if-eqz v4, :cond_0

    .line 4286
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 4282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4289
    :cond_1
    return-void
.end method

.method ﮂ()V
    .locals 5

    .line 4263
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4264
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4265
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 4266
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᕻ()V

    .line 4264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4268
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4269
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 4270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᕻ()V

    .line 4269
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4272
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4273
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4274
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 4275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᕻ()V

    .line 4274
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4278
    :cond_2
    return-void
.end method

.method ﯨ(Landroid/view/View;)V
    .locals 3

    .line 3927
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v2

    .line 3928
    invoke-virtual {v2, p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ʻ(Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 3929
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʼ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3930
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3931
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3935
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aV:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3937
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 3938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    .line 3940
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aW:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3942
    :goto_0
    return-void
.end method

.method ﹶ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 1

    .line 4110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˑ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʿ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˑ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʿ;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʿ;->ͺ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 4113
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4114
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$if;->ͺ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 4116
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    if-eqz v0, :cond_2

    .line 4117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ͺ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 4120
    :cond_2
    return-void
.end method

.method ﺋ()V
    .locals 4

    .line 4248
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4250
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4251
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʾ;->aX:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 4252
    if-eqz v3, :cond_0

    .line 4253
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 4250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4256
    :cond_1
    goto :goto_1

    .line 4258
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʾ;->т()V

    .line 4260
    :goto_1
    return-void
.end method
