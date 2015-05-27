.class public final Lo/hk;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hk$ˊ;,
        Lo/hk$if;,
        Lo/hk$ˋ;,
        Lo/hk$ˎ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/util/AbstractMap<TK;TV;>;Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final Lc:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Ljava/lang/Comparable;>;"
        }
    .end annotation
.end field


# instance fields
.field Ld:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<-TK;>;"
        }
    .end annotation
.end field

.field Le:Lo/hk$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation
.end field

.field final Lf:Lo/hk$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation
.end field

.field private Lg:Lo/hk$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hk<TK;TV;>.if;"
        }
    .end annotation
.end field

.field private Lh:Lo/hk$ˊ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hk<TK;TV;>.\u02ca;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lo/hk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/hk;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Lo/hl;

    invoke-direct {v0}, Lo/hl;-><init>()V

    sput-object v0, Lo/hk;->Lc:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    sget-object v0, Lo/hk;->Lc:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lo/hk;-><init>(Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Comparator<-TK;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lo/hk;->size:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lo/hk;->modCount:I

    .line 52
    new-instance v0, Lo/hk$ˎ;

    invoke-direct {v0}, Lo/hk$ˎ;-><init>()V

    iput-object v0, p0, Lo/hk;->Lf:Lo/hk$ˎ;

    .line 72
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lo/hk;->Lc:Ljava/util/Comparator;

    :goto_0
    iput-object v0, p0, Lo/hk;->Ld:Ljava/util/Comparator;

    .line 75
    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 208
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 625
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private ˊ(Lo/hk$ˎ;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/hk$\u02ce<TK;TV;>;)V"
        }
    .end annotation

    .line 374
    iget-object v2, p1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 375
    iget-object v3, p1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 376
    iget-object v4, v3, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 377
    iget-object v5, v3, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 380
    iput-object v4, p1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 381
    if-eqz v4, :cond_0

    .line 382
    iput-object p1, v4, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 385
    :cond_0
    invoke-direct {p0, p1, v3}, Lo/hk;->ˊ(Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 388
    iput-object p1, v3, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 389
    iput-object v3, p1, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 392
    if-eqz v2, :cond_1

    iget v0, v2, Lo/hk$ˎ;->height:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v4, :cond_2

    iget v1, v4, Lo/hk$ˎ;->height:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lo/hk$ˎ;->height:I

    .line 394
    iget v0, p1, Lo/hk$ˎ;->height:I

    if-eqz v5, :cond_3

    iget v1, v5, Lo/hk$ˎ;->height:I

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lo/hk$ˎ;->height:I

    .line 396
    return-void
.end method

.method private ˊ(Lo/hk$ˎ;Lo/hk$ˎ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/hk$\u02ce<TK;TV;>;Lo/hk$\u02ce<TK;TV;>;)V"
        }
    .end annotation

    .line 285
    iget-object v1, p1, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p1, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 287
    if-eqz p2, :cond_0

    .line 288
    iput-object v1, p2, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 291
    :cond_0
    if-eqz v1, :cond_3

    .line 292
    iget-object v0, v1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    if-ne v0, p1, :cond_1

    .line 293
    iput-object p2, v1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    goto :goto_0

    .line 295
    :cond_1
    sget-boolean v0, Lo/hk;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_2
    iput-object p2, v1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    goto :goto_0

    .line 299
    :cond_3
    iput-object p2, p0, Lo/hk;->Le:Lo/hk$ˎ;

    .line 301
    :goto_0
    return-void
.end method

