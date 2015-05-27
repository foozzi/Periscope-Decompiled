.class Lo/ᵅ$if;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵅ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private ḭ:Lo/ᵁ;

.field private ṫ:I

.field final synthetic ṭ:Lo/ᵅ;


# direct methods
.method public constructor <init>(Lo/ᵅ;Lo/ᵁ;)V
    .locals 1

    .line 339
    iput-object p1, p0, Lo/ᵅ$if;->ṭ:Lo/ᵅ;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lo/ᵅ$if;->ṫ:I

    .line 340
    iput-object p2, p0, Lo/ᵅ$if;->ḭ:Lo/ᵁ;

    .line 341
    invoke-virtual {p0}, Lo/ᵅ$if;->נ()V

    .line 342
    return-void
.end method

.method static synthetic ˊ(Lo/ᵅ$if;)Lo/ᵁ;
    .locals 1

    .line 335
    iget-object v0, p0, Lo/ᵅ$if;->ḭ:Lo/ᵁ;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 345
    iget-object v0, p0, Lo/ᵅ$if;->ṭ:Lo/ᵅ;

    invoke-static {v0}, Lo/ᵅ;->ˊ(Lo/ᵅ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵅ$if;->ḭ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->丶()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᵅ$if;->ḭ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->ⁿ()Ljava/util/ArrayList;

    move-result-object v2

    .line 347
    :goto_0
    iget v0, p0, Lo/ᵅ$if;->ṫ:I

    if-gez v0, :cond_1

    .line 348
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 350
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 335
    invoke-virtual {p0, p1}, Lo/ᵅ$if;->ᒽ(I)Lo/ᵃ;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 365
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 369
    if-nez p2, :cond_0

    .line 370
    iget-object v0, p0, Lo/ᵅ$if;->ṭ:Lo/ᵅ;

    invoke-static {v0}, Lo/ᵅ;->ˋ(Lo/ᵅ;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lo/ᵅ;->ᔂ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 373
    :cond_0
    move-object v0, p2

    check-cast v0, Lo/ᵊ$if;

    move-object v3, v0

    .line 374
    iget-object v0, p0, Lo/ᵅ$if;->ṭ:Lo/ᵅ;

    iget-boolean v0, v0, Lo/ᵅ;->о:Z

    if-eqz v0, :cond_1

    .line 375
    move-object v0, p2

    check-cast v0, Lo/ᴾ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ᴾ;->setForceShowIcon(Z)V

    .line 377
    :cond_1
    invoke-virtual {p0, p1}, Lo/ᵅ$if;->ᒽ(I)Lo/ᵃ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Lo/ᵊ$if;->ˊ(Lo/ᵃ;I)V

    .line 378
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 399
    invoke-virtual {p0}, Lo/ᵅ$if;->נ()V

    .line 400
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 401
    return-void
.end method

.method נ()V
    .locals 6

    .line 382
    iget-object v0, p0, Lo/ᵅ$if;->ṭ:Lo/ᵅ;

    invoke-static {v0}, Lo/ᵅ;->ˎ(Lo/ᵅ;)Lo/ᵁ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵁ;->ﯦ()Lo/ᵃ;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_1

    .line 384
    iget-object v0, p0, Lo/ᵅ$if;->ṭ:Lo/ᵅ;

    invoke-static {v0}, Lo/ᵅ;->ˎ(Lo/ᵅ;)Lo/ᵁ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵁ;->丶()Ljava/util/ArrayList;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 386
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 387
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵃ;

    move-object v5, v0

    .line 388
    if-ne v5, v1, :cond_0

    .line 389
    iput v4, p0, Lo/ᵅ$if;->ṫ:I

    .line 390
    return-void

    .line 386
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lo/ᵅ$if;->ṫ:I

    .line 395
    return-void
.end method

.method public ᒽ(I)Lo/ᵃ;
    .locals 2

    .line 354
    iget-object v0, p0, Lo/ᵅ$if;->ṭ:Lo/ᵅ;

    invoke-static {v0}, Lo/ᵅ;->ˊ(Lo/ᵅ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵅ$if;->ḭ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->丶()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᵅ$if;->ḭ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->ⁿ()Ljava/util/ArrayList;

    move-result-object v1

    .line 356
    :goto_0
    iget v0, p0, Lo/ᵅ$if;->ṫ:I

    if-ltz v0, :cond_1

    iget v0, p0, Lo/ᵅ$if;->ṫ:I

    if-lt p1, v0, :cond_1

    .line 357
    add-int/lit8 p1, p1, 0x1

    .line 359
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵃ;

    return-object v0
.end method
