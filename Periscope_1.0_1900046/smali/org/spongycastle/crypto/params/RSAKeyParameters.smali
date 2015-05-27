.class public Lorg/spongycastle/crypto/params/RSAKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field private ajI:Ljava/math/BigInteger;

.field private ajJ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    iput-object p2, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->ajI:Ljava/math/BigInteger;

    .line 19
    iput-object p3, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->ajJ:Ljava/math/BigInteger;

    .line 20
    return-void
.end method


# virtual methods
.method public getExponent()Ljava/math/BigInteger;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->ajJ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;->ajI:Ljava/math/BigInteger;

    return-object v0
.end method
