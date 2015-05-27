.class public Lo/ags;
.super Landroid/support/v7/widget/RecyclerView$ˎ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ags$ˋ;,
        Lo/ags$if;,
        Lo/ags$ˊ;
    }
.end annotation


# instance fields
.field private ק:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/ags$\u02ca;>;"
        }
    .end annotation
.end field

.field private ת:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/ags$\u02ca;>;"
        }
    .end annotation
.end field

.field private ث:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/ags$if;>;"
        }
    .end annotation
.end field

.field private ٽ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/util/ArrayList<Lo/ags$\u02ca;>;>;"
        }
    .end annotation
.end field

.field private پ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/util/ArrayList<Lo/ags$\u02ca;>;>;"
        }
    .end annotation
.end field

.field private ڑ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/util/ArrayList<Lo/ags$if;>;>;"
        }
    .end annotation
.end field

.field private ۅ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private ۉ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private ܘ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ˎ;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ۅ:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ۉ:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ags;->ܘ:Ljava/util/ArrayList;

    .line 579
    return-void
.end method

.method private ĺ()V
    .locals 1

    .line 489
    invoke-virtual {p0}, Lo/ags;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lo/ags;->ɼ()V

    .line 492
    :cond_0
    return-void
.end method

.method static synthetic ʻ(Lo/ags;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/ags;->ĺ()V

    return-void
.end method

.method static synthetic ʼ(Lo/ags;)Ljava/util/ArrayList;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ags;->ܘ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ags;)Ljava/util/ArrayList;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ˊ(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/ags$if;>;Landroid/support/v7/widget/RecyclerView$\u02d1;)V"
        }
    .end annotation

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 355
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$if;

    move-object v3, v0

    .line 356
    invoke-direct {p0, v3, p2}, Lo/ags;->ˊ(Lo/ags$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, v3, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-nez v0, :cond_0

    iget-object v0, v3, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-nez v0, :cond_0

    .line 358
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 362
    :cond_1
    return-void
.end method

.method private ˊ(Lo/ags$if;)V
    .locals 9

    .line 296
    iget-object v3, p1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 297
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 298
    iget-object v5, p1, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 299
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 300
    :goto_0
    iget-object v0, p0, Lo/ags;->ܘ:Ljava/util/ArrayList;

    iget-object v1, p1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {v4}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {p0}, Lo/ags;->ɟ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v7

    .line 304
    iget v0, p1, Lo/ags$if;->Ꮭ:I

    iget v1, p1, Lo/ags$if;->პ:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lo/ᵘ;->ˏ(F)Lo/ᵘ;

    .line 305
    iget v0, p1, Lo/ags$if;->ᐱ:I

    iget v1, p1, Lo/ags$if;->Ꮧ:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    .line 306
    iget v0, p1, Lo/ags$if;->bDZ:I

    iget v1, p1, Lo/ags$if;->bDY:I

    if-eq v0, v1, :cond_1

    .line 307
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotY(F)V

    .line 309
    iget v0, p1, Lo/ags$if;->bDZ:I

    int-to-float v0, v0

    iget v1, p1, Lo/ags$if;->bDY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v7, v0}, Lo/ᵘ;->ʻ(F)Lo/ᵘ;

    .line 311
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lo/ᵘ;->ˎ(F)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/agw;

    invoke-direct {v1, p0, p1, v7}, Lo/agw;-><init>(Lo/ags;Lo/ags$if;Lo/ᵘ;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 329
    if-eqz v6, :cond_2

    .line 330
    iget-object v0, p0, Lo/ags;->ܘ:Ljava/util/ArrayList;

    iget-object v1, p1, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {v6}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v8

    .line 332
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lo/ᵘ;->ˏ(F)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {p0}, Lo/ags;->ɟ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˎ(F)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/agx;

    invoke-direct {v1, p0, p1, v8, v6}, Lo/agx;-><init>(Lo/ags;Lo/ags$if;Lo/ᵘ;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 351
    :cond_2
    return-void
.end method

.method private ˊ(Lo/ags$ˊ;)V
    .locals 17

    .line 207
    move-object/from16 v0, p1

    iget-object v8, v0, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 208
    move-object/from16 v0, p1

    iget v9, v0, Lo/ags$ˊ;->პ:I

    .line 209
    move-object/from16 v0, p1

    iget v10, v0, Lo/ags$ˊ;->Ꮧ:I

    .line 210
    move-object/from16 v0, p1

    iget v11, v0, Lo/ags$ˊ;->Ꮭ:I

    .line 211
    move-object/from16 v0, p1

    iget v12, v0, Lo/ags$ˊ;->ᐱ:I

    .line 212
    iget-object v13, v8, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 213
    sub-int v14, v11, v9

    .line 214
    sub-int v15, v12, v10

    .line 215
    if-eqz v14, :cond_0

    .line 216
    invoke-static {v13}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˏ(F)Lo/ᵘ;

    .line 218
    :cond_0
    if-eqz v15, :cond_1

    .line 219
    invoke-static {v13}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    .line 224
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lo/ags$ˊ;->bEa:Z

    if-eqz v0, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ags;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ags;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_0
    invoke-static {v13}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v16

    .line 230
    invoke-virtual/range {p0 .. p0}, Lo/ags;->ľ()J

    move-result-wide v0

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/agv;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v8

    move v5, v14

    move v6, v15

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lo/agv;-><init>(Lo/ags;Lo/ags$ˊ;Landroid/support/v7/widget/RecyclerView$ˑ;IILo/ᵘ;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 263
    return-void
.end method

.method static synthetic ˊ(Lo/ags;Lo/ags$if;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lo/ags;->ˊ(Lo/ags$if;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ags;Lo/ags$ˊ;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lo/ags;->ˊ(Lo/ags$ˊ;)V

    return-void
.end method

.method private ˊ(Lo/ags$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 3

    .line 374
    const/4 v2, 0x0

    .line 375
    iget-object v0, p1, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p2, :cond_0

    .line 376
    const/4 v0, 0x0

    iput-object v0, p1, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p2, :cond_1

    .line 378
    const/4 v0, 0x0

    iput-object v0, p1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 379
    const/4 v2, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 383
    :goto_0
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 384
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 385
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 386
    invoke-virtual {p0, p2, v2}, Lo/ags;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic ˋ(Lo/ags;)Ljava/util/ArrayList;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ˋ(Lo/ags$if;)V
    .locals 1

    .line 365
    iget-object v0, p1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-direct {p0, p1, v0}, Lo/ags;->ˊ(Lo/ags$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    .line 368
    :cond_0
    iget-object v0, p1, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p1, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-direct {p0, p1, v0}, Lo/ags;->ˊ(Lo/ags$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    .line 371
    :cond_1
    return-void
.end method

.method static synthetic ˎ(Lo/ags;)Ljava/util/ArrayList;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ags;)Ljava/util/ArrayList;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ags;->ۅ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/ags;)Ljava/util/ArrayList;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ags;->ۉ:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->ܘ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ĭ()V
    .locals 8

    .line 99
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 101
    :goto_1
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 102
    :goto_2
    if-nez v1, :cond_3

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 104
    return-void

    .line 108
    :cond_3
    if-nez v3, :cond_4

    if-eqz v1, :cond_7

    .line 109
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    if-eqz v1, :cond_5

    .line 114
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    :cond_5
    if-eqz v3, :cond_6

    .line 121
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    :cond_6
    new-instance v7, Lo/agt;

    invoke-direct {v7, p0, v4, v6, v5}, Lo/agt;-><init>(Lo/ags;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 141
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 144
    :cond_7
    if-eqz v2, :cond_8

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    new-instance v5, Lo/agu;

    invoke-direct {v5, p0, v4}, Lo/agu;-><init>(Lo/ags;Ljava/util/ArrayList;)V

    .line 159
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_8
    return-void
.end method

.method public ļ()V
    .locals 9

    .line 496
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 497
    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 498
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    move-object v3, v0

    .line 499
    iget-object v0, v3, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 500
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 501
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 502
    iget-object v0, v3, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {p0, v0}, Lo/ags;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 503
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 497
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 506
    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 507
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    iget-object v3, v0, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 508
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 509
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 510
    invoke-virtual {p0, v3}, Lo/ags;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 511
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 506
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 513
    :cond_1
    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 514
    add-int/lit8 v2, v1, -0x1

    :goto_2
    if-ltz v2, :cond_2

    .line 515
    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$if;

    invoke-direct {p0, v0}, Lo/ags;->ˋ(Lo/ags$if;)V

    .line 514
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 517
    :cond_2
    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    invoke-virtual {p0}, Lo/ags;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 519
    return-void

    .line 522
    :cond_3
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 523
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_6

    .line 524
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 525
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 526
    add-int/lit8 v5, v1, -0x1

    :goto_4
    if-ltz v5, :cond_5

    .line 527
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    move-object v6, v0

    .line 528
    iget-object v7, v6, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 529
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 530
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 531
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 532
    iget-object v0, v6, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {p0, v0}, Lo/ags;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 533
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 534
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 526
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 523
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 539
    :cond_6
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 540
    add-int/lit8 v3, v2, -0x1

    :goto_5
    if-ltz v3, :cond_9

    .line 541
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 542
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 543
    add-int/lit8 v5, v1, -0x1

    :goto_6
    if-ltz v5, :cond_8

    .line 544
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    iget-object v6, v0, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 545
    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 546
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v7, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 547
    invoke-virtual {p0, v6}, Lo/ags;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 548
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 549
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 550
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 540
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 554
    :cond_9
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 555
    add-int/lit8 v3, v2, -0x1

    :goto_7
    if-ltz v3, :cond_c

    .line 556
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 557
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 558
    add-int/lit8 v5, v1, -0x1

    :goto_8
    if-ltz v5, :cond_b

    .line 559
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$if;

    invoke-direct {p0, v0}, Lo/ags;->ˋ(Lo/ags$if;)V

    .line 560
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 561
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 555
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 566
    :cond_c
    iget-object v0, p0, Lo/ags;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ags;->ˏ(Ljava/util/List;)V

    .line 567
    iget-object v0, p0, Lo/ags;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ags;->ˏ(Ljava/util/List;)V

    .line 568
    iget-object v0, p0, Lo/ags;->ܘ:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ags;->ˏ(Ljava/util/List;)V

    .line 570
    invoke-virtual {p0}, Lo/ags;->ɼ()V

    .line 571
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 1

    .line 165
    invoke-virtual {p0, p1}, Lo/ags;->ˈ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z
    .locals 11

    .line 186
    iget-object v8, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 187
    int-to-float v0, p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v1}, Lo/ﺑ;->ˑ(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 188
    int-to-float v0, p3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v1}, Lo/ﺑ;->ـ(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 189
    invoke-virtual {p0, p1}, Lo/ags;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 190
    sub-int v9, p4, p2

    .line 191
    sub-int v10, p5, p3

    .line 192
    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lo/ags;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 194
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    if-eqz v9, :cond_1

    .line 197
    neg-int v0, v9

    int-to-float v0, v0

    invoke-static {v8, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 199
    :cond_1
    if-eqz v10, :cond_2

    .line 200
    neg-int v0, v10

    int-to-float v0, v0

    invoke-static {v8, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 202
    :cond_2
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    new-instance v1, Lo/ags$ˊ;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lo/ags$ˊ;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;IIIILo/agt;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z
    .locals 18

    .line 268
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ˑ(Landroid/view/View;)F

    move-result v11

    .line 269
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ـ(Landroid/view/View;)F

    move-result v12

    .line 270
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ˉ(Landroid/view/View;)F

    move-result v13

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lo/ags;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 272
    sub-int v0, p5, p3

    int-to-float v0, v0

    sub-float/2addr v0, v11

    float-to-int v14, v0

    .line 273
    sub-int v0, p6, p4

    int-to-float v0, v0

    sub-float/2addr v0, v12

    float-to-int v15, v0

    .line 275
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v11}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 276
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v12}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 277
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v13}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 278
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lo/ags;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 281
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    neg-int v1, v14

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 282
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    neg-int v1, v15

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 283
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 284
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 285
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ags;->ث:Ljava/util/ArrayList;

    new-instance v1, Lo/ags$if;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v16

    move/from16 v9, v17

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lo/ags$if;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIIIIILo/agt;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ags;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 12

    .line 171
    invoke-virtual {p0, p1}, Lo/ags;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 172
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ـ(Landroid/view/View;)F

    move-result v7

    .line 173
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 174
    float-to-int v0, v7

    add-int v9, v0, v8

    .line 175
    float-to-int v10, v7

    .line 176
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    int-to-float v1, v8

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 177
    new-instance v0, Lo/ags$ˊ;

    move-object v1, p1

    move v3, v9

    move v5, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ags$ˊ;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;IIIILo/agt;)V

    move-object v11, v0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, v11, Lo/ags$ˊ;->bEa:Z

    .line 179
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method ˏ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/support/v7/widget/RecyclerView$\u02d1;>;)V"
        }
    .end annotation

    .line 574
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 575
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->cancel()V

    .line 574
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 577
    :cond_0
    return-void
.end method

.method public ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 7

    .line 392
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 394
    invoke-static {v2}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->cancel()V

    .line 396
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 397
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    move-object v4, v0

    .line 398
    iget-object v0, v4, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p1, :cond_0

    .line 399
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 400
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 401
    invoke-virtual {p0, p1}, Lo/ags;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 402
    iget-object v0, p0, Lo/ags;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lo/ags;->ث:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lo/ags;->ˊ(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 406
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 407
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    iget-object v0, v0, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p1, :cond_2

    .line 408
    iget-object v0, p0, Lo/ags;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 410
    invoke-virtual {p0, p1}, Lo/ags;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 406
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 414
    :cond_3
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_5

    .line 415
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 416
    invoke-direct {p0, v4, p1}, Lo/ags;->ˊ(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 417
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lo/ags;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 414
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 421
    :cond_5
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_3
    if-ltz v3, :cond_8

    .line 422
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 423
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :goto_4
    if-ltz v5, :cond_7

    .line 424
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    move-object v6, v0

    .line 425
    iget-object v0, v6, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p1, :cond_6

    .line 426
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 427
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 428
    invoke-virtual {p0, p1}, Lo/ags;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 429
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 430
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 431
    iget-object v0, p0, Lo/ags;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 423
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 421
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 437
    :cond_8
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_6
    if-ltz v3, :cond_b

    .line 438
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 439
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :goto_7
    if-ltz v5, :cond_a

    .line 440
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$ˊ;

    iget-object v0, v0, Lo/ags$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p1, :cond_9

    .line 441
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 443
    invoke-virtual {p0, p1}, Lo/ags;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 444
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lo/ags;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 437
    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 453
    :cond_b
    iget-object v0, p0, Lo/ags;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 458
    iget-object v0, p0, Lo/ags;->ܘ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 463
    iget-object v0, p0, Lo/ags;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 467
    invoke-direct {p0}, Lo/ags;->ĺ()V

    .line 468
    return-void
.end method
