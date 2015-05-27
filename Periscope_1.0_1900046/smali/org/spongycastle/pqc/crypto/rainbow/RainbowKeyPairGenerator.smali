.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private aKZ:Ljava/security/SecureRandom;

.field private beO:I

.field private bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field private bhS:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

.field private bhT:[[S

.field private bhU:[[S

.field private bhV:[S

.field private bhW:[[S

.field private bhX:[[S

.field private bhY:[S

.field private bhZ:[I

.field private bia:[[S

.field private bib:[[S

.field private bic:[S

.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    .line 55
    return-void
.end method

.method private qK()V
    .locals 3

    .line 104
    new-instance v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;-><init>()V

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 105
    invoke-virtual {p0, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 106
    return-void
.end method

.method private rQ()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rR()V

    .line 115
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rS()V

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rT()V

    .line 117
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rU()V

    .line 118
    return-void
.end method

.method private rR()V
    .locals 7

    .line 132
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v3, v0, v1

    .line 133
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhT:[[S

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhU:[[S

    .line 135
    new-instance v4, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 138
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhU:[[S

    if-nez v0, :cond_2

    .line 140
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 142
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_0

    .line 144
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhT:[[S

    aget-object v0, v0, v5

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->aKZ:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v6

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 140
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhT:[[S

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([[S)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhU:[[S

    goto :goto_0

    .line 151
    :cond_2
    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhV:[S

    .line 152
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_3

    .line 154
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhV:[S

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->aKZ:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v5

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 156
    :cond_3
    return-void
.end method

.method private rS()V
    .locals 7

    .line 170
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    .line 171
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhX:[[S

    .line 173
    new-instance v4, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 176
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhX:[[S

    if-nez v0, :cond_2

    .line 178
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 180
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_0

    .line 182
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    aget-object v0, v0, v5

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->aKZ:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v6

    .line 180
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 178
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([[S)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhX:[[S

    goto :goto_0

    .line 188
    :cond_2
    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    .line 189
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_3

    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->aKZ:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v5

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 194
    :cond_3
    return-void
.end method

.method private rT()V
    .locals 6

    .line 206
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->beO:I

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 207
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->beO:I

    if-ge v5, v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    new-instance v1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    aget v2, v2, v5

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    add-int/lit8 v4, v5, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->aKZ:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;-><init>(IILjava/security/SecureRandom;)V

    aput-object v1, v0, v5

    .line 207
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method private rU()V
    .locals 23

    .line 224
    new-instance v5, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v6, v0, v1

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v7, v0, v1

    .line 228
    filled-new-array {v6, v7, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[S

    .line 229
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    .line 230
    new-array v0, v6, [S

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    .line 239
    const/4 v13, 0x0

    .line 240
    const/4 v14, 0x0

    .line 241
    const/4 v15, 0x0

    .line 243
    new-array v0, v7, [S

    move-object/from16 v16, v0

    .line 244
    const/16 v17, 0x0

    .line 247
    const/16 v18, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_6

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v18

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rL()[[[S

    move-result-object v9

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v18

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rM()[[[S

    move-result-object v10

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v18

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rN()[[S

    move-result-object v11

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v18

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rO()[S

    move-result-object v12

    .line 254
    const/4 v0, 0x0

    aget-object v0, v9, v0

    array-length v13, v0

    .line 255
    const/4 v0, 0x0

    aget-object v0, v10, v0

    array-length v14, v0

    .line 257
    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v0, v13, :cond_5

    .line 260
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v0, v13, :cond_1

    .line 262
    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v0, v14, :cond_0

    .line 265
    aget-object v0, v9, v19

    aget-object v0, v0, v20

    aget-short v0, v0, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    add-int v2, v20, v14

    aget-object v1, v1, v2

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 267
    add-int v0, v15, v19

    add-int v1, v15, v19

    aget-object v1, v8, v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    aget-object v2, v2, v21

    move-object/from16 v3, v16

    invoke-virtual {v5, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˋ([S[S)[[S

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([[S[[S)[[S

    move-result-object v1

    aput-object v1, v8, v0

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    aget-short v0, v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v3, v15, v19

    aget-object v2, v2, v3

    move-object/from16 v3, v16

    invoke-virtual {v5, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v2

    aput-object v2, v0, v1

    .line 275
    aget-object v0, v9, v19

    aget-object v0, v0, v20

    aget-short v0, v0, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    aget-object v1, v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    add-int v1, v20, v14

    aget-short v0, v0, v1

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v3, v15, v19

    aget-object v2, v2, v3

    move-object/from16 v3, v16

    invoke-virtual {v5, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v2

    aput-object v2, v0, v1

    .line 281
    aget-object v0, v9, v19

    aget-object v0, v0, v20

    aget-short v0, v0, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    add-int v2, v20, v14

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v17

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v3, v15, v19

    aget-short v2, v2, v3

    move-object/from16 v3, p0

    iget-object v3, v3, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    aget-short v3, v3, v21

    move/from16 v4, v17

    invoke-static {v4, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 262
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 260
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 289
    :cond_1
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v0, v14, :cond_3

    .line 291
    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v0, v14, :cond_2

    .line 294
    aget-object v0, v10, v19

    aget-object v0, v0, v20

    aget-short v0, v0, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    aget-object v1, v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 296
    add-int v0, v15, v19

    add-int v1, v15, v19

    aget-object v1, v8, v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    aget-object v2, v2, v21

    move-object/from16 v3, v16

    invoke-virtual {v5, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˋ([S[S)[[S

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([[S[[S)[[S

    move-result-object v1

    aput-object v1, v8, v0

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    aget-short v0, v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v3, v15, v19

    aget-object v2, v2, v3

    move-object/from16 v3, v16

    invoke-virtual {v5, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v2

    aput-object v2, v0, v1

    .line 304
    aget-object v0, v10, v19

    aget-object v0, v0, v20

    aget-short v0, v0, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    aget-object v1, v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    aget-short v0, v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v3, v15, v19

    aget-object v2, v2, v3

    move-object/from16 v3, v16

    invoke-virtual {v5, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v2

    aput-object v2, v0, v1

    .line 310
    aget-object v0, v10, v19

    aget-object v0, v0, v20

    aget-short v0, v0, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    aget-short v1, v1, v20

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v17

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v3, v15, v19

    aget-short v2, v2, v3

    move-object/from16 v3, p0

    iget-object v3, v3, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    aget-short v3, v3, v21

    move/from16 v4, v17

    invoke-static {v4, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 291
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 289
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 318
    :cond_3
    const/16 v20, 0x0

    :goto_6
    add-int v0, v14, v13

    move/from16 v1, v20

    if-ge v1, v0, :cond_4

    .line 321
    aget-object v0, v11, v19

    aget-short v0, v0, v20

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhW:[[S

    aget-object v1, v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v16

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    add-int v3, v15, v19

    aget-object v2, v2, v3

    move-object/from16 v3, v16

    invoke-virtual {v5, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v2

    aput-object v2, v0, v1

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v3, v15, v19

    aget-short v2, v2, v3

    aget-object v3, v11, v19

    aget-short v3, v3, v20

    move-object/from16 v4, p0

    iget-object v4, v4, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    aget-short v4, v4, v20

    invoke-static {v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 318
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 330
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v1, v15, v19

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    add-int v3, v15, v19

    aget-short v2, v2, v3

    aget-short v3, v12, v19

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 257
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 333
    :cond_5
    add-int/2addr v15, v13

    .line 247
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 339
    :cond_6
    filled-new-array {v6, v7, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[[S

    .line 340
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[S

    .line 341
    new-array v0, v6, [S

    move-object/from16 v20, v0

    .line 342
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v6, :cond_8

    .line 344
    const/16 v22, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhT:[[S

    array-length v0, v0

    move/from16 v1, v22

    if-ge v1, v0, :cond_7

    .line 346
    aget-object v0, v18, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhT:[[S

    aget-object v1, v1, v21

    aget-short v1, v1, v22

    aget-object v2, v8, v22

    invoke-virtual {v5, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[[S)[[S

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([[S[[S)[[S

    move-result-object v0

    aput-object v0, v18, v21

    .line 348
    aget-object v0, v19, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhT:[[S

    aget-object v1, v1, v21

    aget-short v1, v1, v22

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    aget-object v2, v2, v22

    invoke-virtual {v5, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ(S[S)[S

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v0

    aput-object v0, v19, v21

    .line 350
    aget-short v0, v20, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhT:[[S

    aget-object v1, v1, v21

    aget-short v1, v1, v22

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    aget-short v2, v2, v22

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v20, v21

    .line 344
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 353
    :cond_7
    aget-short v0, v20, v21

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhV:[S

    aget-short v1, v1, v21

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v20, v21

    .line 342
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 356
    :cond_8
    move-object/from16 v8, v18

    .line 357
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    .line 358
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->ˊ([[[S)V

    .line 361
    return-void
.end method

.method private ˊ([[[S)V
    .locals 10

    .line 375
    array-length v3, p1

    .line 376
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v4, v0

    .line 377
    add-int/lit8 v0, v4, 0x1

    mul-int/2addr v0, v4

    div-int/lit8 v5, v0, 0x2

    .line 378
    filled-new-array {v3, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bia:[[S

    .line 379
    const/4 v6, 0x0

    .line 381
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_3

    .line 383
    const/4 v6, 0x0

    .line 384
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_2

    .line 386
    move v9, v8

    :goto_2
    if-ge v9, v4, :cond_1

    .line 388
    if-ne v9, v8, :cond_0

    .line 390
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bia:[[S

    aget-object v0, v0, v7

    aget-object v1, p1, v7

    aget-object v1, v1, v8

    aget-short v1, v1, v9

    aput-short v1, v0, v6

    goto :goto_3

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bia:[[S

    aget-object v0, v0, v7

    aget-object v1, p1, v7

    aget-object v1, v1, v8

    aget-short v1, v1, v9

    aget-object v2, p1, v7

    aget-object v2, v2, v9

    aget-short v2, v2, v8

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v1

    aput-short v1, v0, v6

    .line 398
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 386
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 384
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 381
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 402
    :cond_3
    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 411
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->qJ()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public qJ()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .line 68
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->qK()V

    .line 74
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rQ()V

    .line 77
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhU:[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhV:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhX:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhY:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    move-object v7, v0

    .line 81
    new-instance v8, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bia:[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bib:[[S

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bic:[S

    invoke-direct {v8, v0, v1, v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(I[[S[[S[S)V

    .line 83
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v8, v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 407
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 90
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhS:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    .line 93
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->aKZ:Ljava/security/SecureRandom;

    .line 96
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhS:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->rP()Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;->qC()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhZ:[I

    .line 97
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->bhS:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->rP()Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;->qN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->beO:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    .line 100
    return-void
.end method
