.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private beQ:[I

.field private bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private bez:I

.field private bfm:I

.field private bfn:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

.field private bfo:[Ljava/util/Vector;

.field private bfp:[B

.field private bfq:[[B

.field private bfr:I

.field private bfs:Ljava/util/Vector;

.field private bft:Ljava/util/Vector;

.field private bfu:Lorg/spongycastle/crypto/Digest;

.field private bfv:Z

.field private bfw:Z

.field private bfx:I

.field private bfy:I


# direct methods
.method public constructor <init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    .line 190
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 191
    invoke-interface {p3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfu:Lorg/spongycastle/crypto/Digest;

    .line 192
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    .line 193
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    .line 194
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    .line 195
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    filled-new-array {p1, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfq:[[B

    .line 196
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfp:[B

    .line 198
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfo:[Ljava/util/Vector;

    .line 199
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-ge v3, v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfo:[Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v0, v3

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public qL()[[B
    .locals 7

    .line 492
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 494
    const/4 v4, 0x0

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 500
    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v4

    const/16 v1, 0x40

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    .line 501
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfp:[B

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 503
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    if-ge v6, v0, :cond_1

    .line 505
    add-int/lit8 v0, v6, 0x1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfq:[[B

    aget-object v1, v1, v6

    aput-object v1, v5, v0

    .line 503
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 507
    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 509
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    aput-object v1, v5, v0

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 512
    :cond_2
    return-object v5
.end method

.method public qM()[I
    .locals 5

    .line 524
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 526
    const/4 v2, 0x0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 532
    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    new-array v3, v0, [I

    .line 533
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 534
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    const/4 v1, 0x1

    aput v0, v3, v1

    .line 535
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    const/4 v1, 0x2

    aput v0, v3, v1

    .line 536
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfx:I

    const/4 v1, 0x3

    aput v0, v3, v1

    .line 537
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfy:I

    const/4 v1, 0x4

    aput v0, v3, v1

    .line 538
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfw:Z

    if-eqz v0, :cond_1

    .line 540
    const/4 v0, 0x1

    const/4 v1, 0x5

    aput v0, v3, v1

    goto :goto_1

    .line 544
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x5

    aput v0, v3, v1

    .line 546
    :goto_1
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfv:Z

    if-eqz v0, :cond_2

    .line 548
    const/4 v0, 0x1

    const/4 v1, 0x6

    aput v0, v3, v1

    goto :goto_2

    .line 552
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x6

    aput v0, v3, v1

    .line 554
    :goto_2
    const/4 v0, 0x7

    aput v2, v3, v0

    .line 556
    const/4 v4, 0x0

    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    if-ge v4, v0, :cond_3

    .line 558
    add-int/lit8 v0, v4, 0x8

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    aget v1, v1, v4

    aput v1, v3, v0

    .line 556
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 560
    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_4

    .line 562
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bft:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v3, v0

    .line 560
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 566
    :cond_4
    return-object v3
.end method

.method public qX()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfw:Z

    return v0
.end method

.method public qY()[[B
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfq:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->ˊ([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public qZ()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfn:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->ˊ([Lorg/spongycastle/pqc/crypto/gmss/Treehash;)[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    return-object v0
.end method

.method public ra()[Ljava/util/Vector;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfo:[Ljava/util/Vector;

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->ˊ([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public rb()[B
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfp:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 574
    const-string v3, ""

    .line 576
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 578
    const/4 v4, 0x0

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 585
    :goto_0
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v4

    if-ge v5, v0, :cond_1

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qM()[I

    move-result-object v1

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 589
    :cond_1
    const/4 v5, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v4

    if-ge v5, v0, :cond_2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qL()[[B

    move-result-object v2

    aget-object v2, v2, v5

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

    .line 589
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 593
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 594
    return-object v3
.end method

.method public update([B)V
    .locals 7

    .line 271
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfw:Z

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Too much updates for Tree!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    return-void

    .line 276
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfv:Z

    if-nez v0, :cond_1

    .line 278
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "GMSSRootCalc not initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 286
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 288
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfq:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 293
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    if-le v0, v1, :cond_3

    .line 295
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfn:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->ᵄ([B)V

    .line 299
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x3

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    .line 302
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    if-ne v0, v1, :cond_4

    .line 305
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfo:[Ljava/util/Vector;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 310
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_5

    .line 312
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bft:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 318
    :cond_5
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    new-array v4, v0, [B

    .line 319
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    shl-int/lit8 v0, v0, 0x1

    new-array v5, v0, [B

    .line 322
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    const/4 v6, 0x0

    .line 326
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bft:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v6, v0, :cond_a

    .line 331
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 334
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bft:Ljava/util/Vector;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bft:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 335
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    const/4 v2, 0x0

    invoke-static {v4, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfu:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 338
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v4, v0, [B

    .line 339
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfu:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 342
    add-int/lit8 v6, v6, 0x1

    .line 343
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    if-ge v6, v0, :cond_6

    .line 345
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    aget v1, v0, v6

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v6

    .line 348
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    aget v0, v0, v6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 350
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfq:[[B

    aget-object v0, v0, v6

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_7
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    sub-int/2addr v0, v1

    if-lt v6, v0, :cond_9

    .line 356
    if-nez v6, :cond_8

    .line 358
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "M\ufffd\ufffd\ufffdP"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    :cond_8
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    aget v0, v0, v6

    add-int/lit8 v0, v0, -0x3

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    aget v0, v0, v6

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    .line 367
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfo:[Ljava/util/Vector;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    sub-int/2addr v1, v2

    sub-int v1, v6, v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 374
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    aget v0, v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 376
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfn:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v0, v0, v6

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->ᵄ([B)V

    goto/16 :goto_1

    .line 382
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bft:Ljava/util/Vector;

    invoke-static {v6}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 386
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    if-ne v6, v0, :cond_b

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfw:Z

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfv:Z

    .line 390
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfp:[B

    .line 394
    :cond_b
    :goto_2
    return-void
.end method

.method public ʼ(Ljava/util/Vector;)V
    .locals 5

    .line 213
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    sub-int/2addr v0, v1

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfn:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 214
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    sub-int/2addr v0, v1

    if-ge v4, v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfn:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, p1, v4, v2}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;-><init>(Ljava/util/Vector;ILorg/spongycastle/crypto/Digest;)V

    aput-object v1, v0, v4

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    .line 220
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfq:[[B

    .line 221
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bez:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfp:[B

    .line 223
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfs:Ljava/util/Vector;

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bft:Ljava/util/Vector;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfv:Z

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfw:Z

    .line 228
    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfm:I

    if-ge v4, v0, :cond_1

    .line 230
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->beQ:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 233
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfo:[Ljava/util/Vector;

    .line 234
    const/4 v4, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfr:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    .line 236
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfo:[Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v0, v4

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 239
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfx:I

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfy:I

    .line 241
    return-void
.end method

.method public ۥ([BI)V
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->bfn:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->ᘁ([B)V

    .line 406
    return-void
.end method
