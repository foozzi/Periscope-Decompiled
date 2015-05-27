.class final Lo/ᚆ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᚆ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field private final xm:I

.field private xn:Z

.field private xo:Z

.field public xp:[B

.field public xq:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput p1, p0, Lo/ᚆ$if;->xm:I

    .line 391
    add-int/lit8 v0, p2, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ᚆ$if;->xp:[B

    .line 392
    iget-object v0, p0, Lo/ᚆ$if;->xp:[B

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 393
    iget-object v0, p0, Lo/ᚆ$if;->xp:[B

    int-to-byte v1, p1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 394
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lo/ᚆ$if;->xo:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᚆ$if;->xn:Z

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᚆ$if;->xo:Z

    .line 402
    return-void
.end method

.method public ʻ([BII)V
    .locals 4

    .line 434
    iget-boolean v0, p0, Lo/ᚆ$if;->xn:Z

    if-nez v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    sub-int v3, p3, p2

    .line 438
    iget-object v0, p0, Lo/ᚆ$if;->xp:[B

    array-length v0, v0

    iget v1, p0, Lo/ᚆ$if;->xq:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lo/ᚆ$if;->xp:[B

    iget v1, p0, Lo/ᚆ$if;->xq:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lo/ᚆ$if;->xp:[B

    .line 441
    :cond_1
    iget-object v0, p0, Lo/ᚆ$if;->xp:[B

    iget v1, p0, Lo/ᚆ$if;->xq:I

    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget v0, p0, Lo/ᚆ$if;->xq:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/ᚆ$if;->xq:I

    .line 443
    return-void
.end method

.method public ᕪ(I)V
    .locals 1

    .line 417
    iget-boolean v0, p0, Lo/ᚆ$if;->xn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 418
    iget v0, p0, Lo/ᚆ$if;->xm:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lo/ᚆ$if;->xn:Z

    .line 419
    iget-boolean v0, p0, Lo/ᚆ$if;->xn:Z

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x4

    iput v0, p0, Lo/ᚆ$if;->xq:I

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᚆ$if;->xo:Z

    .line 424
    :cond_2
    return-void
.end method

.method public ᙆ(I)Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lo/ᚆ$if;->xn:Z

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    return v0

    .line 456
    :cond_0
    iget v0, p0, Lo/ᚆ$if;->xq:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/ᚆ$if;->xq:I

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᚆ$if;->xn:Z

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᚆ$if;->xo:Z

    .line 459
    const/4 v0, 0x1

    return v0
.end method
