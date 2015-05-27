.class public Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;
.super Lorg/spongycastle/crypto/params/GOST3410KeyParameters;
.source ""


# instance fields
.field private aPZ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/params/GOST3410KeyParameters;-><init>(ZLorg/spongycastle/crypto/params/GOST3410Parameters;)V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;->aPZ:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;->aPZ:Ljava/math/BigInteger;

    return-object v0
.end method
