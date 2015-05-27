.class public Landroid/support/v7/widget/RecyclerView$ι;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1fbe"
.end annotation


# instance fields
.field private aS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;>;"
        }
    .end annotation
.end field

.field private aT:Landroid/util/SparseIntArray;

.field private aU:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3323
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aS:Landroid/util/SparseArray;

    .line 3325
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aT:Landroid/util/SparseIntArray;

    .line 3326
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aU:I

    return-void
.end method

.method private ᒻ(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation

    .line 3410
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 3411
    if-nez v2, :cond_0

    .line 3412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3413
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3414
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 3415
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aT:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3418
    :cond_0
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 3331
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3332
    return-void
.end method

.method detach()V
    .locals 2

    .line 3381
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aU:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aU:I

    .line 3382
    return-void
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$if;)V
    .locals 2

    .line 3377
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aU:I

    .line 3378
    return-void
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$if;Landroid/support/v7/widget/RecyclerView$if;Z)V
    .locals 1

    .line 3398
    if-eqz p1, :cond_0

    .line 3399
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ι;->detach()V

    .line 3401
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aU:I

    if-nez v0, :cond_1

    .line 3402
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ι;->clear()V

    .line 3404
    :cond_1
    if-eqz p2, :cond_2

    .line 3405
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$ι;->ˊ(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 3407
    :cond_2
    return-void
.end method

.method public ٴ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 4

    .line 3367
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v2

    .line 3368
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView$ι;->ᒻ(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 3369
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aT:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 3370
    return-void

    .line 3372
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ڌ()V

    .line 3373
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3374
    return-void
.end method

.method public ᐢ(I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 5

    .line 3345
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ι;->aS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 3346
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3347
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 3348
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v4, v0

    .line 3349
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3350
    return-object v4

    .line 3352
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
