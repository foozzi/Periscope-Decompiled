.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 2

    .line 15
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 17
    :catch_0
    move-exception v1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ˋ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 2

    .line 51
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 53
    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ˎ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 55
    :catch_0
    move-exception v1

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ˎ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)[B
    .locals 2

    .line 65
    const-string v0, "DER"

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 2

    .line 39
    const-string v0, "DER"

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 41
    :catch_0
    move-exception v1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
