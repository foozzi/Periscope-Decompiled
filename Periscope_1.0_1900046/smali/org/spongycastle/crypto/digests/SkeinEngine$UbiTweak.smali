.class Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UbiTweak"
.end annotation


# instance fields
.field private aHF:[J

.field private aHG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    .line 256
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->reset()V

    .line 257
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 4

    .line 281
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const/16 v2, 0x38

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isFirst()Z
    .locals 4

    .line 298
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jf()Z
    .locals 4

    .line 315
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jg()[J
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    return-object v0
.end method

.method public reset()V
    .locals 4

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHG:Z

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->ᵧ(Z)V

    .line 271
    return-void
.end method

.method public setType(I)V
    .locals 7

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    const-wide v3, -0x4000000000L

    and-long/2addr v1, v3

    int-to-long v3, p1

    const-wide/16 v5, 0x3f

    and-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->isFirst()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", final: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->jf()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;)V
    .locals 2

    .line 261
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ᐝ([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    .line 262
    iget-boolean v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHG:Z

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHG:Z

    .line 263
    return-void
.end method

.method public ᴄ(I)V
    .locals 11

    .line 324
    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHG:Z

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x3

    new-array v7, v0, [J

    .line 327
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aput-wide v0, v7, v2

    .line 328
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aput-wide v0, v7, v2

    .line 329
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aput-wide v0, v7, v2

    .line 331
    int-to-long v8, p1

    .line 332
    const/4 v10, 0x0

    :goto_0
    array-length v0, v7

    if-ge v10, v0, :cond_0

    .line 334
    aget-wide v0, v7, v10

    add-long/2addr v8, v0

    .line 335
    aput-wide v8, v7, v10

    .line 336
    const/16 v0, 0x20

    ushr-long/2addr v8, v0

    .line 332
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v1, v7, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const/4 v3, 0x0

    aget-wide v3, v7, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 339
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v3, v7, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 340
    goto :goto_1

    .line 343
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    .line 344
    int-to-long v0, p1

    add-long/2addr v7, v0

    .line 345
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x0

    aput-wide v7, v0, v1

    .line 346
    const-wide v0, 0x7fffffff80000000L

    cmp-long v0, v7, v0

    if-lez v0, :cond_2

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHG:Z

    .line 351
    :cond_2
    :goto_1
    return-void
.end method

.method public ᵧ(Z)V
    .locals 5

    .line 286
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    or-long/2addr v1, v3

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide v3, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v1, v3

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 294
    :goto_0
    return-void
.end method

.method public וּ(Z)V
    .locals 5

    .line 303
    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, -0x8000000000000000L

    or-long/2addr v1, v3

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->aHF:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide v3, 0x7fffffffffffffffL

    and-long/2addr v1, v3

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 311
    :goto_0
    return-void
.end method
