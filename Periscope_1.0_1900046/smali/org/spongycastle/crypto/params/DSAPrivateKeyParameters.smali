.class public Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/DSAKeyParameters;
.source ""


# instance fields
.field private aFO:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/params/DSAKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/DSAParameters;)V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->aFO:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->aFO:Ljava/math/BigInteger;

    return-object v0
.end method