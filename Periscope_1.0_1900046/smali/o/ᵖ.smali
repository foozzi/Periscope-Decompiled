.class public Lo/ᵖ;
.super Landroid/support/v7/widget/RecyclerView$ˎ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵖ$ˋ;,
        Lo/ᵖ$if;,
        Lo/ᵖ$ˊ;
    }
.end annotation


# instance fields
.field private פ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private ק:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private ת:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u1d56$\u02ca;>;"
        }
    .end annotation
.end field

.field private ث:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u1d56$if;>;"
        }
    .end annotation
.end field

.field private ٽ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;>;"
        }
    .end annotation
.end field

.field private پ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/util/ArrayList<Lo/\u1d56$\u02ca;>;>;"
        }
    .end annotation
.end field

.field private ڑ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/util/ArrayList<Lo/\u1d56$if;>;>;"
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

.field private ے:Ljava/util/ArrayList;
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

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ˎ;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ۅ:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ۉ:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ے:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵖ;->ܘ:Ljava/util/ArrayList;

    .line 620
    return-void
.end method

.method private ĺ()V
    .locals 1

    .line 523
    invoke-virtual {p0}, Lo/ᵖ;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lo/ᵖ;->ɼ()V

    .line 526
    :cond_0
    return-void
.end method

.method static synthetic ʻ(Lo/ᵖ;)Ljava/util/ArrayList;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ᵖ;->ۅ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ʼ(Lo/ᵖ;)Ljava/util/ArrayList;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ᵖ;->ۉ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ʽ(Lo/ᵖ;)Ljava/util/ArrayList;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ᵖ;->ܘ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ᵖ;)Ljava/util/ArrayList;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ˊ(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d56$if;>;Landroid/support/v7/widget/RecyclerView$\u02d1;)V"
        }
    .end annotation

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 386
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$if;

    move-object v3, v0

    .line 387
    invoke-direct {p0, v3, p2}, Lo/ᵖ;->ˊ(Lo/ᵖ$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, v3, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-nez v0, :cond_0

    iget-object v0, v3, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-nez v0, :cond_0

    .line 389
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method private ˊ(Lo/ᵖ$if;)V
    .locals 8

    .line 333
    iget-object v3, p1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 334
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 335
    :goto_0
    iget-object v5, p1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 336
    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 337
    :goto_1
    if-eqz v4, :cond_2

    .line 338
    iget-object v0, p0, Lo/ᵖ;->ܘ:Ljava/util/ArrayList;

    iget-object v1, p1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v4}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {p0}, Lo/ᵖ;->ɟ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v7

    .line 341
    iget v0, p1, Lo/ᵖ$if;->Ꮭ:I

    iget v1, p1, Lo/ᵖ$if;->პ:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lo/ᵘ;->ˏ(F)Lo/ᵘ;

    .line 342
    iget v0, p1, Lo/ᵖ$if;->ᐱ:I

    iget v1, p1, Lo/ᵖ$if;->Ꮧ:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    .line 343
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lo/ᵘ;->ˎ(F)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/ἱ;

    invoke-direct {v1, p0, p1, v7}, Lo/ἱ;-><init>(Lo/ᵖ;Lo/ᵖ$if;Lo/ᵘ;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 361
    :cond_2
    if-eqz v6, :cond_3

    .line 362
    iget-object v0, p0, Lo/ᵖ;->ܘ:Ljava/util/ArrayList;

    iget-object v1, p1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-static {v6}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v7

    .line 364
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lo/ᵘ;->ˏ(F)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {p0}, Lo/ᵖ;->ɟ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˎ(F)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/ὶ;

    invoke-direct {v1, p0, p1, v7, v6}, Lo/ὶ;-><init>(Lo/ᵖ;Lo/ᵖ$if;Lo/ᵘ;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 382
    :cond_3
    return-void
.end method

.method static synthetic ˊ(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/ᵖ;->ˏ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;IIII)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Lo/ᵖ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)V

    return-void
.end method

.method static synthetic ˊ(Lo/ᵖ;Lo/ᵖ$if;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/ᵖ;->ˊ(Lo/ᵖ$if;)V

    return-void
.end method

.method private ˊ(Lo/ᵖ$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 3

    .line 404
    const/4 v2, 0x0

    .line 405
    iget-object v0, p1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p2, :cond_0

    .line 406
    const/4 v0, 0x0

    iput-object v0, p1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p2, :cond_1

    .line 408
    const/4 v0, 0x0

    iput-object v0, p1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 409
    const/4 v2, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 413
    :goto_0
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 414
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 415
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 416
    invoke-virtual {p0, p2, v2}, Lo/ᵖ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic ˋ(Lo/ᵖ;)Ljava/util/ArrayList;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 4

    .line 193
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 194
    invoke-static {v2}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v3

    .line 195
    invoke-virtual {p0}, Lo/ᵖ;->ɔ()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˎ(F)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/ṛ;

    invoke-direct {v1, p0, p1, v3}, Lo/ṛ;-><init>(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;Lo/ᵘ;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 210
    iget-object v0, p0, Lo/ᵖ;->ے:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method private ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)V
    .locals 11

    .line 270
    iget-object v7, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 271
    sub-int v8, p4, p2

    .line 272
    sub-int v9, p5, p3

    .line 273
    if-eqz v8, :cond_0

    .line 274
    invoke-static {v7}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˏ(F)Lo/ᵘ;

    .line 276
    :cond_0
    if-eqz v9, :cond_1

    .line 277
    invoke-static {v7}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    .line 282
    :cond_1
    iget-object v0, p0, Lo/ᵖ;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {v7}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v10

    .line 284
    invoke-virtual {p0}, Lo/ᵖ;->ľ()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/ἰ;

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lo/ἰ;-><init>(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;IILo/ᵘ;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 306
    return-void
.end method

.method private ˋ(Lo/ᵖ$if;)V
    .locals 1

    .line 396
    iget-object v0, p1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-direct {p0, p1, v0}, Lo/ᵖ;->ˊ(Lo/ᵖ$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    .line 399
    :cond_0
    iget-object v0, p1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-direct {p0, p1, v0}, Lo/ᵖ;->ˊ(Lo/ᵖ$if;Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    .line 402
    :cond_1
    return-void
.end method

.method static synthetic ˎ(Lo/ᵖ;)Ljava/util/ArrayList;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ᵖ;)Ljava/util/ArrayList;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ᵖ;->ے:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ˏ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 5

    .line 222
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lo/ᵖ;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v3}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v4

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0}, Lo/ᵘ;->ˎ(F)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {p0}, Lo/ᵖ;->ǀ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    move-result-object v0

    new-instance v1, Lo/ỉ;

    invoke-direct {v1, p0, p1, v4}, Lo/ỉ;-><init>(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;Lo/ᵘ;)V

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->start()V

    .line 244
    return-void
.end method

.method static synthetic ᐝ(Lo/ᵖ;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/ᵖ;->ĺ()V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ے:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ܘ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

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
    .locals 18

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 98
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 99
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 100
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 101
    :goto_3
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-nez v6, :cond_4

    if-nez v5, :cond_4

    .line 103
    return-void

    .line 106
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v8, v0

    .line 107
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lo/ᵖ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 108
    goto :goto_4

    .line 109
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    if-eqz v4, :cond_7

    .line 112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v8, Lo/ᵟ;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7}, Lo/ᵟ;-><init>(Lo/ᵖ;Ljava/util/ArrayList;)V

    .line 127
    if-eqz v3, :cond_6

    .line 128
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$ˊ;

    iget-object v0, v0, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lo/ᵖ;->ɔ()J

    move-result-wide v0

    invoke-static {v9, v8, v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 135
    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 136
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    new-instance v8, Lo/ḷ;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7}, Lo/ḷ;-><init>(Lo/ᵖ;Ljava/util/ArrayList;)V

    .line 150
    if-eqz v3, :cond_8

    .line 151
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$if;

    iget-object v9, v0, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 152
    iget-object v0, v9, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lo/ᵖ;->ɔ()J

    move-result-wide v1

    invoke-static {v0, v8, v1, v2}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 153
    goto :goto_6

    .line 154
    :cond_8
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 158
    :cond_9
    :goto_6
    if-eqz v6, :cond_f

    .line 159
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v8, Lo/ṙ;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7}, Lo/ṙ;-><init>(Lo/ᵖ;Ljava/util/ArrayList;)V

    .line 172
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-eqz v5, :cond_e

    .line 173
    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lo/ᵖ;->ɔ()J

    move-result-wide v9

    goto :goto_7

    :cond_b
    const-wide/16 v9, 0x0

    .line 174
    :goto_7
    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lo/ᵖ;->ľ()J

    move-result-wide v11

    goto :goto_8

    :cond_c
    const-wide/16 v11, 0x0

    .line 175
    :goto_8
    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lo/ᵖ;->ɟ()J

    move-result-wide v13

    goto :goto_9

    :cond_d
    const-wide/16 v13, 0x0

    .line 176
    :goto_9
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v15, v9, v0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    move-object/from16 v17, v1

    .line 178
    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-static {v0, v8, v1, v2}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 179
    goto :goto_a

    .line 180
    :cond_e
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_f
    :goto_a
    return-void
.end method

.method public ļ()V
    .locals 9

    .line 530
    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 531
    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 532
    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$ˊ;

    move-object v3, v0

    .line 533
    iget-object v0, v3, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 534
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 535
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 536
    iget-object v0, v3, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {p0, v0}, Lo/ᵖ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 537
    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 531
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 540
    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 541
    iget-object v0, p0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 542
    invoke-virtual {p0, v3}, Lo/ᵖ;->ˈ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 543
    iget-object v0, p0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 540
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 545
    :cond_1
    iget-object v0, p0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 546
    add-int/lit8 v2, v1, -0x1

    :goto_2
    if-ltz v2, :cond_2

    .line 547
    iget-object v0, p0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 548
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 549
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 550
    invoke-virtual {p0, v3}, Lo/ᵖ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 551
    iget-object v0, p0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 546
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 553
    :cond_2
    iget-object v0, p0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    add-int/lit8 v2, v1, -0x1

    :goto_3
    if-ltz v2, :cond_3

    .line 555
    iget-object v0, p0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$if;

    invoke-direct {p0, v0}, Lo/ᵖ;->ˋ(Lo/ᵖ$if;)V

    .line 554
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 557
    :cond_3
    iget-object v0, p0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    invoke-virtual {p0}, Lo/ᵖ;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 559
    return-void

    .line 562
    :cond_4
    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 563
    add-int/lit8 v3, v2, -0x1

    :goto_4
    if-ltz v3, :cond_7

    .line 564
    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 565
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 566
    add-int/lit8 v5, v1, -0x1

    :goto_5
    if-ltz v5, :cond_6

    .line 567
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$ˊ;

    move-object v6, v0

    .line 568
    iget-object v7, v6, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 569
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 570
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 571
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 572
    iget-object v0, v6, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {p0, v0}, Lo/ᵖ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 573
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 566
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 563
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 579
    :cond_7
    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 580
    add-int/lit8 v3, v2, -0x1

    :goto_6
    if-ltz v3, :cond_a

    .line 581
    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 582
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 583
    add-int/lit8 v5, v1, -0x1

    :goto_7
    if-ltz v5, :cond_9

    .line 584
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v6, v0

    .line 585
    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 586
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v7, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 587
    invoke-virtual {p0, v6}, Lo/ᵖ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 588
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 589
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 590
    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 583
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 580
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 594
    :cond_a
    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 595
    add-int/lit8 v3, v2, -0x1

    :goto_8
    if-ltz v3, :cond_d

    .line 596
    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 597
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 598
    add-int/lit8 v5, v1, -0x1

    :goto_9
    if-ltz v5, :cond_c

    .line 599
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$if;

    invoke-direct {p0, v0}, Lo/ᵖ;->ˋ(Lo/ᵖ$if;)V

    .line 600
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 601
    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 598
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 595
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 606
    :cond_d
    iget-object v0, p0, Lo/ᵖ;->ے:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᵖ;->ˏ(Ljava/util/List;)V

    .line 607
    iget-object v0, p0, Lo/ᵖ;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᵖ;->ˏ(Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lo/ᵖ;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᵖ;->ˏ(Ljava/util/List;)V

    .line 609
    iget-object v0, p0, Lo/ᵖ;->ܘ:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᵖ;->ˏ(Ljava/util/List;)V

    .line 611
    invoke-virtual {p0}, Lo/ᵖ;->ɼ()V

    .line 612
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 1

    .line 187
    invoke-virtual {p0, p1}, Lo/ᵖ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 188
    iget-object v0, p0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z
    .locals 11

    .line 249
    iget-object v8, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 250
    int-to-float v0, p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v1}, Lo/ﺑ;->ˑ(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 251
    int-to-float v0, p3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v1}, Lo/ﺑ;->ـ(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 252
    invoke-virtual {p0, p1}, Lo/ᵖ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 253
    sub-int v9, p4, p2

    .line 254
    sub-int v10, p5, p3

    .line 255
    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lo/ᵖ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 257
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_0
    if-eqz v9, :cond_1

    .line 260
    neg-int v0, v9

    int-to-float v0, v0

    invoke-static {v8, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 262
    :cond_1
    if-eqz v10, :cond_2

    .line 263
    neg-int v0, v10

    int-to-float v0, v0

    invoke-static {v8, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 265
    :cond_2
    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    new-instance v1, Lo/ᵖ$ˊ;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lo/ᵖ$ˊ;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;IIIILo/ᵟ;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z
    .locals 14

    .line 311
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ˑ(Landroid/view/View;)F

    move-result v9

    .line 312
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ـ(Landroid/view/View;)F

    move-result v10

    .line 313
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ˉ(Landroid/view/View;)F

    move-result v11

    .line 314
    invoke-virtual {p0, p1}, Lo/ᵖ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 315
    sub-int v0, p5, p3

    int-to-float v0, v0

    sub-float/2addr v0, v9

    float-to-int v12, v0

    .line 316
    sub-int v0, p6, p4

    int-to-float v0, v0

    sub-float/2addr v0, v10

    float-to-int v13, v0

    .line 318
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v9}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 319
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v10}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 320
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v11}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 321
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lo/ᵖ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 324
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    neg-int v1, v12

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 325
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    neg-int v1, v13

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 326
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 328
    :cond_0
    iget-object v0, p0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    new-instance v1, Lo/ᵖ$if;

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lo/ᵖ$if;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIIILo/ᵟ;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public ˎ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 2

    .line 215
    invoke-virtual {p0, p1}, Lo/ᵖ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 216
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 217
    iget-object v0, p0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
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

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 616
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->cancel()V

    .line 615
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method

.method public ᐝ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 7

    .line 422
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 424
    invoke-static {v2}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵘ;->cancel()V

    .line 426
    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 427
    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$ˊ;

    move-object v4, v0

    .line 428
    iget-object v0, v4, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p1, :cond_0

    .line 429
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 430
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 431
    invoke-virtual {p0, p1}, Lo/ᵖ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 432
    iget-object v0, p0, Lo/ᵖ;->ת:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 426
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lo/ᵖ;->ث:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lo/ᵖ;->ˊ(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 436
    iget-object v0, p0, Lo/ᵖ;->פ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 438
    invoke-virtual {p0, p1}, Lo/ᵖ;->ˈ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 440
    :cond_2
    iget-object v0, p0, Lo/ᵖ;->ק:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 442
    invoke-virtual {p0, p1}, Lo/ᵖ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 445
    :cond_3
    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 446
    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 447
    invoke-direct {p0, v4, p1}, Lo/ᵖ;->ˊ(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 448
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Lo/ᵖ;->ڑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 445
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 452
    :cond_5
    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_8

    .line 453
    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 454
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :goto_3
    if-ltz v5, :cond_7

    .line 455
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$ˊ;

    move-object v6, v0

    .line 456
    iget-object v0, v6, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-ne v0, p1, :cond_6

    .line 457
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 458
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 459
    invoke-virtual {p0, p1}, Lo/ᵖ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 460
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 462
    iget-object v0, p0, Lo/ᵖ;->پ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 454
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 452
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 468
    :cond_8
    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_5
    if-ltz v3, :cond_a

    .line 469
    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 470
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 471
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 472
    invoke-virtual {p0, p1}, Lo/ᵖ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 473
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 474
    iget-object v0, p0, Lo/ᵖ;->ٽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 468
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 480
    :cond_a
    iget-object v0, p0, Lo/ᵖ;->ے:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 485
    iget-object v0, p0, Lo/ᵖ;->ۅ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 490
    iget-object v0, p0, Lo/ᵖ;->ܘ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 495
    iget-object v0, p0, Lo/ᵖ;->ۉ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 499
    invoke-direct {p0}, Lo/ᵖ;->ĺ()V

    .line 500
    return-void
.end method
