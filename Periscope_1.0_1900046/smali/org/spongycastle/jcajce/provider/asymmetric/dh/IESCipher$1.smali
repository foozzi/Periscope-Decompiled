.class Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aWy:Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;->aWy:Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 5

    .line 403
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    .line 404
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v4

    .line 406
    array-length v0, v4

    array-length v1, v3

    if-le v0, v1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Senders\'s public key longer than expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    array-length v0, v3

    array-length v1, v4

    sub-int/2addr v0, v1

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    return-object v3
.end method
