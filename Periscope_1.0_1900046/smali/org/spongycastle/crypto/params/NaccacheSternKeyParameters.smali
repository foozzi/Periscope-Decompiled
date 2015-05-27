.class public Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field private aDB:Ljava/math/BigInteger;

.field private aFB:Ljava/math/BigInteger;

.field aQA:I


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 24
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->aFB:Ljava/math/BigInteger;

    .line 25
    iput-object p3, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->aDB:Ljava/math/BigInteger;

    .line 26
    iput p4, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->aQA:I

    .line 27
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->aFB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->aDB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public le()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->aQA:I

    return v0
.end method
