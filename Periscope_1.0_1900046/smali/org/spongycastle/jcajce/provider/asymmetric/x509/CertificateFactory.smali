.class public Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
    }
.end annotation


# static fields
.field private static final aXQ:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final aXR:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;


# instance fields
.field private aXS:Lorg/spongycastle/asn1/ASN1Set;

.field private aXT:I

.field private aXU:Ljava/io/InputStream;

.field private aXV:Lorg/spongycastle/asn1/ASN1Set;

.field private aXW:I

.field private aXX:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXQ:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    .line 39
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXR:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXU:Ljava/io/InputStream;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXX:Ljava/io/InputStream;

    .line 373
    return-void
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .locals 4

    .line 74
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 76
    :goto_0
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 80
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0

    .line 85
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private nJ()Ljava/security/cert/CRL;
    .locals 3

    .line 152
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->丶(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ˊ(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .locals 3

    .line 53
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v2, v0

    .line 55
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aeC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/SignedData;->І(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/SignedData;->go()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0
.end method

.method private ˋ(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .locals 3

    .line 131
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v2, v0

    .line 133
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aeC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/SignedData;->І(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/SignedData;->gp()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    .line 141
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->nJ()Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CertificateList;->丶(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ˊ(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method private ᵢ(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 3

    .line 95
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXQ:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;->ﹺ(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_0

    .line 99
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ⁱ(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2

    .line 116
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXR:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;->ﹺ(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 120
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/CertificateList;->丶(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ˊ(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 4

    .line 251
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXX:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 253
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXX:Ljava/io/InputStream;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXX:Ljava/io/InputStream;

    if-eq v0, p1, :cond_1

    .line 259
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXX:Ljava/io/InputStream;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I

    .line 266
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_3

    .line 268
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 270
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->nJ()Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 274
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXV:Lorg/spongycastle/asn1/ASN1Set;

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXW:I
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 281
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I
    :try_end_2
    .catch Ljava/security/cert/CRLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 283
    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_4
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 290
    const/16 v0, 0x30

    if-eq v3, v0, :cond_5

    .line 292
    invoke-direct {p0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ⁱ(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_3
    .catch Ljava/security/cert/CRLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    return-object v0

    .line 296
    :cond_5
    :try_start_4
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ˋ(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    :try_end_4
    .catch Ljava/security/cert/CRLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    return-object v0

    .line 299
    :catch_0
    move-exception v2

    .line 301
    throw v2

    .line 303
    :catch_1
    move-exception v2

    .line 305
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :goto_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    return-object v2
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1

    .line 342
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1

    .line 350
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 5

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 359
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 362
    if-eqz v4, :cond_0

    .line 364
    instance-of v0, v4, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list contains non X509Certificate object while creating CertPath\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4

    .line 170
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXU:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 172
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXU:Ljava/io/InputStream;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXU:Ljava/io/InputStream;

    if-eq v0, p1, :cond_1

    .line 178
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXU:Ljava/io/InputStream;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I

    .line 185
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_3

    .line 187
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 189
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 193
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->aXT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 202
    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_4
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 209
    const/16 v0, 0x30

    if-eq v3, v0, :cond_5

    .line 211
    invoke-direct {p0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ᵢ(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    return-object v0

    .line 215
    :cond_5
    :try_start_4
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ˊ(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    return-object v0

    .line 218
    :catch_0
    move-exception v2

    .line 220
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;

    invoke-direct {v0, p0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    :goto_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_0
    return-object v2
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1

    .line 335
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;
    .locals 1

    .line 109
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CRLObject;-><init>(Lorg/spongycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method
