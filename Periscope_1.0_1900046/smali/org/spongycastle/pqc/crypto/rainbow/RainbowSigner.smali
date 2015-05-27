.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageSigner;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field bii:I

.field private bij:[S

.field private bik:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

.field bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bik:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    return-void
.end method

.method private ˊ([Lorg/spongycastle/pqc/crypto/rainbow/Layer;[S)[S
    .locals 6

    .line 79
    array-length v0, p2

    new-array v3, v0, [S

    .line 81
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bik:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qy()[S

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v3

    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bik:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qx()[[S

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˋ([[S[S)[S

    move-result-object v4

    .line 87
    const/4 v5, 0x0

    :goto_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rI()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bij:[S

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v0, v5

    .line 90
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bij:[S

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bij:[S

    aget-short v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v5

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v4
.end method

.method private ˎ([S)[S
    .locals 13

    .line 239
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->qE()[[S

    move-result-object v3

    .line 240
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->qF()[[S

    move-result-object v4

    .line 241
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->qG()[S

    move-result-object v5

    .line 243
    array-length v0, v3

    new-array v6, v0, [S

    .line 244
    const/4 v0, 0x0

    aget-object v0, v4, v0

    array-length v7, v0

    .line 245
    const/4 v8, 0x0

    .line 246
    const/4 v9, 0x0

    .line 248
    const/4 v10, 0x0

    :goto_0
    array-length v0, v3

    if-ge v10, v0, :cond_2

    .line 250
    const/4 v8, 0x0

    .line 251
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_1

    .line 254
    move v12, v11

    :goto_2
    if-ge v12, v7, :cond_0

    .line 256
    aget-object v0, v3, v10

    aget-short v0, v0, v8

    aget-short v1, p1, v11

    aget-short v2, p1, v12

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v9

    .line 258
    aget-short v0, v6, v10

    invoke-static {v0, v9}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v6, v10

    .line 259
    add-int/lit8 v8, v8, 0x1

    .line 254
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 262
    :cond_0
    aget-object v0, v4, v10

    aget-short v0, v0, v11

    aget-short v1, p1, v11

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v9

    .line 263
    aget-short v0, v6, v10

    invoke-static {v0, v9}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v6, v10

    .line 251
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 266
    :cond_1
    aget-short v0, v6, v10

    aget-short v1, v5, v10

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v6, v10

    .line 248
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 269
    :cond_2
    return-object v6
.end method

.method private ﹼ([B)[S
    .locals 5

    .line 282
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bii:I

    new-array v2, v0, [S

    .line 284
    const/4 v3, 0x0

    .line 285
    const/4 v4, 0x0

    .line 288
    :cond_0
    array-length v0, p1

    if-lt v4, v0, :cond_1

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    aget-byte v0, p1, v3

    int-to-short v0, v0

    aput-short v0, v2, v4

    .line 293
    aget-short v0, v2, v4

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, v2, v4

    .line 294
    add-int/lit8 v3, v3, 0x1

    .line 295
    add-int/lit8 v4, v4, 0x1

    .line 297
    array-length v0, v2

    if-lt v4, v0, :cond_0

    .line 299
    :goto_0
    return-object v2
.end method


# virtual methods
.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 40
    if-eqz p1, :cond_1

    .line 42
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 46
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->aFa:Ljava/security/SecureRandom;

    .line 47
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    .line 49
    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->aFa:Ljava/security/SecureRandom;

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0

    .line 59
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    .line 62
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->qD()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bii:I

    .line 63
    return-void
.end method

.method public ᕑ([B)[B
    .locals 16

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v3

    .line 111
    array-length v4, v3

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qA()[[S

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [S

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bij:[S

    .line 125
    add-int/lit8 v0, v4, -0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rJ()I

    move-result v0

    new-array v11, v0, [B

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ﹼ([B)[S

    move-result-object v12

    .line 133
    :cond_0
    const/4 v13, 0x1

    .line 134
    const/4 v7, 0x0

    .line 137
    move-object/from16 v0, p0

    :try_start_0
    invoke-direct {v0, v3, v12}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ˊ([Lorg/spongycastle/pqc/crypto/rainbow/Layer;[S)[S

    move-result-object v5

    .line 139
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v4, :cond_4

    .line 142
    aget-object v0, v3, v14

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rK()I

    move-result v0

    new-array v6, v0, [S

    .line 143
    aget-object v0, v3, v14

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rK()I

    move-result v0

    new-array v8, v0, [S

    .line 146
    const/4 v15, 0x0

    :goto_1
    aget-object v0, v3, v14

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rK()I

    move-result v0

    if-ge v15, v0, :cond_1

    .line 148
    aget-short v0, v5, v7

    aput-short v0, v6, v15

    .line 149
    add-int/lit8 v7, v7, 0x1

    .line 146
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 156
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bik:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    aget-object v1, v3, v14

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bij:[S

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->ˋ([S)[[S

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([[S[S)[S

    move-result-object v8

    .line 158
    if-nez v8, :cond_2

    .line 160
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "LES is not solveable!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    const/4 v15, 0x0

    :goto_2
    array-length v0, v8

    if-ge v15, v0, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bij:[S

    aget-object v1, v3, v14

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rI()I

    move-result v1

    add-int/2addr v1, v15

    aget-short v2, v8, v15

    aput-short v2, v0, v1

    .line 164
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 139
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 171
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bik:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qz()[S

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bij:[S

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˊ([S[S)[S

    move-result-object v9

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bik:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->bil:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qA()[[S

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->ˋ([[S[S)[S

    move-result-object v10

    .line 175
    const/4 v14, 0x0

    :goto_3
    array-length v0, v11

    if-ge v14, v0, :cond_5

    .line 177
    aget-short v0, v10, v14

    int-to-byte v0, v0

    aput-byte v0, v11, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 184
    :cond_5
    goto :goto_4

    .line 180
    :catch_0
    move-exception v14

    .line 183
    const/4 v13, 0x0

    .line 186
    :goto_4
    if-eqz v13, :cond_0

    .line 188
    return-object v11
.end method

.method public ᴵ([B[B)Z
    .locals 8

    .line 201
    array-length v0, p2

    new-array v2, v0, [S

    .line 204
    const/4 v4, 0x0

    :goto_0
    array-length v0, p2

    if-ge v4, v0, :cond_0

    .line 206
    aget-byte v0, p2, v4

    int-to-short v3, v0

    .line 207
    and-int/lit16 v0, v3, 0xff

    int-to-short v3, v0

    .line 208
    aput-short v3, v2, v4

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ﹼ([B)[S

    move-result-object v4

    .line 214
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ˎ([S)[S

    move-result-object v5

    .line 217
    const/4 v6, 0x1

    .line 218
    array-length v0, v4

    array-length v1, v5

    if-eq v0, v1, :cond_1

    .line 220
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_1
    const/4 v7, 0x0

    :goto_1
    array-length v0, v4

    if-ge v7, v0, :cond_3

    .line 224
    if-eqz v6, :cond_2

    aget-short v0, v4, v7

    aget-short v1, v5, v7

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 222
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 227
    :cond_3
    return v6
.end method
