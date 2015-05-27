.class Lo/agp$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private final bDH:I

.field private final bDI:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<Lo/ang;Lo/agy$if;>;"
        }
    .end annotation
.end field

.field private final bDJ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<Lo/ang;>;"
        }
    .end annotation
.end field

.field final synthetic bDK:Lo/agp;


# direct methods
.method constructor <init>(Lo/agp;I)V
    .locals 2

    .line 251
    iput-object p1, p0, Lo/agp$if;->bDK:Lo/agp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p2, p0, Lo/agp$if;->bDH:I

    .line 253
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lo/agp$ˊ;

    invoke-direct {v1}, Lo/agp$ˊ;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    .line 254
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/agp$if;->bDJ:Ljava/util/LinkedList;

    .line 255
    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 313
    iget-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method zx()Lo/agy$if;
    .locals 2

    .line 267
    iget-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    iget-object v1, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agy$if;

    return-object v0
.end method

.method ˊ(Lo/agy$if;)V
    .locals 1

    .line 258
    invoke-virtual {p1}, Lo/agy$if;->zC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lo/agp$if;->bDK:Lo/agp;

    invoke-static {v0}, Lo/agp;->ˊ(Lo/agp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    :cond_0
    return-void
.end method

.method ˊ(Lo/ang;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agy$if;

    move-object v1, v0

    .line 306
    if-eqz v1, :cond_0

    .line 307
    iget-object v0, p0, Lo/agp$if;->bDK:Lo/agp;

    invoke-static {v0}, Lo/agp;->ˊ(Lo/agp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 308
    invoke-virtual {v1}, Lo/agy$if;->reset()V

    .line 310
    :cond_0
    return-void
.end method

.method ˊ(Lo/ang;Lo/agy$if;)V
    .locals 13

    .line 274
    iget-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agy$if;

    move-object v4, v0

    .line 275
    iget v0, p0, Lo/agp$if;->bDH:I

    if-lez v0, :cond_4

    .line 276
    iget-object v0, p0, Lo/agp$if;->bDJ:Ljava/util/LinkedList;

    iget-object v1, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 278
    const/4 v5, 0x0

    .line 279
    iget-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agy$if;

    move-object v7, v0

    .line 280
    invoke-virtual {v7}, Lo/agy$if;->zB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    add-int/lit8 v5, v5, 0x1

    .line 283
    :cond_0
    goto :goto_0

    .line 285
    :cond_1
    iget v0, p0, Lo/agp$if;->bDH:I

    int-to-float v0, v0

    int-to-float v1, v5

    div-float v6, v0, v1

    .line 286
    const v0, 0x458ca000    # 4500.0f

    mul-float/2addr v0, v6

    float-to-long v0, v0

    const-wide/16 v2, 0x12c

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 288
    iget-object v0, p0, Lo/agp$if;->bDJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v9

    .line 289
    const/4 v10, 0x0

    .line 290
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ang;

    move-object v11, v0

    .line 292
    iget-object v0, p0, Lo/agp$if;->bDI:Ljava/util/SortedMap;

    invoke-interface {v0, v11}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agy$if;

    move-object v12, v0

    .line 293
    iget v0, p0, Lo/agp$if;->bDH:I

    if-lt v10, v0, :cond_2

    .line 294
    invoke-virtual {v12, v7, v8}, Lo/agy$if;->setDuration(J)V

    .line 295
    invoke-virtual {p0, v12}, Lo/agp$if;->ˊ(Lo/agy$if;)V

    .line 297
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 298
    goto :goto_1

    .line 299
    :cond_3
    iget-object v0, p0, Lo/agp$if;->bDJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 301
    :cond_4
    iget-object v0, p0, Lo/agp$if;->bDK:Lo/agp;

    invoke-static {v0}, Lo/agp;->ˊ(Lo/agp;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void
.end method
