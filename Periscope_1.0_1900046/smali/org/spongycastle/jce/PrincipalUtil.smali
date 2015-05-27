.class public Lorg/spongycastle/jce/PrincipalUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʻ(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/jce/X509Principal;
    .locals 3

    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->ہ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    .line 54
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->hi()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/X509Name;->ᙆ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/X509Principal;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v2

    .line 58
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ᐝ(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/jce/X509Principal;
    .locals 3

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->ہ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    .line 35
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/X509Name;->ᙆ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/X509Principal;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v2

    .line 39
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
