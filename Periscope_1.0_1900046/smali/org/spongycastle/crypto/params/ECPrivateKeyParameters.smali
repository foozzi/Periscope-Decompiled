.class public Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/ECKeyParameters;
.source ""


# instance fields
.field aPU:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/params/ECKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/ECDomainParameters;)V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->aPU:Ljava/math/BigInteger;

    .line 16
    return-void
.end method


# virtual methods
.method public kz()Ljava/math/BigInteger;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method
