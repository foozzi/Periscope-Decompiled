.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public aKM:I

.field public aMJ:I

.field public bgC:I

.field public bgD:I

.field public bgE:I

.field public bgF:I

.field public bgG:I

.field public bgH:I

.field public bgI:I

.field public bgJ:I

.field public bgK:I

.field public bgL:I

.field bgM:I

.field public bgN:I

.field public bgO:I

.field public bgP:I

.field bgQ:I

.field public bgR:I

.field public bgS:I

.field public bgT:I

.field public bgU:Z

.field public bgV:[B

.field public bgW:Z

.field public bgX:Z

.field public bgY:I

.field public bgo:I

.field public bgs:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(IIIIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    .line 102
    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    .line 103
    iput p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgE:I

    .line 104
    iput p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgF:I

    .line 105
    iput p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgG:I

    .line 106
    iput p7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    .line 107
    iput p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    .line 108
    iput p8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    .line 109
    iput p9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    .line 110
    iput p10, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    .line 111
    iput-boolean p11, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    .line 112
    iput-object p12, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    .line 113
    iput-boolean p13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    .line 114
    iput-boolean p14, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    .line 116
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 117
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->init()V

    .line 118
    return-void
.end method

.method public constructor <init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    .line 64
    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    .line 65
    iput p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgD:I

    .line 66
    iput p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    .line 67
    iput p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    .line 68
    iput p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    .line 69
    iput p7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    .line 70
    iput p8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    .line 71
    iput-boolean p9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    .line 72
    iput-object p10, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    .line 73
    iput-boolean p11, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    .line 74
    iput-boolean p12, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    .line 76
    iput-object p13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 77
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->init()V

    .line 78
    return-void
.end method

.method private init()V
    .locals 3

    .line 122
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgD:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgH:I

    .line 123
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgE:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgI:I

    .line 124
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgF:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgJ:I

    .line 125
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgG:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgK:I

    .line 126
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgL:I

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgM:I

    .line 128
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgM:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgN:I

    .line 129
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgP:I

    .line 130
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgQ:I

    .line 131
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgS:I

    .line 132
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->rA()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 264
    if-ne p0, p1, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_0
    if-nez p1, :cond_1

    .line 270
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 274
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-object v2, v0

    .line 277
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    if-eq v0, v1, :cond_3

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgP:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgP:I

    if-eq v0, v1, :cond_4

    .line 283
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_4
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgQ:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgQ:I

    if-eq v0, v1, :cond_5

    .line 287
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_5
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    if-eq v0, v1, :cond_6

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_6
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    if-eq v0, v1, :cond_7

    .line 295
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_7
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgD:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgD:I

    if-eq v0, v1, :cond_8

    .line 299
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_8
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgE:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgE:I

    if-eq v0, v1, :cond_9

    .line 303
    const/4 v0, 0x0

    return v0

    .line 305
    :cond_9
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgF:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgF:I

    if-eq v0, v1, :cond_a

    .line 307
    const/4 v0, 0x0

    return v0

    .line 309
    :cond_a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgG:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgG:I

    if-eq v0, v1, :cond_b

    .line 311
    const/4 v0, 0x0

    return v0

    .line 313
    :cond_b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgL:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgL:I

    if-eq v0, v1, :cond_c

    .line 315
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_c
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    if-eq v0, v1, :cond_d

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_d
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgH:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgH:I

    if-eq v0, v1, :cond_e

    .line 323
    const/4 v0, 0x0

    return v0

    .line 325
    :cond_e
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgI:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgI:I

    if-eq v0, v1, :cond_f

    .line 327
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_f
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgJ:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgJ:I

    if-eq v0, v1, :cond_10

    .line 331
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_10
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgK:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgK:I

    if-eq v0, v1, :cond_11

    .line 335
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_11
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    iget-boolean v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    if-eq v0, v1, :cond_12

    .line 339
    const/4 v0, 0x0

    return v0

    .line 341
    :cond_12
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_13

    .line 343
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-eqz v0, :cond_14

    .line 345
    const/4 v0, 0x0

    return v0

    .line 348
    :cond_13
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 350
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_14
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    iget-boolean v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    if-eq v0, v1, :cond_15

    .line 354
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_15
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgM:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgM:I

    if-eq v0, v1, :cond_16

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_16
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgN:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgN:I

    if-eq v0, v1, :cond_17

    .line 362
    const/4 v0, 0x0

    return v0

    .line 364
    :cond_17
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    if-eq v0, v1, :cond_18

    .line 366
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_18
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    if-eq v0, v1, :cond_19

    .line 370
    const/4 v0, 0x0

    return v0

    .line 372
    :cond_19
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 374
    const/4 v0, 0x0

    return v0

    .line 376
    :cond_1a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgS:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgS:I

    if-eq v0, v1, :cond_1b

    .line 378
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_1b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    if-eq v0, v1, :cond_1c

    .line 382
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_1c
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    if-eq v0, v1, :cond_1d

    .line 386
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_1d
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    iget-boolean v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    if-eq v0, v1, :cond_1e

    .line 390
    const/4 v0, 0x0

    return v0

    .line 392
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 230
    const/16 v2, 0x1f

    .line 231
    const/4 v3, 0x1

    .line 232
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    add-int/lit8 v3, v0, 0x1f

    .line 233
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgP:I

    add-int v3, v0, v1

    .line 234
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgQ:I

    add-int v3, v0, v1

    .line 235
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    add-int v3, v0, v1

    .line 236
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    add-int v3, v0, v1

    .line 237
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgD:I

    add-int v3, v0, v1

    .line 238
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgE:I

    add-int v3, v0, v1

    .line 239
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgF:I

    add-int v3, v0, v1

    .line 240
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgG:I

    add-int v3, v0, v1

    .line 241
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgL:I

    add-int v3, v0, v1

    .line 242
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    add-int v3, v0, v1

    .line 243
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgH:I

    add-int v3, v0, v1

    .line 244
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgI:I

    add-int v3, v0, v1

    .line 245
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgJ:I

    add-int v3, v0, v1

    .line 246
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgK:I

    add-int v3, v0, v1

    .line 247
    mul-int/lit8 v0, v3, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int v3, v0, v1

    .line 248
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v3, v0, v1

    .line 249
    mul-int/lit8 v0, v3, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int v3, v0, v1

    .line 250
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgM:I

    add-int v3, v0, v1

    .line 251
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgN:I

    add-int v3, v0, v1

    .line 252
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    add-int v3, v0, v1

    .line 253
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    add-int v3, v0, v1

    .line 254
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int v3, v0, v1

    .line 255
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgS:I

    add-int v3, v0, v1

    .line 256
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    add-int v3, v0, v1

    .line 257
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    add-int v3, v0, v1

    .line 258
    mul-int/lit8 v0, v3, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v1, 0x4d5

    :goto_3
    add-int v3, v0, v1

    .line 259
    return v3
.end method

.method public rA()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;
    .locals 16

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgD:I

    move-object/from16 v4, p0

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    move-object/from16 v5, p0

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    move-object/from16 v7, p0

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    move-object/from16 v8, p0

    iget v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    move-object/from16 v9, p0

    iget-boolean v9, v9, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    move-object/from16 v10, p0

    iget-object v10, v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    move-object/from16 v11, p0

    iget-boolean v11, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    move-object/from16 v12, p0

    iget-boolean v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    move-object/from16 v13, p0

    iget-object v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgE:I

    move-object/from16 v4, p0

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgF:I

    move-object/from16 v5, p0

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgG:I

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    move-object/from16 v7, p0

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    move-object/from16 v8, p0

    iget v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    move-object/from16 v9, p0

    iget v9, v9, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    move-object/from16 v10, p0

    iget v10, v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    move-object/from16 v11, p0

    iget-boolean v11, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    move-object/from16 v12, p0

    iget-object v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    move-object/from16 v13, p0

    iget-boolean v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    move-object/from16 v14, p0

    iget-boolean v14, v14, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    move-object/from16 v15, p0

    iget-object v15, v15, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncryptionParameters(N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " polyType=SIMPLE df="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " polyType=PRODUCT df1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " df2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " df3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dm0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minCallsR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minCallsMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hashSeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hashAlg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sparse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
