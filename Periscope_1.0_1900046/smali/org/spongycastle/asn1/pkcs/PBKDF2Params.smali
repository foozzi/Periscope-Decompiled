.class public Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final aqm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private adl:Lorg/spongycastle/asn1/ASN1Integer;

.field private anH:Lorg/spongycastle/asn1/ASN1Integer;

.field private aqn:Lorg/spongycastle/asn1/ASN1OctetString;

.field private aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 130
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqn:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 134
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->adl:Lorg/spongycastle/asn1/ASN1Integer;

    .line 136
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 140
    instance-of v0, v2, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 142
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->anH:Lorg/spongycastle/asn1/ASN1Integer;

    .line 143
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 149
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->anH:Lorg/spongycastle/asn1/ASN1Integer;

    .line 157
    :goto_0
    if-eqz v2, :cond_2

    .line 159
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 162
    :cond_2
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 71
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqn:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 72
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->adl:Lorg/spongycastle/asn1/ASN1Integer;

    .line 73
    return-void
.end method

.method public static וּ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    .locals 2

    .line 48
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    return-object v0

    .line 53
    :cond_0
    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 231
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 233
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqn:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 234
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->adl:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 236
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->anH:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->anH:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 246
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fN()Ljava/math/BigInteger;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->adl:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public fR()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fS()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqo:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->aqn:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    return-object v0
.end method
