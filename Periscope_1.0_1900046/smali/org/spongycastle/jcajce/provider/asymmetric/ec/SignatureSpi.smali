.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$1;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecPlainDSARP160;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSARipeMD160;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSAnone;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4

    .line 54
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    .line 56
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 58
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 66
    :goto_0
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3

    .line 44
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 46
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 47
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 48
    return-void
.end method
