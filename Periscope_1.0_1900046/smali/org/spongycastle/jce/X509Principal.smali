.class public Lorg/spongycastle/jce/X509Principal;
.super Lorg/spongycastle/asn1/x509/X509Name;
.source ""

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/X509Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-static {v0}, Lorg/spongycastle/jce/X509Principal;->ˎ(Lorg/spongycastle/asn1/ASN1InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 50
    return-void
.end method

.method private static ˎ(Lorg/spongycastle/asn1/ASN1InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 4

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 36
    :catch_0
    move-exception v3

    .line 38
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an ASN.1 Sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    .line 158
    const-string v0, "DER"

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/X509Principal;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 160
    :catch_0
    move-exception v2

    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/spongycastle/jce/X509Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method