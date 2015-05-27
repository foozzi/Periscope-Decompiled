.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDx:[B

.field private avN:I

.field private beF:Lorg/spongycastle/crypto/Digest;

.field private beG:I

.field private beH:I

.field private beI:[B

.field private beJ:[B

.field private beK:I

.field private beL:I

.field private beM:I

.field beN:[B

.field private beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private w:I


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/Digest;II)V
    .locals 7

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    .line 127
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beF:Lorg/spongycastle/crypto/Digest;

    .line 129
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 132
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    .line 133
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    shl-int/lit8 v4, v0, 0x3

    .line 134
    int-to-double v0, v4

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 135
    shl-int v0, v5, p2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->ĩ(I)I

    move-result v6

    .line 136
    int-to-double v0, v6

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v5

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    .line 138
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beL:I

    .line 142
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beM:I

    .line 147
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->aDx:[B

    .line 148
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beI:[B

    .line 149
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beN:[B

    .line 150
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beJ:[B

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;II[B)V
    .locals 7

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    .line 157
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beF:Lorg/spongycastle/crypto/Digest;

    .line 159
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 162
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    .line 163
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    shl-int/lit8 v4, v0, 0x3

    .line 164
    int-to-double v0, v4

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 165
    shl-int v0, v5, p2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->ĩ(I)I

    move-result v6

    .line 166
    int-to-double v0, v6

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v5

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    .line 168
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beL:I

    .line 172
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beM:I

    .line 177
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->aDx:[B

    .line 178
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beI:[B

    .line 179
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beN:[B

    .line 180
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beJ:[B

    .line 182
    invoke-virtual {p0, p4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->ᕽ([B)V

    .line 183
    return-void
.end method

.method private ĩ(I)I
    .locals 3

    .line 299
    const/4 v1, 0x1

    .line 300
    const/4 v2, 0x2

    .line 301
    :goto_0
    if-ge v2, p1, :cond_0

    .line 303
    shl-int/lit8 v2, v2, 0x1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return v1
.end method


# virtual methods
.method public qL()[[B
    .locals 3

    .line 317
    const/4 v0, 0x4

    new-array v2, v0, [[B

    .line 318
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 319
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 320
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 321
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v0, v0, [B

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 322
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beN:[B

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 323
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->aDx:[B

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 324
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beJ:[B

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 325
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beI:[B

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 327
    return-object v2
.end method

.method public qM()[I
    .locals 3

    .line 338
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 339
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beK:I

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 340
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->avN:I

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 341
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beM:I

    const/4 v1, 0x2

    aput v0, v2, v1

    .line 342
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    const/4 v1, 0x3

    aput v0, v2, v1

    .line 343
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 353
    const-string v3, ""

    .line 355
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v4, v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->qM()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->qL()[[B

    move-result-object v4

    .line 363
    const/4 v5, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v5, v0, :cond_2

    .line 365
    aget-object v0, v4, v5

    if-eqz v0, :cond_1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    aget-object v2, v4, v5

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

    .line 371
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

    .line 363
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 374
    :cond_2
    return-object v3
.end method

.method ᕽ([B)V
    .locals 4

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beK:I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->avN:I

    .line 213
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beG:I

    new-array v3, v0, [B

    .line 214
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->aDx:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->aDx:[B

    .line 216
    return-void
.end method
