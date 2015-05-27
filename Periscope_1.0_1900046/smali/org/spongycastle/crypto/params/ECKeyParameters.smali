.class public Lorg/spongycastle/crypto/params/ECKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor <init>(ZLorg/spongycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ECKeyParameters;->aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public kG()Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECKeyParameters;->aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
