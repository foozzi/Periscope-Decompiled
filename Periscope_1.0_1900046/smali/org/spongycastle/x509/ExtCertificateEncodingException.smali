.class Lorg/spongycastle/x509/ExtCertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;
.source ""


# instance fields
.field aal:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/spongycastle/x509/ExtCertificateEncodingException;->aal:Ljava/lang/Throwable;

    return-object v0
.end method
