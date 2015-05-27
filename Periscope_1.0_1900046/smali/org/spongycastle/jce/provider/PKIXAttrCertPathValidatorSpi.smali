.class public Lorg/spongycastle/jce/provider/PKIXAttrCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 11

    .line 56
    instance-of v0, p2, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object v3, v0

    .line 64
    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tn()Lorg/spongycastle/util/Selector;

    move-result-object v4

    .line 65
    instance-of v0, v4, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetConstraints must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {v0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tt()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v5

    .line 75
    invoke-static {v5, v3}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˎ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPath;

    move-result-object v6

    .line 76
    invoke-static {p1, v3}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˊ(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v7

    .line 77
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0

    .line 79
    invoke-static {v8, v3}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˎ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 80
    invoke-static {v8, v3}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˋ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 81
    invoke-static {v5, v3}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˋ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 83
    invoke-static {v5, p1, v6, v3}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 84
    invoke-static {v5, v3}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 85
    const/4 v9, 0x0

    .line 88
    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v3, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 95
    goto :goto_0

    .line 91
    :catch_0
    move-exception v10

    .line 93
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Could not get validity date from attribute certificate."

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 96
    :goto_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v3, v8, v9, v0}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)V

    .line 97
    return-object v7
.end method
