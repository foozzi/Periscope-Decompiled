.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageSigner;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private beA:I

.field private beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

.field private beF:Lorg/spongycastle/crypto/Digest;

.field private beQ:[I

.field private beR:[[[B

.field private beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private bez:I

.field private bfH:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

.field private bfI:[B

.field private bfJ:Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

.field private bfK:[[B

.field bfL:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

.field private bfj:Lorg/spongycastle/crypto/Digest;


# direct methods
.method private rd()V
    .locals 12

    .line 156
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfj:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 159
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfL:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    move-object v5, v0

    .line 161
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->qR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Private key already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getIndex(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->ʃ(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more signatures can be generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->qI()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 175
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    .line 178
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->qU()[[B

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v1, v1, -0x1

    aget-object v6, v0, v1

    .line 179
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    new-array v7, v0, [B

    .line 180
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    new-array v8, v0, [B

    .line 181
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    move-result-object v7

    .line 183
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qP()[I

    move-result-object v2

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-direct {v0, v7, v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfJ:Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    .line 185
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->qV()[[[B

    move-result-object v9

    .line 186
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    new-array v0, v0, [[[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beR:[[[B

    .line 189
    const/4 v10, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    if-ge v10, v0, :cond_3

    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beR:[[[B

    aget-object v1, v9, v10

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v0, v10

    .line 192
    const/4 v11, 0x0

    :goto_1
    aget-object v0, v9, v10

    array-length v0, v0

    if-ge v11, v0, :cond_2

    .line 194
    aget-object v0, v9, v10

    aget-object v0, v0, v11

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beR:[[[B

    aget-object v1, v1, v10

    aget-object v1, v1, v11

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 189
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 199
    :cond_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beQ:[I

    .line 200
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->qT()[I

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beQ:[I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfK:[[B

    .line 205
    const/4 v11, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ge v11, v0, :cond_4

    .line 207
    invoke-virtual {v5, v11}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->ɽ(I)[B

    move-result-object v10

    .line 208
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfK:[[B

    array-length v1, v10

    new-array v1, v1, [B

    aput-object v1, v0, v11

    .line 209
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfK:[[B

    aget-object v0, v0, v11

    array-length v1, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v10, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 212
    :cond_4
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->qS()V

    .line 213
    return-void
.end method

.method private re()V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfj:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 288
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfL:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    move-object v1, v0

    .line 289
    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->qW()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfI:[B

    .line 290
    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->qI()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 292
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    .line 295
    return-void
.end method


# virtual methods
.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 121
    if-eqz p1, :cond_1

    .line 123
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 128
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->aFa:Ljava/security/SecureRandom;

    .line 129
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfL:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    .line 130
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->rd()V

    .line 132
    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->aFa:Ljava/security/SecureRandom;

    .line 137
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfL:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    .line 138
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->rd()V

    goto :goto_0

    .line 143
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfL:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    .line 144
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->re()V

    .line 148
    :goto_0
    return-void
.end method

.method public ᕑ([B)[B
    .locals 11

    .line 223
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    new-array v4, v0, [B

    .line 227
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfJ:Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->וּ([B)[B

    move-result-object v4

    .line 230
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfH:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beR:[[[B

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->ˋ([[B)[B

    move-result-object v5

    .line 233
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfH:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beQ:[I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->ʌ(I)[B

    move-result-object v6

    .line 236
    array-length v0, v6

    array-length v1, v4

    add-int/2addr v0, v1

    array-length v1, v5

    add-int/2addr v0, v1

    new-array v7, v0, [B

    .line 237
    array-length v0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v1, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    array-length v0, v6

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    array-length v0, v6

    array-length v1, v4

    add-int/2addr v0, v1

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    const/4 v0, 0x0

    new-array v8, v0, [B

    .line 246
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v9, v0, -0x1

    :goto_0
    if-ltz v9, :cond_0

    .line 250
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfH:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beR:[[[B

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->ˋ([[B)[B

    move-result-object v5

    .line 253
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfH:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beQ:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->ʌ(I)[B

    move-result-object v6

    .line 258
    array-length v0, v8

    new-array v10, v0, [B

    .line 259
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v8, v1, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v0, v10

    array-length v1, v6

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfK:[[B

    aget-object v1, v1, v9

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v5

    add-int/2addr v0, v1

    new-array v8, v0, [B

    .line 264
    array-length v0, v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v10, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    array-length v0, v10

    array-length v1, v6

    const/4 v2, 0x0

    invoke-static {v6, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfK:[[B

    aget-object v0, v0, v9

    array-length v1, v10

    array-length v2, v6

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfK:[[B

    aget-object v2, v2, v9

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    array-length v0, v10

    array-length v1, v6

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfK:[[B

    aget-object v1, v1, v9

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 273
    :cond_0
    array-length v0, v7

    array-length v1, v8

    add-int/2addr v0, v1

    new-array v9, v0, [B

    .line 274
    array-length v0, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    array-length v0, v7

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v8, v2, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    return-object v9
.end method

.method public ᴵ([B[B)Z
    .locals 17

    .line 308
    const/4 v4, 0x0

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 314
    move-object/from16 v7, p1

    .line 320
    const/4 v12, 0x0

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beA:I

    add-int/lit8 v14, v0, -0x1

    :goto_0
    if-ltz v14, :cond_4

    .line 328
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qP()[I

    move-result-object v1

    aget v1, v1, v14

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/spongycastle/crypto/Digest;I)V

    .line 329
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->rf()I

    move-result v6

    .line 331
    move-object/from16 p1, v7

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfH:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->ᐠ([BI)I

    move-result v13

    .line 336
    add-int/lit8 v12, v12, 0x4

    .line 339
    new-array v8, v6, [B

    .line 340
    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-static {v0, v12, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    add-int/2addr v12, v6

    .line 344
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->ᵢ([B[B)[B

    move-result-object v9

    .line 347
    if-nez v9, :cond_0

    .line 349
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OTS Public Key is null in GMSSSignature.verify"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qO()[I

    move-result-object v0

    aget v0, v0, v14

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[B

    .line 355
    const/4 v15, 0x0

    :goto_1
    array-length v0, v10

    if-ge v15, v0, :cond_1

    .line 357
    aget-object v0, v10, v15

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v12, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    add-int/2addr v12, v0

    .line 355
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    new-array v7, v0, [B

    .line 364
    move-object v7, v9

    .line 366
    array-length v0, v10

    const/4 v1, 0x1

    shl-int v15, v1, v0

    .line 367
    add-int/2addr v15, v13

    .line 369
    const/16 v16, 0x0

    :goto_2
    array-length v0, v10

    move/from16 v1, v16

    if-ge v1, v0, :cond_3

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    shl-int/lit8 v0, v0, 0x1

    new-array v11, v0, [B

    .line 373
    rem-int/lit8 v0, v15, 0x2

    if-nez v0, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v11, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    aget-object v0, v10, v16

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    div-int/lit8 v15, v15, 0x2

    goto :goto_3

    .line 381
    :cond_2
    aget-object v0, v10, v16

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bez:I

    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v11, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    add-int/lit8 v0, v15, -0x1

    div-int/lit8 v15, v0, 0x2

    .line 385
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfj:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfj:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v7, v0, [B

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfj:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 369
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 326
    :cond_3
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 394
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->bfI:[B

    invoke-static {v0, v7}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 396
    const/4 v4, 0x1

    .line 399
    :cond_5
    return v4
.end method
