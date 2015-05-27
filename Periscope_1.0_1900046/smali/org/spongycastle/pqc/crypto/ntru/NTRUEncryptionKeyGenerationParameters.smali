.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final bgA:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final bgB:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final bgv:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final bgw:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final bgx:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final bgy:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final bgz:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


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
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/4 v1, 0x3

    new-array v10, v1, [B

    fill-array-data v10, :array_0

    new-instance v13, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v1, 0x43f

    const/16 v2, 0x800

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, 0x100

    const/16 v6, 0xd

    const/16 v7, 0x19

    const/16 v8, 0xe

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgv:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    .line 31
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/4 v1, 0x3

    new-array v10, v1, [B

    fill-array-data v10, :array_1

    new-instance v13, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v1, 0x493

    const/16 v2, 0x800

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, 0x100

    const/16 v6, 0xd

    const/16 v7, 0x14

    const/16 v8, 0xf

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgw:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    .line 36
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/4 v1, 0x3

    new-array v10, v1, [B

    fill-array-data v10, :array_2

    new-instance v13, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v1, 0x5db

    const/16 v2, 0x800

    const/16 v3, 0x4f

    const/16 v4, 0x4f

    const/16 v5, 0x100

    const/16 v6, 0xd

    const/16 v7, 0x11

    const/16 v8, 0x13

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgx:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    .line 41
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/4 v1, 0x3

    new-array v10, v1, [B

    fill-array-data v10, :array_3

    new-instance v13, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v13}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x92

    const/16 v4, 0x82

    const/16 v5, 0x80

    const/16 v6, 0x9

    const/16 v7, 0x20

    const/16 v8, 0x9

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgy:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    .line 46
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/4 v1, 0x3

    new-array v12, v1, [B

    fill-array-data v12, :array_4

    new-instance v15, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v15}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/16 v6, 0x82

    const/16 v7, 0x80

    const/16 v8, 0x9

    const/16 v9, 0x20

    const/16 v10, 0x9

    const/4 v11, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgz:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    .line 51
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/4 v1, 0x3

    new-array v10, v1, [B

    fill-array-data v10, :array_5

    new-instance v13, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v1, 0x2e7

    const/16 v2, 0x800

    const/16 v3, 0xf8

    const/16 v4, 0xdc

    const/16 v5, 0x100

    const/16 v6, 0xa

    const/16 v7, 0x1b

    const/16 v8, 0xe

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgA:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    .line 56
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/4 v1, 0x3

    new-array v12, v1, [B

    fill-array-data v12, :array_6

    new-instance v15, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v15}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v1, 0x2e7

    const/16 v2, 0x800

    const/16 v3, 0xb

    const/16 v4, 0xb

    const/16 v5, 0xf

    const/16 v6, 0xdc

    const/16 v7, 0x100

    const/16 v8, 0xa

    const/16 v9, 0x1b

    const/16 v10, 0xe

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    sput-object v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgB:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x6t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x6t
        0x4t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x6t
        0x5t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x7t
        0x65t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x7t
        0x65t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x7t
        0x69t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x7t
        0x69t
    .end array-data
.end method

.method public constructor <init>(IIIIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 139
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0, p7}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 141
    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    .line 142
    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    .line 143
    iput p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    .line 144
    iput p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    .line 145
    iput p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    .line 146
    iput p7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    .line 147
    iput p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    .line 148
    iput p8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    .line 149
    iput p9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    .line 150
    iput p10, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    .line 151
    iput-boolean p11, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    .line 152
    iput-object p12, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    .line 153
    iput-boolean p13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    .line 154
    iput-boolean p14, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    .line 156
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 157
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->init()V

    .line 158
    return-void
.end method

.method public constructor <init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 100
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0, p5}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 101
    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    .line 102
    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    .line 103
    iput p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    .line 104
    iput p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    .line 105
    iput p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    .line 106
    iput p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    .line 107
    iput p7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    .line 108
    iput p8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    .line 109
    iput-boolean p9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    .line 110
    iput-object p10, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    .line 111
    iput-boolean p11, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    .line 112
    iput-boolean p12, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    .line 114
    iput-object p13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 115
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->init()V

    .line 116
    return-void
.end method

.method private init()V
    .locals 3

    .line 162
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgH:I

    .line 163
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgI:I

    .line 164
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgJ:I

    .line 165
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgK:I

    .line 166
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgL:I

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgM:I

    .line 168
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgM:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgN:I

    .line 169
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgP:I

    .line 170
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgQ:I

    .line 171
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgS:I

    .line 172
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->ry()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 317
    if-ne p0, p1, :cond_0

    .line 319
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_0
    if-nez p1, :cond_1

    .line 323
    const/4 v0, 0x0

    return v0

    .line 325
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 327
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    move-object v2, v0

    .line 330
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    if-eq v0, v1, :cond_3

    .line 332
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgP:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgP:I

    if-eq v0, v1, :cond_4

    .line 336
    const/4 v0, 0x0

    return v0

    .line 338
    :cond_4
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgQ:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgQ:I

    if-eq v0, v1, :cond_5

    .line 340
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_5
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    if-eq v0, v1, :cond_6

    .line 344
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_6
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    if-eq v0, v1, :cond_7

    .line 348
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_7
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    if-eq v0, v1, :cond_8

    .line 352
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_8
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    if-eq v0, v1, :cond_9

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_9
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    if-eq v0, v1, :cond_a

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    if-eq v0, v1, :cond_b

    .line 364
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgL:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgL:I

    if-eq v0, v1, :cond_c

    .line 368
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_c
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    if-eq v0, v1, :cond_d

    .line 372
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_d
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgH:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgH:I

    if-eq v0, v1, :cond_e

    .line 376
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_e
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgI:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgI:I

    if-eq v0, v1, :cond_f

    .line 380
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_f
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgJ:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgJ:I

    if-eq v0, v1, :cond_10

    .line 384
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_10
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgK:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgK:I

    if-eq v0, v1, :cond_11

    .line 388
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_11
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    iget-boolean v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    if-eq v0, v1, :cond_12

    .line 392
    const/4 v0, 0x0

    return v0

    .line 394
    :cond_12
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_13

    .line 396
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-eqz v0, :cond_14

    .line 398
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_13
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 403
    const/4 v0, 0x0

    return v0

    .line 405
    :cond_14
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    iget-boolean v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    if-eq v0, v1, :cond_15

    .line 407
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_15
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgM:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgM:I

    if-eq v0, v1, :cond_16

    .line 411
    const/4 v0, 0x0

    return v0

    .line 413
    :cond_16
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgN:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgN:I

    if-eq v0, v1, :cond_17

    .line 415
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_17
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    if-eq v0, v1, :cond_18

    .line 419
    const/4 v0, 0x0

    return v0

    .line 421
    :cond_18
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    if-eq v0, v1, :cond_19

    .line 423
    const/4 v0, 0x0

    return v0

    .line 425
    :cond_19
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 427
    const/4 v0, 0x0

    return v0

    .line 429
    :cond_1a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgS:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgS:I

    if-eq v0, v1, :cond_1b

    .line 431
    const/4 v0, 0x0

    return v0

    .line 433
    :cond_1b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    if-eq v0, v1, :cond_1c

    .line 435
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_1c
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    iget v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    if-eq v0, v1, :cond_1d

    .line 439
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_1d
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    iget-boolean v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    if-eq v0, v1, :cond_1e

    .line 443
    const/4 v0, 0x0

    return v0

    .line 445
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 283
    const/16 v2, 0x1f

    .line 284
    const/4 v3, 0x1

    .line 285
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    add-int/lit8 v3, v0, 0x1f

    .line 286
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgP:I

    add-int v3, v0, v1

    .line 287
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgQ:I

    add-int v3, v0, v1

    .line 288
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    add-int v3, v0, v1

    .line 289
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    add-int v3, v0, v1

    .line 290
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    add-int v3, v0, v1

    .line 291
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    add-int v3, v0, v1

    .line 292
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    add-int v3, v0, v1

    .line 293
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    add-int v3, v0, v1

    .line 294
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgL:I

    add-int v3, v0, v1

    .line 295
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    add-int v3, v0, v1

    .line 296
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgH:I

    add-int v3, v0, v1

    .line 297
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgI:I

    add-int v3, v0, v1

    .line 298
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgJ:I

    add-int v3, v0, v1

    .line 299
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgK:I

    add-int v3, v0, v1

    .line 300
    mul-int/lit8 v0, v3, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int v3, v0, v1

    .line 301
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v3, v0, v1

    .line 302
    mul-int/lit8 v0, v3, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int v3, v0, v1

    .line 303
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgM:I

    add-int v3, v0, v1

    .line 304
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgN:I

    add-int v3, v0, v1

    .line 305
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    add-int v3, v0, v1

    .line 306
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    add-int v3, v0, v1

    .line 307
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int v3, v0, v1

    .line 308
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgS:I

    add-int v3, v0, v1

    .line 309
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    add-int v3, v0, v1

    .line 310
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    add-int v3, v0, v1

    .line 311
    mul-int/lit8 v0, v3, 0x1f

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v1, 0x4d5

    :goto_3
    add-int v3, v0, v1

    .line 312
    return v3
.end method

.method public rx()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;
    .locals 16

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    move-object/from16 v4, p0

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    move-object/from16 v5, p0

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    move-object/from16 v7, p0

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    move-object/from16 v8, p0

    iget v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    move-object/from16 v9, p0

    iget-boolean v9, v9, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    move-object/from16 v10, p0

    iget-object v10, v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    move-object/from16 v11, p0

    iget-boolean v11, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    move-object/from16 v12, p0

    iget-boolean v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    move-object/from16 v13, p0

    iget-object v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    move-object/from16 v4, p0

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    move-object/from16 v5, p0

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    move-object/from16 v7, p0

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    move-object/from16 v8, p0

    iget v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    move-object/from16 v9, p0

    iget v9, v9, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    move-object/from16 v10, p0

    iget v10, v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    move-object/from16 v11, p0

    iget-boolean v11, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    move-object/from16 v12, p0

    iget-object v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    move-object/from16 v13, p0

    iget-boolean v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    move-object/from16 v14, p0

    iget-boolean v14, v14, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    move-object/from16 v15, p0

    iget-object v15, v15, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method public ry()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;
    .locals 16

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    move-object/from16 v4, p0

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    move-object/from16 v5, p0

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    move-object/from16 v7, p0

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    move-object/from16 v8, p0

    iget v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    move-object/from16 v9, p0

    iget-boolean v9, v9, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    move-object/from16 v10, p0

    iget-object v10, v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    move-object/from16 v11, p0

    iget-boolean v11, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    move-object/from16 v12, p0

    iget-boolean v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    move-object/from16 v13, p0

    iget-object v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    move-object/from16 v4, p0

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    move-object/from16 v5, p0

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    move-object/from16 v7, p0

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    move-object/from16 v8, p0

    iget v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    move-object/from16 v9, p0

    iget v9, v9, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    move-object/from16 v10, p0

    iget v10, v10, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    move-object/from16 v11, p0

    iget-boolean v11, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    move-object/from16 v12, p0

    iget-object v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    move-object/from16 v13, p0

    iget-boolean v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    move-object/from16 v14, p0

    iget-boolean v14, v14, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    move-object/from16 v15, p0

    iget-object v15, v15, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIIIZ[BZZLorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncryptionParameters(N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " polyType=SIMPLE df="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " polyType=PRODUCT df1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " df2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " df3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dm0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aKM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minCallsR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minCallsMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hashSeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hashAlg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgV:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sparse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