.method private ˋ(Lo/hk$ˎ;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/hk$\u02ce<TK;TV;>;)V"
        }
    .end annotation

    .line 402
    iget-object v2, p1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 403
    iget-object v3, p1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 404
    iget-object v4, v2, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 405
    iget-object v5, v2, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 408
    iput-object v5, p1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 409
    if-eqz v5, :cond_0

    .line 410
    iput-object p1, v5, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v2}, Lo/hk;->ˊ(Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 416
    iput-object p1, v2, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 417
    iput-object v2, p1, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 420
    if-eqz v3, :cond_1

    iget v0, v3, Lo/hk$ˎ;->height:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v5, :cond_2

    iget v1, v5, Lo/hk$ˎ;->height:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lo/hk$ˎ;->height:I

    .line 422
    iget v0, p1, Lo/hk$ˎ;->height:I

    if-eqz v4, :cond_3

    iget v1, v4, Lo/hk$ˎ;->height:I

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lo/hk$ˎ;->height:I

    .line 424
    return-void
.end method

.method private ˋ(Lo/hk$ˎ;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/hk$\u02ce<TK;TV;>;Z)V"
        }
    .end annotation

    .line 311
    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_13

    .line 312
    iget-object v3, v2, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 313
    iget-object v4, v2, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 314
    if-eqz v3, :cond_0

    iget v5, v3, Lo/hk$ˎ;->height:I

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 315
    :goto_1
    if-eqz v4, :cond_1

    iget v6, v4, Lo/hk$ˎ;->height:I

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 317
    :goto_2
    sub-int v7, v5, v6

    .line 318
    const/4 v0, -0x2

    if-ne v7, v0, :cond_8

    .line 319
    iget-object v8, v4, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 320
    iget-object v9, v4, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 321
    if-eqz v9, :cond_2

    iget v10, v9, Lo/hk$ˎ;->height:I

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 322
    :goto_3
    if-eqz v8, :cond_3

    iget v11, v8, Lo/hk$ˎ;->height:I

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    .line 324
    :goto_4
    sub-int v12, v11, v10

    .line 325
    const/4 v0, -0x1

    if-eq v12, v0, :cond_4

    if-nez v12, :cond_5

    if-nez p2, :cond_5

    .line 326
    :cond_4
    invoke-direct {p0, v2}, Lo/hk;->ˊ(Lo/hk$ˎ;)V

    goto :goto_5

    .line 328
    :cond_5
    sget-boolean v0, Lo/hk;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-eq v12, v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 329
    :cond_6
    invoke-direct {p0, v4}, Lo/hk;->ˋ(Lo/hk$ˎ;)V

    .line 330
    invoke-direct {p0, v2}, Lo/hk;->ˊ(Lo/hk$ˎ;)V

    .line 332
    :goto_5
    if-eqz p2, :cond_7

    .line 333
    goto/16 :goto_a

    .line 336
    :cond_7
    goto/16 :goto_9

    :cond_8
    const/4 v0, 0x2

    if-ne v7, v0, :cond_f

    .line 337
    iget-object v8, v3, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 338
    iget-object v9, v3, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 339
    if-eqz v9, :cond_9

    iget v10, v9, Lo/hk$ˎ;->height:I

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    .line 340
    :goto_6
    if-eqz v8, :cond_a

    iget v11, v8, Lo/hk$ˎ;->height:I

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 342
    :goto_7
    sub-int v12, v11, v10

    .line 343
    const/4 v0, 0x1

    if-eq v12, v0, :cond_b

    if-nez v12, :cond_c

    if-nez p2, :cond_c

    .line 344
    :cond_b
    invoke-direct {p0, v2}, Lo/hk;->ˋ(Lo/hk$ˎ;)V

    goto :goto_8

    .line 346
    :cond_c
    sget-boolean v0, Lo/hk;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, -0x1

    if-eq v12, v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 347
    :cond_d
    invoke-direct {p0, v3}, Lo/hk;->ˊ(Lo/hk$ˎ;)V

    .line 348
    invoke-direct {p0, v2}, Lo/hk;->ˋ(Lo/hk$ˎ;)V

    .line 350
    :goto_8
    if-eqz p2, :cond_e

    .line 351
    goto :goto_a

    .line 354
    :cond_e
    goto :goto_9

    :cond_f
    if-nez v7, :cond_10

    .line 355
    add-int/lit8 v0, v5, 0x1

    iput v0, v2, Lo/hk$ˎ;->height:I

    .line 356
    if-eqz p2, :cond_12

    .line 357
    goto :goto_a

    .line 361
    :cond_10
    sget-boolean v0, Lo/hk;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, -0x1

    if-eq v7, v0, :cond_11

    const/4 v0, 0x1

    if-eq v7, v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_11
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lo/hk$ˎ;->height:I

    .line 363
    if-nez p2, :cond_12

    .line 364
    goto :goto_a

    .line 311
    :cond_12
    :goto_9
    iget-object v2, v2, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    goto/16 :goto_0

    .line 368
    :cond_13
    :goto_a
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lo/hk;->Le:Lo/hk$ˎ;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lo/hk;->size:I

    .line 103
    iget v0, p0, Lo/hk;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/hk;->modCount:I

    .line 106
    iget-object v2, p0, Lo/hk;->Lf:Lo/hk$ˎ;

    .line 107
    iput-object v2, v2, Lo/hk$ˎ;->Lr:Lo/hk$ˎ;

    iput-object v2, v2, Lo/hk$ˎ;->Ll:Lo/hk$ˎ;

    .line 108
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 87
    invoke-virtual {p0, p1}, Lo/hk;->ᵗ(Ljava/lang/Object;)Lo/hk$ˎ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
        }
    .end annotation

    .line 430
    iget-object v1, p0, Lo/hk;->Lg:Lo/hk$if;

    .line 431
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lo/hk$if;

    invoke-direct {v0, p0}, Lo/hk$if;-><init>(Lo/hk;)V

    iput-object v0, p0, Lo/hk;->Lg:Lo/hk$if;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;)TV;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lo/hk;->ᵗ(Ljava/lang/Object;)Lo/hk$ˎ;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    iget-object v0, v1, Lo/hk$ˎ;->Kx:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<TK;>;"
        }
    .end annotation

    .line 435
    iget-object v1, p0, Lo/hk;->Lh:Lo/hk$ˊ;

    .line 436
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lo/hk$ˊ;

    invoke-direct {v0, p0}, Lo/hk$ˊ;-><init>(Lo/hk;)V

    iput-object v0, p0, Lo/hk;->Lh:Lo/hk$ˊ;

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo/hk;->ˋ(Ljava/lang/Object;Z)Lo/hk$ˎ;

    move-result-object v2

    .line 95
    iget-object v3, v2, Lo/hk$ˎ;->Kx:Ljava/lang/Object;

    .line 96
    iput-object p2, v2, Lo/hk$ˎ;->Kx:Ljava/lang/Object;

    .line 97
    return-object v3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;)TV;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lo/hk;->ﾟ(Ljava/lang/Object;)Lo/hk$ˎ;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    iget-object v0, v1, Lo/hk$ˎ;->Kx:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 78
    iget v0, p0, Lo/hk;->size:I

    return v0
