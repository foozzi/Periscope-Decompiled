.class public abstract Landroid/support/v7/widget/RecyclerView$ˑ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u02d1"
.end annotation


# instance fields
.field public final bB:Landroid/view/View;

.field bC:I

.field bD:J

.field bE:I

.field bF:I

.field bG:Landroid/support/v7/widget/RecyclerView$ˑ;

.field bH:Landroid/support/v7/widget/RecyclerView$ˑ;

.field private bI:I

.field private bJ:Landroid/support/v7/widget/RecyclerView$ʾ;

.field private ῖ:I

.field Ύ:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 7080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6994
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    .line 6995
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    .line 6996
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bD:J

    .line 6997
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bE:I

    .line 6998
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    .line 7001
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bG:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 7003
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 7074
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    .line 7078
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bJ:Landroid/support/v7/widget/RecyclerView$ʾ;

    .line 7081
    if-nez p1, :cond_0

    .line 7082
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7084
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 7085
    return-void
.end method

.method static synthetic ʳ(Landroid/support/v7/widget/RecyclerView$ˑ;)I
    .locals 1

    .line 6992
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    return v0
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ʾ;)Landroid/support/v7/widget/RecyclerView$ʾ;
    .locals 0

    .line 6992
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bJ:Landroid/support/v7/widget/RecyclerView$ʾ;

    return-object p1
.end method

.method private Ί()Z
    .locals 2

    .line 7372
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ℴ()Z
    .locals 2

    .line 7380
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ʾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ﹺ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 1

    .line 6992
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ℴ()Z

    move-result v0

    return v0
.end method

.method static synthetic ｰ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 1

    .line 6992
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ί()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1

    .line 7291
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    .line 7292
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 3

    .line 7186
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 7187
    instance-of v0, v1, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7188
    const/4 v0, -0x1

    return v0

    .line 7190
    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    .line 7191
    invoke-static {v2, p0}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˑ;)I

    move-result v0

    return v0
.end method

.method public final getItemId()J
    .locals 2

    .line 7216
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bD:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 7223
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bE:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 7160
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    :goto_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    .line 7206
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7134
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    :goto_0
    return v0
.end method

.method isBound()Z
    .locals 2

    .line 7267
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 2

    .line 7271
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setFlags(II)V
    .locals 2

    .line 7287
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    .line 7288
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3

    .line 7338
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    .line 7339
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    if-gez v0, :cond_1

    .line 7340
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    .line 7345
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7347
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7348
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    goto :goto_1

    .line 7349
    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    if-nez v0, :cond_3

    .line 7350
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    .line 7355
    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 7307
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewHolder{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bD:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pLpos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7310
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴛ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " scrap"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7311
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7312
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7313
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἰ()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7314
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7315
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7316
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " changed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7317
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " tmpDetached"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7318
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ὶ()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " not recyclable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7319
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῑ()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "undefined adapter position"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7321
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, " no parent"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7322
    :cond_a
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ʻ(Landroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 0

    .line 7251
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bJ:Landroid/support/v7/widget/RecyclerView$ʾ;

    .line 7252
    return-void
.end method

.method ˌ(IZ)V
    .locals 2

    .line 7094
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7095
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    .line 7097
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7098
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    .line 7100
    :cond_1
    if-eqz p2, :cond_2

    .line 7101
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    .line 7103
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    .line 7104
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7105
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 7107
    :cond_3
    return-void
.end method

.method ˏ(IIZ)V
    .locals 1

    .line 7088
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 7089
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    .line 7090
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    .line 7091
    return-void
.end method

.method ڌ()V
    .locals 2

    .line 7295
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    .line 7296
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    .line 7297
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    .line 7298
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bD:J

    .line 7299
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    .line 7300
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bI:I

    .line 7301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bG:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 7302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 7303
    return-void
.end method

.method ᕻ()V
    .locals 1

    .line 7110
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    .line 7111
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bF:I

    .line 7112
    return-void
.end method

.method ᘁ(I)Z
    .locals 1

    .line 7275
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ᴄ()V
    .locals 2

    .line 7115
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7116
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bC:I

    .line 7118
    :cond_0
    return-void
.end method

.method public ᴐ()Z
    .locals 2

    .line 7121
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ᴛ()Z
    .locals 1

    .line 7227
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bJ:Landroid/support/v7/widget/RecyclerView$ʾ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ᴺ()V
    .locals 1

    .line 7231
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bJ:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ⁱ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 7232
    return-void
.end method

.method ᵈ()Z
    .locals 2

    .line 7235
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ᵑ()V
    .locals 2

    .line 7239
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    .line 7240
    return-void
.end method

.method public ᵨ()V
    .locals 2

    .line 7243
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    .line 7244
    return-void
.end method

.method public Ḯ()Z
    .locals 2

    .line 7255
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Ἰ()Z
    .locals 2

    .line 7259
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Ἱ()Z
    .locals 2

    .line 7263
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Ῐ()Z
    .locals 2

    .line 7279
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Ῑ()Z
    .locals 2

    .line 7283
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Ὶ()Z
    .locals 2

    .line 7363
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->ῖ:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ʾ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
