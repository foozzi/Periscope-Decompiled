.class public Lorg/spongycastle/crypto/tls/TlsECDSASigner;
.super Lorg/spongycastle/crypto/tls/TlsDSASigner;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected mS()S
    .locals 1

    .line 24
    const/4 v0, 0x3

    return v0
.end method

.method protected ʻ(S)Lorg/spongycastle/crypto/DSA;
    .locals 3

    .line 19
    new-instance v0, Lorg/spongycastle/crypto/signers/ECDSASigner;

    new-instance v1, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    return-object v0
.end method

.method public ˎ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 1

    .line 14
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return v0
.end method