.end method

.method ˊ(Lo/hk$ˎ;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/hk$\u02ce<TK;TV;>;Z)V"
        }
    .end annotation

    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p1, Lo/hk$ˎ;->Lr:Lo/hk$ˎ;

    iget-object v1, p1, Lo/hk$ˎ;->Ll:Lo/hk$ˎ;

    iput-object v1, v0, Lo/hk$ˎ;->Ll:Lo/hk$ˎ;

    .line 220
    iget-object v0, p1, Lo/hk$ˎ;->Ll:Lo/hk$ˎ;

    iget-object v1, p1, Lo/hk$ˎ;->Lr:Lo/hk$ˎ;

    iput-object v1, v0, Lo/hk$ˎ;->Lr:Lo/hk$ˎ;

    .line 223
    :cond_0
    iget-object v2, p1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 224
    iget-object v3, p1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 225
    iget-object v4, p1, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 226
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 237
    iget v0, v2, Lo/hk$ˎ;->height:I

    iget v1, v3, Lo/hk$ˎ;->height:I

    if-le v0, v1, :cond_1

    invoke-virtual {v2}, Lo/hk$ˎ;->G()Lo/hk$ˎ;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lo/hk$ˎ;->F()Lo/hk$ˎ;

    move-result-object v5

    .line 238
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lo/hk;->ˊ(Lo/hk$ˎ;Z)V

    .line 240
    const/4 v6, 0x0

    .line 241
    iget-object v2, p1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 242
    if-eqz v2, :cond_2

    .line 243
    iget v6, v2, Lo/hk$ˎ;->height:I

    .line 244
    iput-object v2, v5, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 245
    iput-object v5, v2, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    .line 249
    :cond_2
    const/4 v7, 0x0

    .line 250
    iget-object v3, p1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 251
    if-eqz v3, :cond_3

    .line 252
    iget v7, v3, Lo/hk$ˎ;->height:I

    .line 253
    iput-object v3, v5, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 254
    iput-object v5, v3, Lo/hk$ˎ;->Lo:Lo/hk$ˎ;

    .line 255
    const/4 v0, 0x0

    iput-object v0, p1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 258
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lo/hk$ˎ;->height:I

    .line 259
    invoke-direct {p0, p1, v5}, Lo/hk;->ˊ(Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 260
    return-void

    .line 261
    :cond_4
    if-eqz v2, :cond_5

    .line 262
    invoke-direct {p0, p1, v2}, Lo/hk;->ˊ(Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p1, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    goto :goto_1

    .line 264
    :cond_5
    if-eqz v3, :cond_6

    .line 265
    invoke-direct {p0, p1, v3}, Lo/hk;->ˊ(Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p1, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    goto :goto_1

    .line 268
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/hk;->ˊ(Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 271
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lo/hk;->ˋ(Lo/hk$ˎ;Z)V

    .line 272
    iget v0, p0, Lo/hk;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/hk;->size:I

    .line 273
    iget v0, p0, Lo/hk;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/hk;->modCount:I

    .line 274
    return-void
.end method

.method ˋ(Ljava/lang/Object;Z)Lo/hk$ˎ;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation

    .line 122
    iget-object v3, p0, Lo/hk;->Ld:Ljava/util/Comparator;

    .line 123
    iget-object v4, p0, Lo/hk;->Le:Lo/hk$ˎ;

    .line 124
    const/4 v5, 0x0

    .line 126
    if-eqz v4, :cond_5

    .line 129
    sget-object v0, Lo/hk;->Lc:Ljava/util/Comparator;

    if-ne v3, v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 134
    :goto_0
    if-eqz v6, :cond_1

    iget-object v0, v4, Lo/hk$ˎ;->it:Ljava/lang/Object;

    invoke-interface {v6, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_1
    iget-object v0, v4, Lo/hk$ˎ;->it:Ljava/lang/Object;

    invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 139
    :goto_1
    if-nez v5, :cond_2

    .line 140
    return-object v4

    .line 144
    :cond_2
    if-gez v5, :cond_3

    iget-object v7, v4, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    goto :goto_2

    :cond_3
    iget-object v7, v4, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 145
    :goto_2
    if-nez v7, :cond_4

    .line 146
    goto :goto_3

    .line 149
    :cond_4
    move-object v4, v7

    .line 150
    goto :goto_0

    .line 154
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_6
    iget-object v6, p0, Lo/hk;->Lf:Lo/hk$ˎ;

    .line 161
    if-nez v4, :cond_8

    .line 163
    sget-object v0, Lo/hk;->Lc:Ljava/util/Comparator;

    if-ne v3, v0, :cond_7

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_7

    .line 164
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_7
    new-instance v7, Lo/hk$ˎ;

    iget-object v0, v6, Lo/hk$ˎ;->Lr:Lo/hk$ˎ;

    invoke-direct {v7, v4, p1, v6, v0}, Lo/hk$ˎ;-><init>(Lo/hk$ˎ;Ljava/lang/Object;Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 167
    iput-object v7, p0, Lo/hk;->Le:Lo/hk$ˎ;

    goto :goto_5

    .line 169
    :cond_8
    new-instance v7, Lo/hk$ˎ;

    iget-object v0, v6, Lo/hk$ˎ;->Lr:Lo/hk$ˎ;

    invoke-direct {v7, v4, p1, v6, v0}, Lo/hk$ˎ;-><init>(Lo/hk$ˎ;Ljava/lang/Object;Lo/hk$ˎ;Lo/hk$ˎ;)V

    .line 170
    if-gez v5, :cond_9

    .line 171
    iput-object v7, v4, Lo/hk$ˎ;->Lp:Lo/hk$ˎ;

    goto :goto_4

    .line 173
    :cond_9
    iput-object v7, v4, Lo/hk$ˎ;->Lq:Lo/hk$ˎ;

    .line 175
    :goto_4
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lo/hk;->ˋ(Lo/hk$ˎ;Z)V

    .line 177
    :goto_5
    iget v0, p0, Lo/hk;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/hk;->size:I

    .line 178
    iget v0, p0, Lo/hk;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/hk;->modCount:I

    .line 180
    return-object v7
.end method

.method ˋ(Ljava/util/Map$Entry;)Lo/hk$ˎ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map$Entry<**>;)Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/hk;->ᵗ(Ljava/lang/Object;)Lo/hk$ˎ;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_0

    iget-object v0, v2, Lo/hk$ˎ;->Kx:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 204
    :goto_0
    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method ᵗ(Ljava/lang/Object;)Lo/hk$ˎ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;)Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation

    .line 186
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lo/hk;->ˋ(Ljava/lang/Object;Z)Lo/hk$ˎ;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method ﾟ(Ljava/lang/Object;)Lo/hk$ˎ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;)Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0, p1}, Lo/hk;->ᵗ(Ljava/lang/Object;)Lo/hk$ˎ;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_0

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lo/hk;->ˊ(Lo/hk$ˎ;Z)V

    .line 281
    :cond_0
    return-object v1
.end method
