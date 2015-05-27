.class public abstract Landroid/support/v7/widget/RecyclerView$ˎ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u02ce"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ˎ$if;,
        Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;
    }
.end annotation


# instance fields
.field private aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

.field private aF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02ce$if;>;"
        }
    .end annotation
.end field

.field private aG:J

.field private aH:J

.field private aI:J

.field private aJ:J

.field private aK:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    .line 8306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aF:Ljava/util/ArrayList;

    .line 8309
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aG:J

    .line 8310
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aH:J

    .line 8311
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aI:J

    .line 8312
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aJ:J

    .line 8314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aK:Z

    .line 8728
    return-void
.end method


# virtual methods
.method public abstract isRunning()Z
.end method

.method public abstract ĭ()V
.end method

.method public abstract ļ()V
.end method

.method public ľ()J
    .locals 2

    .line 8322
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aI:J

    return-wide v0
.end method

.method public ǀ()J
    .locals 2

    .line 8340
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aG:J

    return-wide v0
.end method

.method public ɔ()J
    .locals 2

    .line 8358
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aH:J

    return-wide v0
.end method

.method public ɟ()J
    .locals 2

    .line 8376
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aJ:J

    return-wide v0
.end method

.method public ɺ()Z
    .locals 1

    .line 8394
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aK:Z

    return v0
.end method

.method public final ɼ()V
    .locals 3

    .line 8714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8715
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 8716
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aF:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˎ$if;

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$ˎ$if;->ʱ()V

    .line 8715
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8718
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8719
    return-void
.end method

.method public ʹ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8780
    return-void
.end method

.method public final ˈ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 1

    .line 8547
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ᐨ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8548
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    if-eqz v0, :cond_0

    .line 8549
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;->ᐨ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8551
    :cond_0
    return-void
.end method

.method public final ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 1

    .line 8559
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ՙ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8560
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    if-eqz v0, :cond_0

    .line 8561
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;->ՙ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8563
    :cond_0
    return-void
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;)V
    .locals 0

    .line 8426
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    .line 8427
    return-void
.end method

.method public final ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V
    .locals 1

    .line 8588
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˏ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 8589
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    if-eqz v0, :cond_0

    .line 8590
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;->י(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8592
    :cond_0
    return-void
.end method

.method public abstract ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
.end method

.method public abstract ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z
.end method

.method public abstract ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z
.end method

.method public final ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V
    .locals 0

    .line 8631
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˎ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 8632
    return-void
.end method

.method public final ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 1

    .line 8571
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ﾞ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    if-eqz v0, :cond_0

    .line 8573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˎ;->aE:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;->ﾞ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8575
    :cond_0
    return-void
.end method

.method public final ˍ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8600
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ᐧ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8601
    return-void
.end method

.method public ˎ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V
    .locals 0

    .line 8802
    return-void
.end method

.method public abstract ˎ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
.end method

.method public ˏ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V
    .locals 0

    .line 8814
    return-void
.end method

.method public final ˑ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8609
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ʹ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8610
    return-void
.end method

.method public ՙ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8790
    return-void
.end method

.method public final ـ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8618
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ﹳ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8619
    return-void
.end method

.method public abstract ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
.end method

.method public ᐧ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8740
    return-void
.end method

.method public ᐨ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8750
    return-void
.end method

.method public ﹳ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8760
    return-void
.end method

.method public ﾞ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 8770
    return-void
.end method
