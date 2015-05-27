.class public Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;
.super Lorg/spongycastle/crypto/params/RSAKeyParameters;
.source ""


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;

.field private aJC:Ljava/math/BigInteger;

.field private aQG:Ljava/math/BigInteger;

.field private aQH:Ljava/math/BigInteger;

.field private aQI:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 30
    iput-object p2, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aJC:Ljava/math/BigInteger;

    .line 31
    iput-object p4, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aFz:Ljava/math/BigInteger;

    .line 32
    iput-object p5, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aFA:Ljava/math/BigInteger;

    .line 33
    iput-object p6, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aQG:Ljava/math/BigInteger;

    .line 34
    iput-object p7, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aQH:Ljava/math/BigInteger;

    .line 35
    iput-object p8, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aQI:Ljava/math/BigInteger;

    .line 36
    return-void
.end method


# virtual methods
.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aJC:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aFA:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ll()Ljava/math/BigInteger;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aQG:Ljava/math/BigInteger;

    return-object v0
.end method

.method public lm()Ljava/math/BigInteger;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aQH:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ln()Ljava/math/BigInteger;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->aQI:Ljava/math/BigInteger;

    return-object v0
.end method
