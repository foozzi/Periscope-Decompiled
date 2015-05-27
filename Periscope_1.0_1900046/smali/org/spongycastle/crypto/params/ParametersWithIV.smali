.class public Lorg/spongycastle/crypto/params/ParametersWithIV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQD:Lorg/spongycastle/crypto/CipherParameters;

.field private iv:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 2

    .line 15
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithIV;->iv:[B

    .line 25
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithIV;->aQD:Lorg/spongycastle/crypto/CipherParameters;

    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithIV;->iv:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithIV;->iv:[B

    return-object v0
.end method

.method public lh()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithIV;->aQD:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method
