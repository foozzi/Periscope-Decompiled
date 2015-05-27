.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final bhg:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final bhh:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final bhi:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final bhj:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final bhk:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final bhl:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;


# instance fields
.field public aMJ:I

.field public aOn:I

.field public bgC:I

.field public bgW:Z

.field public bgY:I

.field public bgs:Lorg/spongycastle/crypto/Digest;

.field public bhA:I

.field public bhm:I

.field public bhn:I

.field public bho:I

.field public bhp:I

.field bhq:D

.field public bhr:D

.field bhs:D

.field public bht:D

.field public bhu:I

.field bhv:D

.field public bhw:D

.field public bhx:Z

.field public bhy:I

.field bhz:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 32
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v15, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v15}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x92

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide v6, 0x3fc51eb851eb851fL    # 0.165

    const-wide v8, 0x407ea00000000000L    # 490.0

    const-wide v10, 0x4071800000000000L    # 280.0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhg:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 37
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v17, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide v8, 0x3fc51eb851eb851fL    # 0.165

    const-wide v10, 0x407ea00000000000L    # 490.0

    const-wide v12, 0x4071800000000000L    # 280.0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhh:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 42
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v15, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v15}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v1, 0x2e7

    const/16 v2, 0x800

    const/16 v3, 0xf8

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide v6, 0x3fc04189374bc6a8L    # 0.127

    const-wide v8, 0x4081800000000000L    # 560.0

    const-wide v10, 0x4076800000000000L    # 360.0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhi:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 47
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v17, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v1, 0x2e7

    const/16 v2, 0x800

    const/16 v3, 0xb

    const/16 v4, 0xb

    const/16 v5, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide v8, 0x3fc04189374bc6a8L    # 0.127

    const-wide v10, 0x4081800000000000L    # 560.0

    const-wide v12, 0x4076800000000000L    # 360.0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhj:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 52
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v15, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v15}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v1, 0x9d

    const/16 v2, 0x100

    const/16 v3, 0x1d

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide v6, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhk:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 56
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v17, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v1, 0x9d

    const/16 v2, 0x100

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide v8, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhl:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    return-void
.end method

.method public constructor <init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 95
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 66
    const/16 v0, 0x64

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhu:I

    .line 71
    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhz:I

    .line 96
    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    .line 97
    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    .line 98
    iput p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    .line 99
    iput p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    .line 100
    iput p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    .line 101
    iput-wide p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    .line 102
    iput-wide p8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    .line 103
    iput-wide p10, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    .line 104
    iput-boolean p12, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    .line 105
    iput-boolean p13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    .line 106
    iput p14, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    .line 107
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    .line 109
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    .line 110
    return-void
.end method

.method public constructor <init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 132
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 66
    const/16 v0, 0x64

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhu:I

    .line 71
    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhz:I

    .line 133
    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    .line 134
    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    .line 135
    iput p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhm:I

    .line 136
    iput p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhn:I

    .line 137
    iput p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bho:I

    .line 138
    iput p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    .line 139
    iput p7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    .line 140
    iput-wide p8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    .line 141
    iput-wide p10, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    .line 142
    iput-wide p12, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    .line 143
    iput-boolean p14, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    .line 144
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    .line 145
    move/from16 v0, p16

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    .line 146
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    .line 148
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    .line 149
    return-void
.end method

