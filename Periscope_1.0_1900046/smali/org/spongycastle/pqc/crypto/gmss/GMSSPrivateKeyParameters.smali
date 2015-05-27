.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;
.source ""


# instance fields
.field private aGN:[I

.field private beA:I

.field private beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

.field private beC:[I

.field private beD:[I

.field private beQ:[I

.field private beR:[[[B

.field private beS:[[[B

.field private beT:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

.field private beU:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

.field private beV:[Ljava/util/Vector;

.field private beW:[Ljava/util/Vector;

.field private beX:[[Ljava/util/Vector;

.field private beY:[[Ljava/util/Vector;

.field private beZ:[[[B

.field private beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private bev:[[B

.field private bew:[[B

.field private bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private bez:I

.field private bfa:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private bfb:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private bfc:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private bfd:[I

.field private bfe:[[B

.field private bff:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

.field private bfg:[[B

.field private bfh:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

.field private bfi:Z

.field private bfj:Lorg/spongycastle/crypto/Digest;

.field private bfk:[I


# direct methods
.method public constructor <init>([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 9

    .line 168
    const/4 v0, 0x1

    move-object/from16 v1, p21

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfi:Z

    .line 172
    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfj:Lorg/spongycastle/crypto/Digest;

    .line 173
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfj:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bez:I

    .line 177
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 178
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qP()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beD:[I

    .line 179
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qQ()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->aGN:[I

    .line 180
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qO()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beC:[I

    .line 182
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    .line 185
    if-nez p1, :cond_1

    .line 187
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beQ:[I

    .line 188
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    if-ge v6, v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beQ:[I

    const/4 v1, 0x0

    aput v1, v0, v6

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 195
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beQ:[I

    .line 198
    :goto_1
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bev:[[B

    .line 199
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bew:[[B

    .line 201
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beR:[[[B

    .line 202
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beS:[[[B

    .line 205
    if-nez p6, :cond_3

    .line 207
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    new-array v0, v0, [[[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beZ:[[[B

    .line 208
    const/4 v6, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    if-ge v6, v0, :cond_2

    .line 210
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beZ:[[[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beC:[I

    aget v1, v1, v6

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bez:I

    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v0, v6

    .line 208
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 215
    :cond_3
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beZ:[[[B

    .line 219
    :goto_3
    if-nez p9, :cond_5

    .line 221
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beV:[Ljava/util/Vector;

    .line 222
    const/4 v6, 0x0

    :goto_4
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    if-ge v6, v0, :cond_4

    .line 224
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beV:[Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v0, v6

    .line 222
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    goto :goto_5

    .line 229
    :cond_5
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beV:[Ljava/util/Vector;

    .line 233
    :goto_5
    if-nez p10, :cond_7

    .line 235
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beW:[Ljava/util/Vector;

    .line 236
    const/4 v6, 0x0

    :goto_6
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_6

    .line 238
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beW:[Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v0, v6

    .line 236
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    goto :goto_7

    .line 243
    :cond_7
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beW:[Ljava/util/Vector;

    .line 246
    :goto_7
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beT:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 247
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beU:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 249
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beX:[[Ljava/util/Vector;

    .line 250
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beY:[[Ljava/util/Vector;

    .line 252
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfe:[[B

    .line 254
    move-object/from16 v0, p22

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 256
    if-nez p18, :cond_9

    .line 258
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bff:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 259
    const/4 v6, 0x0

    :goto_8
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_8

    .line 261
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bff:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beC:[I

    add-int/lit8 v3, v6, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->aGN:[I

    add-int/lit8 v4, v6, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    aput-object v1, v0, v6

    .line 259
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_8
    goto :goto_9

    .line 267
    :cond_9
    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bff:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 269
    :goto_9
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfg:[[B

    .line 272
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfk:[I

    .line 273
    const/4 v6, 0x0

    :goto_a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    if-ge v6, v0, :cond_a

    .line 275
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfk:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beC:[I

    aget v1, v1, v6

    const/4 v2, 0x1

    shl-int v1, v2, v1

    aput v1, v0, v6

    .line 273
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 278
    :cond_a
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfj:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 280
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    .line 284
    if-nez p13, :cond_c

    .line 286
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfa:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 287
    const/4 v6, 0x0

    :goto_b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x2

    if-ge v6, v0, :cond_b

    .line 289
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfa:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beD:[I

    add-int/lit8 v4, v6, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfk:[I

    add-int/lit8 v5, v6, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bew:[[B

    aget-object v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II[B)V

    aput-object v1, v0, v6

    .line 287
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_b
    goto :goto_c

    .line 294
    :cond_c
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfa:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    goto :goto_c

    .line 299
    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfa:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 304
    :goto_c
    if-nez p14, :cond_f

    .line 306
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfb:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 307
    const/4 v6, 0x0

    :goto_d
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_e

    .line 309
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfb:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beD:[I

    aget v3, v3, v6

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfk:[I

    add-int/lit8 v5, v6, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bev:[[B

    aget-object v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II[B)V

    aput-object v1, v0, v6

    .line 307
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_e
    goto :goto_e

    .line 315
    :cond_f
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfb:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 320
    :goto_e
    if-nez p15, :cond_11

    .line 322
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfc:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 323
    const/4 v6, 0x0

    :goto_f
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_10

    .line 325
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfc:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beD:[I

    aget v3, v3, v6

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfk:[I

    add-int/lit8 v5, v6, 0x1

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II)V

    aput-object v1, v0, v6

    .line 323
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_10
    goto :goto_10

    .line 330
    :cond_11
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfc:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 333
    :goto_10
    if-nez p16, :cond_13

    .line 335
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfd:[I

    .line 336
    const/4 v6, 0x0

    :goto_11
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_12

    .line 338
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfd:[I

    const/4 v1, -0x1

    aput v1, v0, v6

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_12
    goto :goto_12

    .line 343
    :cond_13
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfd:[I

    .line 347
    :goto_12
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bez:I

    new-array v6, v0, [B

    .line 348
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bez:I

    new-array v7, v0, [B

    .line 349
    if-nez p20, :cond_15

    .line 351
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfh:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 352
    const/4 v8, 0x0

    :goto_13
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_14

    .line 354
    aget-object v0, p2, v8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bez:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    .line 356
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    move-result-object v7

    .line 357
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfh:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beD:[I

    aget v3, v3, v8

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beC:[I

    add-int/lit8 v5, v8, 0x1

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;-><init>(Lorg/spongycastle/crypto/Digest;II)V

    aput-object v1, v0, v8

    .line 359
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfh:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v0, v0, v8

    aget-object v1, p17, v8

    invoke-virtual {v0, v7, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ᵎ([B[B)V

    .line 352
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_14
    goto :goto_14

    .line 364
    :cond_15
    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfh:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 366
    :goto_14
    return-void
.end method

.method public constructor <init>([[B[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 23

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v19, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 129
    return-void
.end method


# virtual methods
.method public getIndex(I)I
    .locals 1

    .line 1007
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beQ:[I

    aget v0, v0, p1

    return v0
.end method

.method public qR()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfi:Z

    return v0
.end method

.method public qS()V
    .locals 1

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfi:Z

    .line 413
    return-void
.end method

.method public qT()[I
    .locals 1

    .line 999
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beQ:[I

    return-object v0
.end method

.method public qU()[[B
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bev:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->ˊ([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public qV()[[[B
    .locals 1

    .line 1017
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->beR:[[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->ˋ([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public ɽ(I)[B
    .locals 1

    .line 1025
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfg:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ʃ(I)I
    .locals 1

    .line 1039
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->bfk:[I

    aget v0, v0, p1

    return v0
.end method
