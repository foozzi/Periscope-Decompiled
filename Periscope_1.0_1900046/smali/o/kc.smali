.class public Lo/kc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final NE:[Ljava/lang/String;

.field private static final NF:[Ljava/lang/String;


# instance fields
.field private Ka:Z

.field private Kb:Z

.field private NG:Ljava/lang/String;

.field private NH:Ljava/lang/String;

.field private Nh:Z

.field private Np:[I

.field private Nq:I

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 145
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lo/kc;->NE:[Ljava/lang/String;

    .line 146
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x1f

    if-gt v5, v0, :cond_0

    .line 147
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\u%04x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\\""

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 150
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\\\"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 151
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\t"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 152
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\b"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 153
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\n"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 154
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\r"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 155
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    const-string v1, "\\f"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 156
    sget-object v0, Lo/kc;->NE:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lo/kc;->NF:[Ljava/lang/String;

    .line 157
    sget-object v0, Lo/kc;->NF:[Ljava/lang/String;

    const-string v1, "\\u003c"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 158
    sget-object v0, Lo/kc;->NF:[Ljava/lang/String;

    const-string v1, "\\u003e"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 159
    sget-object v0, Lo/kc;->NF:[Ljava/lang/String;

    const-string v1, "\\u0026"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 160
    sget-object v0, Lo/kc;->NF:[Ljava/lang/String;

    const-string v1, "\\u003d"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 161
    sget-object v0, Lo/kc;->NF:[Ljava/lang/String;

    const-string v1, "\\u0027"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lo/kc;->Np:[I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lo/kc;->Nq:I

    .line 170
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lo/kc;->ᵇ(I)V

    .line 182
    const-string v0, ":"

    iput-object v0, p0, Lo/kc;->separator:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/kc;->Ka:Z

    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iput-object p1, p0, Lo/kc;->out:Ljava/io/Writer;

    .line 202
    return-void
.end method

.method private ah()I
    .locals 3

    .line 366
    iget v0, p0, Lo/kc;->Nq:I

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iget-object v0, p0, Lo/kc;->Np:[I

    iget v1, p0, Lo/kc;->Nq:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private ai()V
    .locals 1

    .line 400
    iget-object v0, p0, Lo/kc;->NH:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lo/kc;->ak()V

    .line 402
    iget-object v0, p0, Lo/kc;->NH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/kc;->ᵙ(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lo/kc;->NH:Ljava/lang/String;

    .line 405
    :cond_0
    return-void
.end method

.method private aj()V
    .locals 4

    .line 565
    iget-object v0, p0, Lo/kc;->NG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 566
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    const/4 v2, 0x1

    iget v3, p0, Lo/kc;->Nq:I

    :goto_0
    if-ge v2, v3, :cond_1

    .line 571
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    iget-object v1, p0, Lo/kc;->NG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    :cond_1
    return-void
.end method

.method private ak()V
    .locals 3

    .line 580
    invoke-direct {p0}, Lo/kc;->ah()I

    move-result v2

    .line 581
    const/4 v0, 0x5

    if-ne v2, v0, :cond_0

    .line 582
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 583
    :cond_0
    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/kc;->aj()V

    .line 587
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lo/kc;->ᵟ(I)V

    .line 588
    return-void
.end method

.method private ˋ(ILjava/lang/String;)Lo/kc;
    .locals 1

    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/kc;->৲(Z)V

    .line 326
    invoke-direct {p0, p1}, Lo/kc;->ᵇ(I)V

    .line 327
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    return-object p0
.end method

.method private ˎ(IILjava/lang/String;)Lo/kc;
    .locals 4

    .line 337
    invoke-direct {p0}, Lo/kc;->ah()I

    move-result v3

    .line 338
    if-eq v3, p2, :cond_0

    if-eq v3, p1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget-object v0, p0, Lo/kc;->NH:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dangling name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/kc;->NH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    iget v0, p0, Lo/kc;->Nq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/kc;->Nq:I

    .line 346
    if-ne v3, p2, :cond_2

    .line 347
    invoke-direct {p0}, Lo/kc;->aj()V

    .line 349
    :cond_2
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 350
    return-object p0
.end method

.method private ৲(Z)V
    .locals 2

    .line 600
    invoke-direct {p0}, Lo/kc;->ah()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 602
    :pswitch_0
    iget-boolean v0, p0, Lo/kc;->Nh:Z

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    :pswitch_1
    iget-boolean v0, p0, Lo/kc;->Nh:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lo/kc;->ᵟ(I)V

    .line 613
    goto :goto_1

    .line 616
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/kc;->ᵟ(I)V

    .line 617
    invoke-direct {p0}, Lo/kc;->aj()V

    .line 618
    goto :goto_1

    .line 621
    :pswitch_3
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 622
    invoke-direct {p0}, Lo/kc;->aj()V

    .line 623
    goto :goto_1

    .line 626
    :pswitch_4
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    iget-object v1, p0, Lo/kc;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 627
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lo/kc;->ᵟ(I)V

    .line 628
    goto :goto_1

    .line 631
    :goto_0
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ᵇ(I)V
    .locals 5

    .line 354
    iget v0, p0, Lo/kc;->Nq:I

    iget-object v1, p0, Lo/kc;->Np:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 355
    iget v0, p0, Lo/kc;->Nq:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [I

    .line 356
    iget-object v0, p0, Lo/kc;->Np:[I

    iget v1, p0, Lo/kc;->Nq:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v4, p0, Lo/kc;->Np:[I

    .line 359
    :cond_0
    iget-object v0, p0, Lo/kc;->Np:[I

    iget v1, p0, Lo/kc;->Nq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/kc;->Nq:I

    aput p1, v0, v1

    .line 360
    return-void
.end method

.method private ᵙ(Ljava/lang/String;)V
    .locals 8

    .line 533
    iget-boolean v0, p0, Lo/kc;->Kb:Z

    if-eqz v0, :cond_0

    sget-object v2, Lo/kc;->NF:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lo/kc;->NE:[Ljava/lang/String;

    .line 534
    :goto_0
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 535
    const/4 v3, 0x0

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 537
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    .line 538
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 540
    const/16 v0, 0x80

    if-ge v6, v0, :cond_1

    .line 541
    aget-object v7, v2, v6

    .line 542
    if-nez v7, :cond_3

    .line 543
    goto :goto_3

    .line 545
    :cond_1
    const/16 v0, 0x2028

    if-ne v6, v0, :cond_2

    .line 546
    const-string v7, "\\u2028"

    goto :goto_2

    .line 547
    :cond_2
    const/16 v0, 0x2029

    if-ne v6, v0, :cond_5

    .line 548
    const-string v7, "\\u2029"

    .line 552
    :cond_3
    :goto_2
    if-ge v3, v5, :cond_4

    .line 553
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    sub-int v1, v5, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 555
    :cond_4
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    invoke-virtual {v0, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 556
    add-int/lit8 v3, v5, 0x1

    .line 537
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 558
    :cond_6
    if-ge v3, v4, :cond_7

    .line 559
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    sub-int v1, v4, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 561
    :cond_7
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method private ᵟ(I)V
    .locals 3

    .line 376
    iget-object v0, p0, Lo/kc;->Np:[I

    iget v1, p0, Lo/kc;->Nq:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 377
    return-void
.end method


# virtual methods
.method public P()Lo/kc;
    .locals 2

    .line 287
    invoke-direct {p0}, Lo/kc;->ai()V

    .line 288
    const-string v0, "["

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lo/kc;->ˋ(ILjava/lang/String;)Lo/kc;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lo/kc;
    .locals 3

    .line 297
    const-string v0, "]"

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lo/kc;->ˎ(IILjava/lang/String;)Lo/kc;

    move-result-object v0

    return-object v0
.end method

.method public R()Lo/kc;
    .locals 2

    .line 307
    invoke-direct {p0}, Lo/kc;->ai()V

    .line 308
    const-string v0, "{"

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lo/kc;->ˋ(ILjava/lang/String;)Lo/kc;

    move-result-object v0

    return-object v0
.end method

.method public S()Lo/kc;
    .locals 3

    .line 317
    const-string v0, "}"

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lo/kc;->ˎ(IILjava/lang/String;)Lo/kc;

    move-result-object v0

    return-object v0
.end method

.method public T()Lo/kc;
    .locals 2

    .line 429
    iget-object v0, p0, Lo/kc;->NH:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 430
    iget-boolean v0, p0, Lo/kc;->Ka:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0}, Lo/kc;->ai()V

    goto :goto_0

    .line 433
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/kc;->NH:Ljava/lang/String;

    .line 434
    return-object p0

    .line 437
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/kc;->৲(Z)V

    .line 438
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    return-object p0
.end method

.method public final af()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lo/kc;->Kb:Z

    return v0
.end method

.method public final ag()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lo/kc;->Ka:Z

    return v0
.end method

.method public close()V
    .locals 3

    .line 523
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 525
    iget v2, p0, Lo/kc;->Nq:I

    .line 526
    const/4 v0, 0x1

    if-gt v2, v0, :cond_0

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lo/kc;->Np:[I

    add-int/lit8 v1, v2, -0x1

    aget v0, v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 527
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lo/kc;->Nq:I

    .line 530
    return-void
.end method

.method public flush()V
    .locals 2

    .line 511
    iget v0, p0, Lo/kc;->Nq:I

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 515
    return-void
.end method

.method public isLenient()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lo/kc;->Nh:Z

    return v0
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lo/kc;->NG:Ljava/lang/String;

    .line 215
    const-string v0, ":"

    iput-object v0, p0, Lo/kc;->separator:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_0
    iput-object p1, p0, Lo/kc;->NG:Ljava/lang/String;

    .line 218
    const-string v0, ": "

    iput-object v0, p0, Lo/kc;->separator:Ljava/lang/String;

    .line 220
    :goto_0
    return-void
.end method

.method public final setLenient(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lo/kc;->Nh:Z

    .line 236
    return-void
.end method

.method public ˁ(Z)Lo/kc;
    .locals 2

    .line 448
    invoke-direct {p0}, Lo/kc;->ai()V

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/kc;->৲(Z)V

    .line 450
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 451
    return-object p0
.end method

.method public ˊ(Ljava/lang/Number;)Lo/kc;
    .locals 4

    .line 491
    if-nez p1, :cond_0

    .line 492
    invoke-virtual {p0}, Lo/kc;->T()Lo/kc;

    move-result-object v0

    return-object v0

    .line 495
    :cond_0
    invoke-direct {p0}, Lo/kc;->ai()V

    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    iget-boolean v0, p0, Lo/kc;->Nh:Z

    if-nez v0, :cond_2

    const-string v0, "-Infinity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Infinity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NaN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/kc;->৲(Z)V

    .line 502
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 503
    return-object p0
.end method

.method public final ˤ(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lo/kc;->Kb:Z

    .line 254
    return-void
.end method

.method public final ι(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lo/kc;->Ka:Z

    .line 270
    return-void
.end method

.method public ᐩ(J)Lo/kc;
    .locals 2

    .line 477
    invoke-direct {p0}, Lo/kc;->ai()V

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/kc;->৲(Z)V

    .line 479
    iget-object v0, p0, Lo/kc;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 480
    return-object p0
.end method

.method public ᒢ(Ljava/lang/String;)Lo/kc;
    .locals 2

    .line 386
    if-nez p1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lo/kc;->NH:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 392
    :cond_1
    iget v0, p0, Lo/kc;->Nq:I

    if-nez v0, :cond_2

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2
    iput-object p1, p0, Lo/kc;->NH:Ljava/lang/String;

    .line 396
    return-object p0
.end method

.method public ᖮ(Ljava/lang/String;)Lo/kc;
    .locals 1

    .line 414
    if-nez p1, :cond_0

    .line 415
    invoke-virtual {p0}, Lo/kc;->T()Lo/kc;

    move-result-object v0

    return-object v0

    .line 417
    :cond_0
    invoke-direct {p0}, Lo/kc;->ai()V

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/kc;->৲(Z)V

    .line 419
    invoke-direct {p0, p1}, Lo/kc;->ᵙ(Ljava/lang/String;)V

    .line 420
    return-object p0
.end method