.method private init()V
    .locals 4

    .line 153
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhr:D

    .line 154
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bht:D

    .line 155
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhw:D

    .line 156
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->rC()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 282
    if-ne p0, p1, :cond_0

    .line 284
    const/4 v0, 0x1

    return v0

    .line 286
    :cond_0
    if-nez p1, :cond_1

    .line 288
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-nez v0, :cond_2

    .line 292
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object v4, v0

    .line 295
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    if-eq v0, v1, :cond_3

    .line 297
    const/4 v0, 0x0

    return v0

    .line 299
    :cond_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    if-eq v0, v1, :cond_4

    .line 301
    const/4 v0, 0x0

    return v0

    .line 303
    :cond_4
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    if-eq v0, v1, :cond_5

    .line 305
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_5
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 309
    const/4 v0, 0x0

    return v0

    .line 311
    :cond_6
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 313
    const/4 v0, 0x0

    return v0

    .line 315
    :cond_7
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhz:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhz:I

    if-eq v0, v1, :cond_8

    .line 317
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_8
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    if-eq v0, v1, :cond_9

    .line 321
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_9
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhm:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhm:I

    if-eq v0, v1, :cond_a

    .line 325
    const/4 v0, 0x0

    return v0

    .line 327
    :cond_a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhn:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhn:I

    if-eq v0, v1, :cond_b

    .line 329
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bho:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bho:I

    if-eq v0, v1, :cond_c

    .line 333
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_c
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_d

    .line 337
    iget-object v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-eqz v0, :cond_e

    .line 339
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_d
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 344
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_e
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    if-eq v0, v1, :cond_f

    .line 348
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_f
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 352
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_10
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhw:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhw:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_11
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_12
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bht:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bht:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 364
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_13
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    if-eq v0, v1, :cond_14

    .line 368
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_14
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    iget-boolean v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    if-eq v0, v1, :cond_15

    .line 372
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_15
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    if-eq v0, v1, :cond_16

    .line 376
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_16
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhu:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhu:I

    if-eq v0, v1, :cond_17

    .line 380
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_17
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    iget-boolean v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    if-eq v0, v1, :cond_18

    .line 384
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 247
    const/16 v3, 0x1f

    .line 248
    const/4 v4, 0x1

    .line 249
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    add-int/lit8 v4, v0, 0x1f

    .line 250
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    add-int v4, v0, v1

    .line 251
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    add-int v4, v0, v1

    .line 253
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 254
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 255
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 256
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 257
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhz:I

    add-int v4, v0, v1

    .line 258
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    add-int v4, v0, v1

    .line 259
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhm:I

    add-int v4, v0, v1

    .line 260
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhn:I

    add-int v4, v0, v1

    .line 261
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bho:I

    add-int v4, v0, v1

    .line 262
    mul-int/lit8 v0, v4, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v4, v0, v1

    .line 263
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    add-int v4, v0, v1

    .line 264
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 265
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 266
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhw:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 267
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 268
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 269
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 270
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bht:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 271
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 272
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    add-int v4, v0, v1

    .line 273
    mul-int/lit8 v0, v4, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int v4, v0, v1

    .line 274
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    add-int v4, v0, v1

    .line 275
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhu:I

    add-int v4, v0, v1

    .line 276
    mul-int/lit8 v0, v4, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int v4, v0, v1

    .line 277
    return v4
.end method

.method public rB()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;
    .locals 10

    .line 230
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    iget-wide v5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    iget-wide v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v9}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;-><init>(IIIIDDLorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method public rC()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
    .locals 19

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    move-object/from16 v4, p0

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    move-object/from16 v5, p0

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    move-object/from16 v6, p0

    iget-wide v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    move-object/from16 v8, p0

    iget-wide v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    move-object/from16 v10, p0

    iget-wide v10, v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    move-object/from16 v12, p0

    iget-boolean v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    move-object/from16 v13, p0

    iget-boolean v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    move-object/from16 v14, p0

    iget v14, v14, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    move-object/from16 v15, p0

    iget-object v15, v15, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    return-object v0

    .line 241
    :cond_0
    new-instance v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhm:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhn:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bho:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    invoke-direct/range {v1 .. v18}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/spongycastle/crypto/Digest;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 391
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {v3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignatureParameters(N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " polyType=SIMPLE d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " polyType=PRODUCT d1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bho:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " B="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " basisType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " beta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhq:D

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " normBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhs:D

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keyNormBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhv:D

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sparse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgW:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keyGenAlg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hashAlg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
