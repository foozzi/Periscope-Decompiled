.class public Lorg/spongycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private aQn:[B

.field private aQo:[B

.field private aQp:I

.field private aQq:I

.field private aeu:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1

    .line 32
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    .line 33
    return-void
.end method

.method public constructor <init>([B[BII)V
    .locals 6

    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    .line 51
    return-void
.end method

.method public constructor <init>([B[BII[B)V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    .line 71
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQn:[B

    .line 72
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQn:[B

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQn:[B

    .line 79
    :goto_0
    if-eqz p2, :cond_1

    .line 81
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQo:[B

    .line 82
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQo:[B

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 86
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQo:[B

    .line 89
    :goto_1
    iput p3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQp:I

    .line 90
    iput p4, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQq:I

    .line 91
    invoke-static {p5}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aeu:[B

    .line 92
    return-void
.end method


# virtual methods
.method public fn()[B
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aeu:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public kN()[B
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQn:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public kO()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQo:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public kP()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQp:I

    return v0
.end method

.method public kQ()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->aQq:I

    return v0
.end method
