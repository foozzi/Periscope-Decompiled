.class public Lorg/spongycastle/pqc/crypto/gmss/Treehash;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bfM:[B

.field private bfN:[B

.field private bfO:[B

.field private bfP:I

.field private bfQ:I

.field private bfR:Z

.field private bfs:Ljava/util/Vector;

.field private bft:Ljava/util/Vector;

.field private bfu:Lorg/spongycastle/crypto/Digest;

.field private bfv:Z

.field private bfw:Z

.field private maxHeight:I


# direct methods
.method public constructor <init>(Ljava/util/Vector;ILorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfs:Ljava/util/Vector;

    .line 152
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfM:[B

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfv:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfw:Z

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfR:Z

    .line 157
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfu:Lorg/spongycastle/crypto/Digest;

    .line 159
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfO:[B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfN:[B

    .line 161
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .line 182
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfR:Z

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bft:Ljava/util/Vector;

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfM:[B

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfQ:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfv:Z

    .line 193
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfO:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfN:[B

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    return-void
.end method

.method public qL()[[B
    .locals 6

    .line 445
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 447
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfM:[B

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 448
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfN:[B

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 449
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfO:[B

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 450
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    if-ge v5, v0, :cond_0

    .line 452
    add-int/lit8 v0, v5, 0x3

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfs:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    aput-object v1, v4, v0

    .line 450
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-object v4
.end method

.method public qM()[I
    .locals 4

    .line 465
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    add-int/lit8 v0, v0, 0x6

    new-array v2, v0, [I

    .line 466
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 467
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 468
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfQ:I

    const/4 v1, 0x2

    aput v0, v2, v1

    .line 469
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfw:Z

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput v0, v2, v1

    goto :goto_0

    .line 475
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v0, v2, v1

    .line 477
    :goto_0
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfv:Z

    if-eqz v0, :cond_1

    .line 479
    const/4 v0, 0x1

    const/4 v1, 0x4

    aput v0, v2, v1

    goto :goto_1

    .line 483
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v0, v2, v1

    .line 485
    :goto_1
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfR:Z

    if-eqz v0, :cond_2

    .line 487
    const/4 v0, 0x1

    const/4 v1, 0x5

    aput v0, v2, v1

    goto :goto_2

    .line 491
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x5

    aput v0, v2, v1

    .line 493
    :goto_2
    const/4 v3, 0x0

    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    if-ge v3, v0, :cond_3

    .line 495
    add-int/lit8 v0, v3, 0x6

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bft:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 497
    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 505
    const-string v3, "Treehash    : "

    .line 506
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    add-int/lit8 v0, v0, 0x6

    if-ge v4, v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->qM()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 510
    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfP:I

    add-int/lit8 v0, v0, 0x3

    if-ge v4, v0, :cond_2

    .line 512
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->qL()[[B

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->qL()[[B

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 518
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 521
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    return-object v3
.end method

.method public ᘁ([B)V
    .locals 4

    .line 171
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfO:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfR:Z

    .line 174
    return-void
.end method

.method public ᵄ([B)V
    .locals 1

    .line 407
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfv:Z

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->initialize()V

    .line 411
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfM:[B

    .line 412
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfQ:I

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->bfw:Z

    .line 414
    return-void
.end method
