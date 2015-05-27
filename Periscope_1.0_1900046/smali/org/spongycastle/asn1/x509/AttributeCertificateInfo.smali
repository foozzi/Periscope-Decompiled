.class public Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeY:Lorg/spongycastle/asn1/ASN1Integer;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private ahV:Lorg/spongycastle/asn1/x509/Extensions;

.field private aye:Lorg/spongycastle/asn1/x509/Holder;

.field private ayf:Lorg/spongycastle/asn1/x509/AttCertIssuer;

.field private ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private ayh:Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

.field private ayi:Lorg/spongycastle/asn1/ASN1Sequence;

.field private ayj:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 60
    const/4 v3, 0x1

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 65
    const/4 v3, 0x0

    .line 68
    :goto_0
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Holder;->İ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aye:Lorg/spongycastle/asn1/x509/Holder;

    .line 69
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->ᓫ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayf:Lorg/spongycastle/asn1/x509/AttCertIssuer;

    .line 70
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 71
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    .line 72
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;->ᔾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayh:Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    .line 73
    add-int/lit8 v0, v3, 0x5

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayi:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 75
    add-int/lit8 v4, v3, 0x6

    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 77
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 79
    instance-of v0, v5, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayj:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_2

    .line 83
    :cond_3
    instance-of v0, v5, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_4

    instance-of v0, v5, Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_5

    .line 85
    :cond_4
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extensions;->ﺗ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    .line 75
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_6
    return-void
.end method

.method public static ᵒ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;
    .locals 2

    .line 36
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    return-object v0

    .line 40
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 155
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 162
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayf:Lorg/spongycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 164
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayh:Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayi:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayj:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayj:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 178
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public gS()Lorg/spongycastle/asn1/x509/Holder;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aye:Lorg/spongycastle/asn1/x509/Holder;

    return-object v0
.end method

.method public gT()Lorg/spongycastle/asn1/x509/AttCertIssuer;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayf:Lorg/spongycastle/asn1/x509/AttCertIssuer;

    return-object v0
.end method

.method public gU()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public gV()Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayh:Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    return-object v0
.end method

.method public gW()Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ayi:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public gX()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method
